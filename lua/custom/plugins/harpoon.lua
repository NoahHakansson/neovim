return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon.setup {
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
        key = function()
          return vim.loop.cwd()
        end,
      },
    }

    -- Extensions
    local harpoon_extensions = require 'harpoon.extensions'
    harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

    -- Keymaps
    -- stylua: ignore start
    vim.keymap.set('n', '<M-a>', function() harpoon:list():add() end)
    vim.keymap.set('n', '<M-f>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end)
    vim.keymap.set('n', '<C-j>', function() harpoon:list():select(2) end)
    vim.keymap.set('n', '<C-k>', function() harpoon:list():select(3) end)
    vim.keymap.set('n', '<C-l>', function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    -- vim.keymap.set('n', '<C-S-P>', function() harpoon:list():prev() end)
    -- vim.keymap.set('n', '<C-S-N>', function() harpoon:list():next() end)
    -- stylua: ignore end
  end,
}
