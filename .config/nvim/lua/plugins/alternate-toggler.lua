return {
  "rmagatti/alternate-toggler",
  keys = {
    { "gs", function() require("alternate-toggler").toggleAlternate() end },
  },
  config = function()
    require("alternate-toggler").setup({
      alternates = {
        { "yes", "no" },
        { "Yes", "No" },
        { "===", "!==" },
        { "==", "!=" },
        { ">=", "<=" },
        { "private", "public" },
        { "start", "end" },
        { "desc", "asc" },
        { "descend", "ascend" },
        { "active", "inactive" },
        { "true", "false" },
        { "local", "global" },
        { "on", "off" },
        { "ON", "OFF" },
      },
    })
  end,
}
