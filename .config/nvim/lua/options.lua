vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.termguicolors = true

-- indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- search: case insensitive unless using uppercase chars
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = "a" --enable mouse

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = false

vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.timeoutlen = 400
vim.opt.updatetime = 250
vim.opt.undofile = true

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"