require("mason-nvim-dap").setup({
  handlers = {
    function(config)
      require("mason-nvim-dap").default_setup(config)
    end,
  },
})
