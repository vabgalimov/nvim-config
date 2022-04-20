local set = vim.opt;

vim.cmd [[
	filetype plugin indent on
	syntax on
]]

-- Подтверждение изменений
set.confirm = true

-- Умные отступы
set.smartindent = true

-- Настройка отступов
set.tabstop = 4
set.shiftwidth = 4

-- Настройка Backspace
set.backspace = "indent,eol,start"

-- Курсор всегда по середине
set.scrolloff = 999

-- Нумерация строк
set.number = true
set.relativenumber = true

set.lazyredraw = true

set.virtualedit = "onemore"

set.whichwrap = "b,s,<,>,[,]"

set.linebreak = true
set.breakindent = true
set.breakindentopt = "shift:4"

set.cursorline = true

set.mouse = "a"

set.background = "dark"
