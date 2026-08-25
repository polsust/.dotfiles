return {
  enabled = false,
  "dmmulroy/ts-error-translator.nvim",
  ft = { "typescript", "typescriptreact" },
  opts = {
    auto_attach = true,

    servers = {
      "astro",
      "svelte",
      "ts_ls",
      "typescript-tools",
      "volar",
      "vtsls",
    },
  },
}
