if INIT_PACKER then return end

local lsp = require "init.lspconfig"

lsp.setup("pyright")
lsp.setup("sumneko_lua", lsp.sumneko_lua_settings)
