local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.py" },
	desc = "Auto-format Python files after saving",
	callback = function()
		local fileName = vim.api.nvim_buf_get_name(0)
		vim.cmd(":silent !black " .. fileName)
	end,
	group = autocmd_group,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.lua" },
	desc = "Auto-format Python files after saving",
	callback = function()
		local fileName = vim.api.nvim_buf_get_name(0)
		vim.cmd(":silent !stylua  " .. fileName)
	end,
	group = autocmd_group,
})
