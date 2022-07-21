vim.cmd "filetype plugin indent on"
vim.cmd "syntax on"

local set = vim.opt

set.shiftwidth = 4
set.softtabstop = -1
set.expandtab = true

set.linebreak = true
set.breakindent = true
set.breakindentopt = "shift:4"

set.list = true
set.listchars:append "eol:↴"

set.number = true
set.relativenumber = true
vim.cmd "command R set rnu!"

set.whichwrap = "b,s,h,l,<,>,[,]"
set.virtualedit = "block,onemore"
set.scrolloff = 999
set.mouse:append "a"
