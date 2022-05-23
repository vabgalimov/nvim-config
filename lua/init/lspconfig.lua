local M = {}


local path = vim.split(package.path, ";")
table.insert(path, "lua/?.lua")
table.insert(path, "lua/?/init.lua")


require("lsp-format").setup {}
require("nvim-lsp-installer").setup {}
local lspconfig = require "lspconfig"

local cmp_nvim_lsp = require "cmp_nvim_lsp"
local client = vim.lsp.protocol.make_client_capabilities()
local capabilities = cmp_nvim_lsp.update_capabilities(client)

M.setup = function(server, opt)
    opt = opt or {}
    opt.on_attach = require("lsp-format").on_attach
    opt.capabilities = capabilities
    lspconfig[server].setup(opt)
end


M.sumneko_lua_settings = {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = path
            },
            diagnostics = {
                globals = {
                    "vim",
                    "INIT_PACKER",
                }
            },
            workspaces = {
                library = vim.api.nvim_get_runtime_file("", true)
            },
            telemetry = { enable = false }
        }
    }
}


return M
