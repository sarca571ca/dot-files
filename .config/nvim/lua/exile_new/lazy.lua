local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({ { import = 'exile_new.plugins' }, { import = 'exile_new.plugins.lsp'} }, {
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        notify = false,
    },
    config = function()
        local keymap = vim.keymap

        keymap.set('n', '<leader>li', '<cmd>Lazy install<CR>', { desc = 'Installs lazy plugins' })
        keymap.set('n', '<leader>lu', '<cmd>Lazy update<CR>', { desc = 'Updates lazy plugins' })
        keymap.set('n', '<leader>lc', '<cmd>Lazy clean<CR>', { desc = 'Cleans lazy plugins' })
    end,
})
