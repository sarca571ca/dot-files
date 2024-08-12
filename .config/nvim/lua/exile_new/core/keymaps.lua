vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "j", "jzz", { desc = "Keeps the cursor in the middle" })
keymap.set("n", "k", "kzz", { desc = "Keeps the cursor in the middle" })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- This command clears searches, including matches from searchbox plugin ":SearchBoxClear"
keymap.set("n", "<leader>nh", ":nohl<CR>:SearchBoxClear<cr>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<leader>li", "<cmd>Lazy install<CR>", { desc = "Installs lazy plugins" })
keymap.set("n", "<leader>lu", "<cmd>Lazy update<CR>", { desc = "Updates lazy plugins" })
keymap.set("n", "<leader>lc", "<cmd>Lazy clean<CR>", { desc = "Cleans lazy plugins" })

-- Build/Run keymaps
keymap.set("n", "<leader>bc", "<cmd>CppCompileAndRun<CR>", { desc = "Builds the .cpp current file" })
keymap.set("n", "<leader>bp", "<cmd>PyCompileAndRun<CR>", { desc = "Runs the .py current file" })
keymap.set("n", "<leader>bl", "<cmd>LuaCompileAndRun<CR>", { desc = "Runs the .lua current file" })
keymap.set("n", "<leader>bg", "<cmd>GoCompileAndRun<CR>", { desc = "Builds and runs the .go file" })
