-- TODO: Add more functionality to this command.
-- [] Look for a cmake file first
-- [] Maybe some sort of configuration file to determine with compiler to use.
--      if say a project uses a particular version, etc
vim.api.nvim_create_user_command("CppCompileAndRun", function()
	local current_dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
	local compile_cmd = string.format(
		-- "g++ %s -o %s && ./%s", -- Removed run functionality
		"g++ %s -o %s",
		vim.fn.expand("%"),
		vim.fn.shellescape(current_dir_name),
		vim.fn.shellescape(current_dir_name)
	)
	vim.cmd("!" .. compile_cmd)
end, {})
