-- TODO: Add more functionality but really just going to use for
--          unit testing atm.
vim.api.nvim_create_user_command("LuaCompileAndRun", function()
	local compile_cmd = string.format("lua %s", vim.fn.expand("%"))

	vim.cmd("!" .. compile_cmd)
end, {})
