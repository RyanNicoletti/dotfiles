local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.autoformat = true
vim.o.errorbells = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.termguicolors = true
vim.o.hidden = true -- allow switching buffers without saving
vim.o.incsearch = true
vim.bo.swapfile = false

-- KEYMAPS -- 
-- Open new buffer to the right
vim.api.nvim_set_keymap('n', '<leader>|', ':vsplit<CR>', { noremap = true, silent = true })

-- Open new buffer below
vim.api.nvim_set_keymap('n', '<leader>-', ':split<CR>', { noremap = true, silent = true })

require("lazy").setup("plugins")
require("mason").setup()
vim.cmd.colorscheme("tokyonight")

