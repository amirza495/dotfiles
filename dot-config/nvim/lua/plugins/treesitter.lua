return {
	{
	  "nvim-treesitter/nvim-treesitter",
	  build = function()
	    require("nvim-treesitter.install").update({ with_sync = true })()
	  end,

	  config = function()
		  local configs = require("nvim-treesitter.configs")

		  configs.setup({
			  ensure_installed = { "c", "lua", "cpp", "python", "markdown" },
			  sync_installed = false,
			  highlight = { enable = true },
			  indent = { enable = true },
		  })
	  end,
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',

		config = function()
			-- This is your opts table
			require("telescope").setup {
			  extensions = {
			    ["ui-select"] = {
			      require("telescope.themes").get_dropdown { }
			    }
			  }
			}
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	}
}
