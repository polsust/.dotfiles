function ToggleAi()
  local ai_enabled = vim.cmd("Copilot status") == "Copilot: Ready"

  if ai_enabled then
    vim.cmd("Copilot disable")
    print("AI disabled ❌")
  else
    vim.cmd("Copilot enable")
    print("AI enabled ✅")
  end
end

vim.cmd("command! AI lua ToggleAi()")
