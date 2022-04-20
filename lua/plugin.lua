vim.cmd "packadd packer.nvim"

return require("packer").startup({function()
	use "wbthomason/packer.nvim"

	use "nvim-lua/popup.nvim"
	use "kyazdani42/nvim-web-devicons"

	use "echasnovski/mini.nvim"

	use "nvim-treesitter/nvim-treesitter"

	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"

	use "ellisonleao/gruvbox.nvim"

	if vim.g.init_packer then
		vim.cmd "autocmd User PackerComplete quitall"
		require("packer").sync()
	end
end,
config = {
	display = {
		open_fn = require("packer.util").float
	}
}})
