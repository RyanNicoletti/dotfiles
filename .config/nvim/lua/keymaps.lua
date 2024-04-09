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