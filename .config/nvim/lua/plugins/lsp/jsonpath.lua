return {
  enabled = true,
  "phelipetls/jsonpath.nvim",
  ft = { "json", "json5", "jsonc", "jsonnet" },
  config = function()
    require("jsonpath").setup({
      show_on_winbar = true,
    })

    if vim.fn.exists("+winbar") == 1 then
      vim.opt_local.winbar = "%{%v:lua.require'jsonpath'.get()%}"
    end

    vim.keymap.set("n", "yp", function()
      local path = require("jsonpath").get():sub(2)

      vim.fn.setreg("+", path)

      print(path .. " Copied!")
    end, {
      buffer = true,
    })
  end,
}
