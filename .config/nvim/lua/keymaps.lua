-- Open new buffer to the right
vim.keymap.set('n', '<leader>|', ':vsplit<CR>')

-- Open new buffer below
vim.keymap.set('n', '<leader>-', ':split<CR>')

-- file explorer
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

-- tabs
vim.keymap.set('n', '<leader><tab>n', ':tabnext<CR>', {silent = true, nowait = true})
vim.keymap.set('n', '<leader><tab>p', ':tabprevious<CR>', {silent = true, nowait = true})
vim.keymap.set('n', '<leader><tab><tab>', ':tabnew<CR>', {silent = true, nowait = true})
vim.keymap.set('n', '<leader><tab>d', ':tabclose<CR>', {silent = true, nowait = true})

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })