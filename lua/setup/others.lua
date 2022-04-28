require("indent_blankline").setup {
    show_current_context = true
}

require("telescope").setup {
    defaults = {
        generic_sorter = require("mini.fuzzy").get_telescope_sorter
    }
}

require("code_runner").setup {
    term = {
        mode = "startinsert"
    },
    filetype_path = vim.fn.expand("~/.config/nvim/code_runner.json"),
    project_path = vim.fn.expand("~/.config/nvim/project_manager.json")
}

local on_publish_diagnostics_opts = {
    virtual_text = {
        spacing = 2
    }
}
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    on_publish_diagnostics_opts
)
