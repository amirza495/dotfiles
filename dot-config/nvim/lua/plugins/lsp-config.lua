return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",

		opts = {
			ensure_installed = { "lua_ls", "clangd", "pyright" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({
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
			})
			lspconfig.pyright.setup({
				analysis = {
					typeCheckinggMode = "off",
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
