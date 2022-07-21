vim.cmd "packadd packer.nvim"
local packer = require "packer"

local function startup_plugins(use)
    use "Mofiqul/vscode.nvim"

    use "echasnovski/mini.nvim"

    use "jghauser/mkdir.nvim"

    use "kyazdani42/nvim-web-devicons"

    use "romgrk/barbar.nvim"

    use "nvim-lualine/lualine.nvim"

    use "lukas-reineke/indent-blankline.nvim"

    use "monaqa/dial.nvim"

    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use "windwp/nvim-ts-autotag"
    use "windwp/nvim-autopairs"
    use "p00f/nvim-ts-rainbow"
    use "RRethy/nvim-treesitter-endwise"

    use { "neoclide/coc.nvim", branch = "release" }
end

return packer.startup({
    function(use)
        use "wbthomason/packer.nvim"
        startup_plugins(use)

        if INIT_PACKER then
            vim.cmd "au User PackerComplete qa"
            packer.sync()
        end
    end,
    config = {
        display = {
            open_fn = require("packer.util").float
        }
    }
})
