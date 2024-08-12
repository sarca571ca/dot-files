-- Aylin Color scheme
-- return {
--     'AhmedAbdulrahman/aylin.vim',
--     priority = 1000,
--     config = function()
--         vim.cmd('colorscheme aylin')
--     end
-- }

-- koalight
return {
    'Koalhack/koalight.nvim',
    priority = 1000,
    config = function()
        vim.cmd('colorscheme koalight')
    end
}

-- fluromachine colorscheme
-- return {
--     'maxmx03/fluoromachine.nvim',
--     priority = 1000,
--     config = function()
--         local fm = require 'fluoromachine'
--
--         fm.setup {
--             glow = true,
--             theme = 'fluoromachine',
--         }
--         vim.cmd('colorscheme fluoromachine')
--     end
-- }
