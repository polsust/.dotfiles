local function get_python_path()
  local venv = vim.fn.getcwd() .. "/.venv/bin/python"
  if vim.fn.executable(venv) == 1 then
    return venv
  end
  return vim.fn.exepath("python3")
end

return {
  settings = {
    python = {
      pythonPath = get_python_path(),
    },
  },
}
