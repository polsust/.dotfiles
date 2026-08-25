return {
  enabled = false,
  "Mirsmog/real-icons.nvim",
  build = ":RealIconsInstallPack material",
  opts = {
    pack = "material",
    integrations = {
      bufferline = false,
      lualine = true,
      mini_files = true,
      oil = false,
      snacks_picker = true,
      telescope = true,
      telescope_file_browser = false,
    },
  },
}
