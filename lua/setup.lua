vim.cmd "colorscheme gruvbox"

require("mini.comment").setup {}
require("mini.completion").setup {}
require("mini.cursorword").setup {}
require("mini.fuzzy").setup {}
require("mini.indentscope").setup {
	draw = {
		delay = 0,
		animation = require("mini.indentscope").gen_animation("none")
	}
}
require("mini.pairs").setup {}
require("mini.starter").setup {}
require("mini.statusline").setup {}
require("mini.surround").setup {}
require("mini.tabline").setup {}

require("nvim-treesitter.configs").setup {
	ensure_installed = {
		"python",
		"javascript",
		"typescript",
	},
	sync_install = true
}

require("nvim-lsp-installer").on_server_ready(function(server)
	server:setup {}
end)
