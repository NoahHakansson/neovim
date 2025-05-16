-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Quality of life
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { noremap = true, silent = true, desc = '[W]rite Buffer' })
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { noremap = true, silent = true, desc = '[Q]uit Buffer' })

-- basic navigation
vim.keymap.set('n', '<leader>dh', '<C-w>h', { noremap = true, silent = true, desc = 'move to left window' })
vim.keymap.set('n', '<leader>dj', '<C-w>j', { noremap = true, silent = true, desc = 'move to bottom window' })
vim.keymap.set('n', '<leader>dk', '<C-w>k', { noremap = true, silent = true, desc = 'move to top window' })
vim.keymap.set('n', '<leader>dl', '<C-w>l', { noremap = true, silent = true, desc = 'move to right window' })
vim.keymap.set('n', '<leader>dt', '<cmd>tabNext<cr>', { noremap = true, silent = true, desc = 'move to next tab (tabNext)' })
vim.keymap.set('n', '<leader>ds', '<C-w>s', { noremap = true, silent = true, desc = 'split window horizontally' })
vim.keymap.set('n', '<leader>dv', '<C-w>v', { noremap = true, silent = true, desc = 'split window vertically' })
vim.keymap.set('n', '<leader>dc', '<C-w>c', { noremap = true, silent = true, desc = 'close window' })
vim.keymap.set('n', '<leader>dq', '<C-w>q', { noremap = true, silent = true, desc = 'quit window' })
vim.keymap.set('n', '<leader>do', '<C-w>o', { noremap = true, silent = true, desc = 'close all other windows' })
vim.keymap.set('n', '<leader>dw', '<C-w>w', { noremap = true, silent = true, desc = 'move to next window' })
vim.keymap.set('n', '<leader>d+', '<C-w>+', { noremap = true, silent = true, desc = 'increase window height' })
vim.keymap.set('n', '<leader>d-', '<C-w>-', { noremap = true, silent = true, desc = 'decrease window height' })
vim.keymap.set('n', '<leader>d>', '<C-w>>', { noremap = true, silent = true, desc = 'increase window width' })
vim.keymap.set('n', '<leader>d<', '<C-w><', { noremap = true, silent = true, desc = 'decrease window width' })
vim.keymap.set('n', '<leader>d=', '<C-w>=', { noremap = true, silent = true, desc = 'balance window sizes' })

-- Turn off highlight when pressing Esc
vim.keymap.set('n', '<Esc>', '<cmd>noh <CR>', { noremap = false, silent = true })

-- fugitive
-- vim.keymap.set('n', '<leader>gg', '<cmd>G<cr>', { desc = 'fugitive' })

-- Diagnostics
vim.keymap.set('n', '<leader>lj', function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>lk', function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Center next/previous search
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true, silent = true })

-- todo-comments
vim.keymap.set('n', '<leader>st', '<cmd>TodoTelescope<cr>', { noremap = true, silent = true, desc = '[S]earch [T]odos' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
