-- plugins/telescope.lua:
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		keys = {
			{ "sf", "<cmd>Telescope find_files<CR>", desc = "serach all files" },
			{ "f", "<cmd>Telescope git_files<CR>", desc = "search git files" },
			{ "st", "<cmd>Telescope live_grep<CR>", desc = "search text across project" },
			{ "sl", "<cmd>Telescope resume<CR>", desc = "resume last search" },
			{ "bf", "<cmd>Telescope buffers<CR>", desc = "search open buffers" },
		},
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
