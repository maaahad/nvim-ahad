-- adding leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt


opt.number = true  -- line number
opt.relativenumber = true -- relative line number
opt.mouse = "a" -- enable mouse mode
opt.shiftround = true -- round indent
opt.shiftwidth= 2 -- shift width
opt.showmode = false -- don't show mode as we have status line
