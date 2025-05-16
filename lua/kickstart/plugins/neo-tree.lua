-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree reveal toggle<CR>', desc = 'NeoTree reveal toggle', silent = true },
  },
  opts = {
    open_files_do_not_replace_types = { 'terminal', 'trouble', 'qf', 'NeogitStatus', 'NeogitCommitView' }, -- when opening files, do not use windows containing these filetypes or buftypes
    window = {
      mappings = {
        ['l'] = 'open',
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['<leader>e'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true,
      },
    },
  },
}
