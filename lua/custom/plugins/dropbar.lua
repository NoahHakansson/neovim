return {
  'Bekaboo/dropbar.nvim',
  -- optional, but required for fuzzy finder support
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  config = function()
    vim.api.nvim_set_hl(0, 'WinBar', { bg = 'NONE' })
  end,
}
