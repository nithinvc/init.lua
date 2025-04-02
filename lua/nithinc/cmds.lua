-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "python", -- or any filetype you need
	callback = function()
		vim.opt_local.indentkeys = "0{,0},0),0],:,0#,!^F,o,O,e"
	end,
})
