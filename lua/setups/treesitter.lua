require("nvim-treesitter.configs").setup {
    highlight = { enable = true },
    autotag = { enable = true },
    endwise = { enable = true },
    rainbow = { enable = true, extended_mode = true },
}

require("nvim-autopairs").setup { check_ts = true }
