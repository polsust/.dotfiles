return {
  enabled = true,
  "RRethy/vim-illuminate",
  event = "VeryLazy",
  config = function()
    require("illuminate").configure({
      providers = {
        -- "treesitter",
        "lsp",
        "regex",
      },
      delay = 0,
      filetypes_denylist = {
        "alpha",
        "NvimTree",
        "TelescopePrompt",
      },
      filetype_overrides = {
        gdscript = {
          providers = {
            "regex",
            "lsp",
            -- "treesitter",
          },
        },
      },
    })
  end,
}
