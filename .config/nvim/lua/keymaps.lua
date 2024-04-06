-- Open new buffer to the right
vim.keymap.set('n', '<leader>|', ':vsplit<CR>')

-- Open new buffer below
vim.keymap.set('n', '<leader>-', ':split<CR>')

-- file explorer
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')