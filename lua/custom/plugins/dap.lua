return {
  'rcarriga/nvim-dap-ui',
  dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  config = function()
    require('dapui').setup()
  end,
  keys = {
    {
      '<leader>dt',
      function()
        require('dapui').toggle()
      end,
      desc = 'Toggle Dap UI',
    },
    {
      '<leader>db',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = 'Toggle Breakpoint',
    },
    {
      '<leader>dc',
      function()
        require('dap').continue()
      end,
      desc = 'Continue Debugger',
    },
    {
      '<leader>dr',
      function()
        require('dapui').open { reset = true }
      end,
      desc = 'Reset Dap UI',
    },
  },
}
