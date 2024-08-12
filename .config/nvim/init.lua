-- Th is is my old setup following ThePrimeagen
-- require('exile')

--[[ all of the below needs to be transfered to my own init.lua file for cleanliness i think

vim.opt.termguicolors = true

vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers
vim.opt.tabstop = 4               -- Number of spaces for a tab
vim.opt.shiftwidth = 4            -- Number of spaces to use for autoindent
--]]

-- This will be my new setup following Josean Martinez
-- require('exile_new')
require("exile_new.core")
require("exile_new.lazy")
require("exile_new.compilers")
vim.cmd.SessionRestore()
