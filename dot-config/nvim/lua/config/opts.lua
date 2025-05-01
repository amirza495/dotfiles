-- configure line numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.o.termguicolors = true

-- fix end of line issues
vim.opt.fixeol = true

--vim.diagonstic.config({
--	virtual_text = true,
--})
--vim.diagonstic.config({ virtual_text = { severity = { min = vim.diagonsitc.severity.HINT, max = vim.diagnostic.seeverity.ERROR },},)

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- configure tab width and expansions for different languages
vim.api.nvim_create_augroup("FileTypeSpecificTabs", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	command = "setlocal shiftwidth=4 tabstop=4 expandtab",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	command = "setlocal shiftwidth=2 tabstop=2 expandtab",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	command = "setlocal shiftwidth=2 tabstop=2 expandtab",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "rust",
	command = "setlocal shiftwidth=4 tabstop=4 expandtab",
})
