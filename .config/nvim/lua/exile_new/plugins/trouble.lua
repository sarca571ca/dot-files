return {
    "folke/trouble.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/todo-comments.nvim'},
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    -- win = { 'float' },
    -- modes = {
    --     test = {
    --         mode = "diagnostics",
    --         preview = {
    --             type = "float",
    --             relative = "editor",
    --             border = "rounded",
    --             title = "Preview",
    --             title_pos = "center",
    --             position = { 0, -2 },
    --             size = { width = 0.3, height = 0.3 },
    --             zindex = 200,
    --         },
    --     },
    -- },
    keys = {
        { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
        { "<leader>xf", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
        { "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
        { "<leader>xt", "<cmd>Trouble todo<cr>", desc = "Symbols (Trouble)" },
        { "<leader>xd", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)" },
        { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
        { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    },
}
