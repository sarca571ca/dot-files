return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	-- opts = {
	-- },
	config = function()
		local keymap = vim.keymap
		local finecmd = require("fine-cmdline")

		keymap.set("n", ":", "<cmd>FineCmdline<cr>", { desc = "Opens floating cmd interface" })

		finecmd.setup({
			popup = {
				position = {
					row = "40%",
					column = "50%",
				},
			},
		})
	end,
}
