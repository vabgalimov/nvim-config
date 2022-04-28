local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("lsp-format").setup()
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function setup_lsp(server, opts)
    if not opts then opts = {} end
    opts.on_attach = require("lsp-format").on_attach
    opts.capabilities = capabilities
    require("lspconfig")[server].setup(opts)
end

setup_lsp("pylsp")
setup_lsp("tsserver")
setup_lsp("sumneko_lua", {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = runtime_path
            },
            diagnostics = {
                globals = { "vim" }
            },
            workspaces = {
                library = vim.api.nvim_get_runtime_file("", true)
            },
            telemetry = {
                enable = false
            }
        }
    }
})
