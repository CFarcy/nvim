-- Editor general settings 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.encoding = "UTF-8"
vim.opt.hlsearch = false
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "119"
vim.opt.cmdheight = 1
vim.opt.termguicolors = true

-- Indentation & scroll settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 -- 0 replicate the tabstop value
vim.opt.softtabstop = 4 -- -1 replicate the shiftwidth value
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.scrolloff = 8

-- File & backup settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wrap = false
