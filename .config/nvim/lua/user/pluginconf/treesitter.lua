local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = {
    "javascript",
    "jsdoc",
    "typescript",
    "php",
    "phpdoc",
    "lua",
    "python",
    "html",
    "css",
    "json",
  },

  auto_install = true,
  -- List of parsers to ignore installing (for "all")
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },

  indent = {
    enable = true,
  },

  -- PLUGINS
  rainbow = {
    enable = true,
  },

  autotag = {
    enable = true,
  },
})
