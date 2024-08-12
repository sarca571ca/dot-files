-- TODO: Definetly need to add options here since you can use
--          go run <file> - to run the single file
--          go build <file> - to make an executable
vim.api.nvim_create_user_command("GoCompileAndRun", function()
	local file_name = vim.fn.expand("%:t:r")
	local compile_cmd = string.format("go build %s && ./%s", vim.fn.expand("%"), file_name)

	vim.cmd("!" .. compile_cmd)
end, {})
