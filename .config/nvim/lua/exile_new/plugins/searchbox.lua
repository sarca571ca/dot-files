return {
	"VonHeikemen/searchbox.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	config = function()
		local keymap = vim.keymap
		local searchbox = require("searchbox")

		keymap.set(
			"n",
			"<leader>fb",
			":SearchBoxIncSearch clear_matches=false<cr>",
			{ desc = "Searchs within the current file/buffer" }
		)
		keymap.set(
			"n",
			"<leader>fa",
			":SearchBoxMatchAll clear_matches=false<cr>",
			{ desc = "Searchs all within the current file/buffer" }
		)
		searchbox.setup({
			clear_matches = false,
		})
	end,
}
