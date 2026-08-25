return {
  enabled = true,
  lazy = false,
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    ensure_installed = {
      -- NOTE: LSP
      "lua-language-server",
      "typescript-language-server",
      "bash-language-server",
      "yaml-language-server",
      "tombi",
      "json-lsp",
      "fish-lsp",
      "pyright",
      "css-lsp",
      "tailwindcss-language-server",
      "marksman",
      "html-lsp",
      "svelte-language-server",
      "dockerls",
      "dockerfmt",

      -- NOTE: DAP

      -- NOTE: FORMATTER/LINTER
      "shellcheck",
      "shellharden",
      "eslint_d",
      "stylua",
      "prettierd",
      "gdtoolkit",
      "black",
    },
    auto_update = true,
    run_on_start = true,
    start_delay = 0,
    debounce_hours = 0,
    integrations = {
      ["mason-lspconfig"] = true,
      ["mason-null-ls"] = true,
      ["mason-nvim-dap"] = true,
    },
  },
}
