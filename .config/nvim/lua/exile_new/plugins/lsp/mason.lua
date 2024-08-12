return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls", -- bash
				"clangd", -- C, C++
				"omnisharp", -- C#
				"cmake", -- cmake
				"dockerls", -- docker
				"gopls", -- golang
				"julials", -- julia
				"lua_ls", -- lua
				-- "autotools_ls",     -- make // currently not in use on system
				"pyright", -- python
				"markdown_oxide", -- markdown
				"rust_analyzer", -- rust
				"sqlls", -- sql
				"taplo", -- toml
				"yamlls", -- yaml
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- formatters
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"beautysh", -- bash formatter
				"clang-format", -- c, cpp, c# formatter
				"goimports", -- go formatter
				-- linters
				"cpplint", -- cpp linter
				"pylint", -- python linter
				"golangci-lint", -- go linter
			},
		})
	end,
}
