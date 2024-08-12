return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		local function get_clang_format_args()
			-- Check if a local .clang-format file exists in the current directory
			local local_clang_format = vim.fn.findfile(".clang-format", vim.fn.getcwd() .. ";")
			if local_clang_format ~= "" then
				-- Use the local .clang-format file
				return { "--style=file:" .. local_clang_format }
			else
				-- Fallback to the global .clang-format file
				return { "--style=file:~/codeDev/cpp/.clang-format" }
			end
		end

		conform.setup({
			formatters = {
				cpp = {
					command = "clang-format",
					args = get_clang_format_args,
					stdin = true,
				},
				c = {
					command = "clang-format",
					args = get_clang_format_args,
					stdin = true,
				},
				csharp = {
					command = "clang-format",
					args = get_clang_format_args,
					stdin = true,
				},
			},
			formatters_by_ft = {
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				go = { "goimports" },
				-- c = { "clang-format" },
				-- csharp = { "clang-format" },
				-- cpp = { "clang-format" },
				-- cpp = { "prettier" },
				-- TODO: Need to include formaters for clang (c,cpp,c#)
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
