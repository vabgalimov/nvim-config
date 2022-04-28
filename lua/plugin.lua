vim.cmd "packadd packer.nvim"
local packer = require "packer"

local startup_plugins = function(use)
    -- VS Code тема
    use { "Mofiqul/vscode.nvim" }
    -- mini (коллекция утилит)
    use { "echasnovski/mini.nvim" }
    -- TreeSitter
    use { "nvim-treesitter/nvim-treesitter" }
    -- LSP установщик
    use { "williamboman/nvim-lsp-installer" }
    -- LSP конфигурация
    use { "neovim/nvim-lspconfig" }
    -- cmp (комплиттер)
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-cmdline" }
    use { "lukas-reineke/cmp-under-comparator" }
    -- LuaSnip (сниппеты)
    use { "L3MON4D3/LuaSnip" }
    use { "saadparwaiz1/cmp_luasnip" }
    -- Telescope (fuzzy finder)
    use { "nvim-telescope/telescope.nvim" }
    use { "nvim-lua/plenary.nvim" }
    -- Форматировать код
    use { "lukas-reineke/lsp-format.nvim" }
    -- Выполнить код
    use { "CRAG666/code_runner.nvim" }
    -- Иконки
    use { "kyazdani42/nvim-web-devicons" }
    -- Разукрашивать пары скобок и т. д.
    use { "p00f/nvim-ts-rainbow" }
    -- Автоматические скобки
    use { "windwp/nvim-autopairs" }
    -- Автоматические теги
    use { "windwp/nvim-ts-autotag" }
    -- Подстановка end
    use { "RRethy/nvim-treesitter-endwise" }
    -- Показывать отступы
    use { "lukas-reineke/indent-blankline.nvim" }
    -- Создание отсутствующих папок
    use { "jghauser/mkdir.nvim" }
end

return packer.startup({
    function(use)
        use "wbthomason/packer.nvim"
        startup_plugins(use)
        if vim.g.init_packer then
            vim.cmd "autocmd User PackerComplete quitall"
            packer.sync()
        end
    end,
    config = {
        display = {
            open_fn = require("packer.util").float
        }
    }
})
