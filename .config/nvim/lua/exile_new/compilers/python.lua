-- TODO: Add more configuration
-- [] Read a project file to determine whether there is a entry point
--      or not to run from.
-- [] If its a project probably should have some :wa call to save all
--      project progress before running.
-- [] Have a way to tell run Unit Tests or run the whole project.

vim.api.nvim_create_user_command("PyCompileAndRun", function()
	local compile_cmd = string.format("python3 %s", vim.fn.expand("%"))

	vim.cmd("!" .. compile_cmd)
end, {})
