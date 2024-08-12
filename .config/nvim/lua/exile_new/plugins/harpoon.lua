return {
    'theprimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local mark = require('harpoon.mark')
        local ui = require('harpoon.ui')
        local keymap = vim.keymap

        keymap.set('n', '<leader>ha', mark.add_file, { desc = 'Adds a file to harpoon' })
        keymap.set('n', '<leader>hs', ui.toggle_quick_menu, { desc = 'Opens the harpoon quick menu' })

        keymap.set('n', '<leader>hq', function() ui.nav_file(1) end, { desc = 'Goes to first file in harpoon' })
        keymap.set('n', '<leader>hw', function() ui.nav_file(2) end, { desc = 'Goes to secound file in harpoon' })
        keymap.set('n', '<leader>he', function() ui.nav_file(3) end, { desc = 'Goes to third file in harpoon' })
        keymap.set('n', '<leader>hr', function() ui.nav_file(4) end, { desc = 'Goes to fourth file in harpoon' })
    end,
}
