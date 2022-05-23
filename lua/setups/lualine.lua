require("lualine").setup {
    options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" }
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "filetype" },
        lualine_y = { "branch" },
        lualine_z = { "location" }
    }
}
