return {
  enabled = true,
  "jay-babu/mason-null-ls.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "nvimtools/none-ls.nvim",
    "nvimtools/none-ls-extras.nvim",
  },
  event = "VeryLazy",
  opts = {
    ensure_installed = {},
    automatic_installation = false,
    handlers = {
      eslint_d = function()
        local function eslint_d_condition(utils)
          return utils.root_has_file({
            "eslint.config.js",
            "eslint.config.mjs",
            "eslint.config.cjs",
            ".eslintrc",
            ".eslintrc.json",
            ".eslintrc.js",
            ".eslintrc.yaml",
            ".eslintrc.yml",
          })
        end

        require("null-ls").register(require("none-ls.diagnostics.eslint_d").with({
          condition = eslint_d_condition,
        }))

        require("null-ls").register(require("none-ls.code_actions.eslint_d").with({
          condition = eslint_d_condition,
        }))
      end,

      -- NOTE: Automatic resolve doesn't find these
      gdtoolkit = function()
        require("null-ls").register(require("null-ls").builtins.diagnostics.gdlint)
        require("null-ls").register(require("null-ls").builtins.formatting.gdformat)
      end,

      -- NOTE: Sources that are not declared by none-ls
      kulala_fmt = function()
        local null_ls = require("null-ls")
        local helpers = require("null-ls.helpers")

        require("null-ls").register({
          name = "kulala_fmt",
          method = null_ls.methods.FORMATTING,
          filetypes = { "rest", "http" },
          generator = helpers.formatter_factory({
            command = "kulala-fmt",
            args = { "format", "$FILENAME" },
            to_temp_file = true,
          }),
        })
      end,
    },
  },
}
