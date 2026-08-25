return {
  name = "pretty-ts-errors-installer",
  dir = vim.fn.stdpath("config"),
  build = function()
    local data_dir = vim.fn.stdpath("data") .. "/pretty-ts-errors"
    vim.fn.mkdir(data_dir, "p")

    local install_cmd = string.format("cd %s && npm install --no-save pretty-ts-errors-markdown@latest", vim.fn.shellescape(data_dir))

    vim.fn.system(install_cmd)
  end,
}
