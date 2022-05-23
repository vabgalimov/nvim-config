vim.cmd "filetype plugin indent on"
vim.cmd "syntax on"

local set = vim.opt

set.softtabstop = 4
set.shiftwidth = 4
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

set.completeopt = "menu,menuone,noselect"


local lsp = vim.lsp
lsp.handlers["textDocument/publishDiagnostics"] = lsp.with(
    lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        -- update_in_insert = true,
    })

vim.diagnostic.config {
    virtual_text = false
}
