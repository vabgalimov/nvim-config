local set = vim.opt;

vim.cmd [[
    filetype plugin indent on
    syntax on
]]

-- Подтверждение изменений
set.confirm = true

-- Настройка отступов
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- Курсор всегда по середине
set.scrolloff = 999

-- Нумерация строк
set.number = true
set.relativenumber = true

-- Ленивая перерисовка
set.lazyredraw = true

-- Выделение пустого пронстранства при Visul-Block
set.virtualedit = "block"

-- Навигация по строкам
set.whichwrap = "b,s,[,]"

-- Перенос строк (на 4 пробела)
set.linebreak = true
set.breakindent = true
set.breakindentopt = "shift:4"

-- Выделение текущей строки
set.cursorline = true

-- Поддержка мыши
set.mouse = "a"
