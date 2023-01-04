-- [[ Setting options ]]
-- See `:help vim.o`
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = false

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Use system clipboard
vim.o.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Smart-ing vim
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.smartindent = true

-- Tabs to spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Split options
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Disable vim deafult status bar
vim.opt.showmode = false
vim.opt.laststatus = 0
vim.opt.ruler = false
vim.opt.showmode = false
vim.opt.cmdheight = 0

-- Foldiim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 2
vim.opt.foldenable = true
vim.opt.foldcolumn = '1'

--Scroll
vim.opt.scrolloff = 0

--Colors
vim.opt.termguicolors = true
