vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  virtual_lines = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.HINT] = "󰌵",
      [vim.diagnostic.severity.INFO] = "",
    },
  },
  update_in_insert = false,
  severity_sort = true,
  float = {
    focusable = true,
    source = true,
    header = "",
    -- prefix = "",

    format = function(diagnostic)
      if diagnostic.source ~= "ts" and diagnostic.source ~= "typescript" then
        return diagnostic.message
      end

      local bin = "/home/polsust/.local/share/pnpm/bin/pretty-ts-errors-markdown"
      print(bin)

      local cache_key = diagnostic.message .. (diagnostic.code or "")

      if _G.__ts_err_cache == nil then
        _G.__ts_err_cache = {}
      end

      if _G.__ts_err_cache[cache_key] then
        return _G.__ts_err_cache[cache_key]
      end

      local json = vim.json.encode(diagnostic)
      local handle = io.popen(bin .. " -i '" .. json:gsub("'", "'\\''") .. "' 2>/dev/null")

      if not handle then
        return diagnostic.message
      end

      local out = handle:read("*a")
      handle:close()

      if not out or out == "" then
        return diagnostic.message
      end

      out = out:gsub("^%s+", ""):gsub("%s+$", ""):gsub("%[([^%]]+)%]%(([^%)]+)%)", "%1"):gsub("```%w*\n", ""):gsub("\n```", "")

      _G.__ts_err_cache[cache_key] = out
      return out
    end,
  },
})

key("n", "<leader>li", "<cmd>checkhealth vim.lsp<cr>")
key("n", "<leader>lf", function() format_file(vim.api.nvim_get_current_buf()) end)

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    -- local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

    local opts = { noremap = true, buffer = args.buf }

    key("n", "gli", vim.diagnostic.open_float, opts)
    key("n", "glk", function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
    key("n", "glj", function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
    key("n", "glq", vim.diagnostic.setloclist, opts)

    key("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    key("n", "ga", vim.lsp.buf.code_action, opts)
    key("n", "gd", vim.lsp.buf.definition, opts)
  end,
})

-- servers not managed by mason
vim.lsp.enable("gdscript")
