return {
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{"<Leader>e", "<cmd>NvimTreeToggle<CR>", mode = "n", desc = "Toggle Tree View"},

		},
	},
}
