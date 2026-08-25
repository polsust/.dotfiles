return {
  enabled = true,
  "polsust/auto-save.nvim",
  event = "VeryLazy",
  opts = {
    execution_message = {
      message = function() return "" end,
      dim = 0.18,
      cleaning_interval = 1250,
    },
    debounce_delay = 0,
  },
}
