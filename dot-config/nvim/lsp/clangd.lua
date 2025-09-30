return {
	cmd = { "clangd", "--clang-tidy" }, -- Enable clang-tidy within clangd
	filetypes = { "c", "cpp" },
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePost", {
			buffer = bufnr,
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
