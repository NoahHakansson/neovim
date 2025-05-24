return {
  'folke/trouble.nvim',
  opts = { -- for default options, refer to the configuration section for custom setup.
    focus = true,
  },
  cmd = 'Trouble',
  keys = {
    {
      '<leader>lQ',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Open Buffer Diagnostics (Trouble)',
    },
    {
      '<leader>lq',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Current Buffer Diagnostics (Trouble)',
    },
  },
}
