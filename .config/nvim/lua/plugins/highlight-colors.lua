return {
  enabled = true,
  "brenoprata10/nvim-highlight-colors",
  event = "BufRead",
  opts = {
    ---@usage 'background'|'foreground'|'virtual'
    render = "background",
    ---Set virtual symbol position()
    ---@usage 'inline'|'eol'|'eow'
    ---inline mimics VS Code style
    ---eol stands for `end of column` - Recommended to set `virtual_symbol_suffix = ''` when used.
    ---eow stands for `end of word` - Recommended to set `virtual_symbol_prefix = ' ' and virtual_symbol_suffix = ''` when used.
    virtual_symbol_position = "inline",
    ---Highlight named colors, e.g. 'green'
    enable_named_colors = false,
    ---Highlight tailwind colors, e.g. 'bg-blue-500'
    enable_tailwind = true,
    exclude_filetypes = {},
    exclude_buftypes = {
      -- "nofile",
    },
    -- Exclude buffer from highlighting e.g. 'exclude_buffer = function(bufnr) return vim.fn.getfsize(vim.api.nvim_buf_get_name(bufnr)) > 1000000 end'
    exclude_buffer = function() end,
  },
}
