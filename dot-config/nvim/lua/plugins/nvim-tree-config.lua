return {
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		opts = {
			update_focused_file = { enable = true, exclude = false },
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<Leader>e", "<cmd>NvimTreeToggle<CR>", mode = "n", desc = "Toggle Tree View" },
		},
	},
}
