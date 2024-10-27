-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
-- Leader key mappings
-- configure escape sequence as kj
lvim.keys.insert_mode['kj'] = "<esc>"
lvim.keys.visual_mode['kj'] = "<esc>"

-- split horizontally
lvim.keys.normal_mode['<Leader>"'] = ":split<CR>"
-- split vertically
lvim.keys.normal_mode['<Leader>%'] = ":vsplit<CR>"

-- close active buffer
lvim.keys.normal_mode['<Leader>bd'] = ":bd"


-- Linting and formatting
-- enable formatting on save
lvim.format_on_save.enabled = true

-- unmap bindings that conflict with codeium
-- lvim.lsp.buffer_mappings.insert_mode['<M-h>'] = nil
-- lvim.lsp.buffer_mappings.insert_mode['<M-j>'] = nil
-- lvim.lsp.buffer_mappings.insert_mode['<M-k>'] = nil
-- lvim.lsp.buffer_mappings.insert_mode['<M-l>'] = nil
-- lvim.keys.insert_mode['<M-h>'] = false
-- lvim.keys.insert_mode['<M-l>'] = false
-- lvim.keys.insert_mode['<M-j>'] = false
-- lvim.keys.insert_mode['<M-k>'] = false

-- Plugins
-- Install plugins
-- TODO: adjust codeium bindings to not conflict with window manager
lvim.plugins = {
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    -- keys = {
    --   {
    --     '<M-k>',
    --     function() vim.fn['codeium#CycleCompletions'](1) end,
    --     {
    --       mode = "i",
    --       noremap = true,
    --       expr = true,
    --       silent = true
    --     },
    --   },
    --   { '<M-j>', function() vim.fn['codeium#CycleCompletions'](-1) end,
    --     {
    --       mode = "i",
    --       noremap = true,
    --       expr = true,
    --       silent = true
    --     },
    --   },
    --   { '<M-h>', function() vim.fn['codeium#Accept']() end, { mode = "i", noremap = true, expr = true, silent = true }, },
    --   { '<M-l>', function() vim.fn['codeium#Clear']() end,  { mode = "i", noremap = true, expr = true, silent = true }, },
    -- },
  },
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    lazy = false,
    event = "BufEnter",
    init = function()
      -- this is an example, not a default. Please see the readme for more configuration options
      vim.g.molten_output_win_max_height = 12
      vim.g.python3_host_prog = vim.fn.expand("~/.virtualenvs/neovim/bin/python3")
    end,
    keys = {
      {
        "<Leader>r",
        "<cmd>MoltenEvaluateOperator<CR>",
        desc = "Evaluate Operator",
        { noremap = true, silent = true, expr = true },
      },
    },
  },
  {
    -- configures indents as indexable objects
    -- great for logical execution of python via molten
    -- ex: <Leader>rai will run everything at the current indent level such as a function
    "michaeljsmith/vim-indent-object",
    lazy = false,
    event = "BufEnter",
  },
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
    opts = {
      -- configuration here or empty for defaults
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  }
}

-- Codeium bindings
lvim.keys.insert_mode['<M-k>'] = { function() return vim.fn['codeium#CycleCompletions'](1) end }
lvim.keys.insert_mode['<M-j>'] = { function() return vim.fn['codeium#CycleCompletions'](-1) end }
lvim.keys.insert_mode['<M-l>'] = { function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true } }
lvim.keys.insert_mode['<M-h>'] = { function() return vim.fn['codeium#Clear']() end }
