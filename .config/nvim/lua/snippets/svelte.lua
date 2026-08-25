local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("component", {
    t({
      '<script lang="ts">',
      '  import type { ClassValue } from "svelte/elements"',
      '  import { cn } from "$lib/utils"',
      "",
      "  type Props = {",
      "    class?: ClassValue",
      "  }",
      "  let { class: class_ }: Props = $props()",
      "</script>",
    }),
    i(1),
  }),
  s("fa", {
    t({
      "() => ",
    }),
  }),
}
