-- we want netrw to use Tree style
-- 0: thin, 1: Long, 2: Wide, 3: Tree
vim.cmd("let g:netrw_liststyle = 3")

-- adding leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

-- line numbers
opt.number = true  -- line number
opt.relativenumber = true -- relative line number

-- enable mouse mode
opt.mouse = "a"

-- tab and indentation
opt.tabstop = 2 -- 2 spaces for tab (prettier default)
opt.shiftwidth= 2 -- 2 shift width
opt.expandtab = true -- expand tab to spaces
opt.shiftround = true -- round indent
opt.autoindent = true -- copy indent from current line when starting new line

-- mode
opt.showmode = false -- don't show mode as we have status line

-- line wrapping
opt.wrap = false -- disable line wrapping

-- cursor line
opt.cursorline = true -- hightlight the current line

-- appearence
-- turn on termguicolor to make nightly colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- colorscheme that can be made dark or light will be made dark
opt.signcolumn = "yes" -- show sign column so that text does not shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split window 
opt.splitright = true  -- split vertical window to the right 
opt.splitbelow = true  -- split horizontal window to the bottom

-- turn off swap file
opt.swapfile = false
