local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- splits
vim.keymap.set("n", "<Leader>%", ":vsplit<CR>", opts)
vim.keymap.set("n", '<Leader>"', ":split<CR>", opts)

-- jumps
vim.keymap.set("n", "<Leader>jn", "<C-i>", opts)
vim.keymap.set("n", "<Leader>jb", "<C-o>", opts)
vim.keymap.set("n", "<Leader>jl", ":jumps<CR>", opts)

-- buffer navigation
vim.keymap.set("n", "<Leader>bb", ":bp<CR>", opts)
vim.keymap.set("n", "<Leader>bn", ":bn<CR>", opts)
vim.keymap.set("n", "<Leader>bd", ":bd<CR>", opts)
vim.keymap.set("n", "<Leader>bx", ":Bd<CR>", opts)

-- terminal navigation
vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
vim.keymap.set("t", "<esc>", "<C-\\><C-N>", term_opts)

-- misc
vim.keymap.set("n", "<Leader>h", ":noh<CR>", opts)

-- save and quit
vim.keymap.set("n", "<Leader>w", ":w<CR>", opts)
vim.keymap.set("n", "<Leader>q", ":q<CR>", opts)

-- comment/uncomment
vim.keymap.set("n", "<C-_>", function()
	require("Comment.api").toggle.linewise.current()
end, opts)
vim.keymap.set("n", "<Leader>/", function()
	require("Comment.api").toggle.linewise.current()
end, opts)
vim.keymap.set("v", "<C-_>", function()
	require("Comment.api").toggle.linewise.current()
end, opts)
vim.keymap.set("v", "<Leader>/", function()
	require("Comment.api").toggle.linewise.current()
end, opts)

-- error viewing
vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
