require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "lua",
        "python",
        "markdown",
        "javascript",
        "typescript",
    },
    sync_install = true,
    highlight = { enable = true },
    rainbow = { enable = true, extended_mode = true },
    autotag = { enable = true },
    endwise = { enable = true },
}

require("nvim-autopairs").setup { check_ts = true }
