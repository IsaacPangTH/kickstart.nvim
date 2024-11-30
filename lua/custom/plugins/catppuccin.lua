local opts = {
  custom_highlights = function()
    return {
      LineNr = { fg = '#83899E' },
    }
  end,
  transparent_background = true,
}

return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  lazy = false,
  config = function()
    require('catppuccin').setup(opts)
    vim.cmd [[colorscheme catppuccin]]
  end,
}
