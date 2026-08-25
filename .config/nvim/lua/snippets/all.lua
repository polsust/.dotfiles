local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

return {
  s("fname", {
    f(function() return vim.fn.expand("%:t:r") end, {}),
  }),
}
