if INIT_PACKER then return end

local lsp = require "init.lspconfig"

lsp.setup("bashls")
lsp.setup("clangd")
lsp.setup("pyright")
lsp.setup("tsserver")

lsp.setup("sumneko_lua", lsp.sumneko_lua_settings)
