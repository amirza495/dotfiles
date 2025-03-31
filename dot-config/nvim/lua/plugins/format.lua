return {
	{
		"stevearc/conform.nvim",
		opts = {

			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				cpp = { "clang-format" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
	{

		"zapling/mason-conform.nvim",
		opts = {},
	},
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				markdown = { "vale" },
				python = { "flake8" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				-- clang-tidy is used through clangd, so don't include c or cpp files here
				pattern = { "*.py", "*.md", "*.markdown" },
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		opts = {
			ensure_installed = { "vale", "flake8" },
		},
	},
}
