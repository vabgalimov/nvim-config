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

local lspconfig = require "lspconfig"
lspconfig.pylsp.setup {}
lspconfig.tsserver.setup {}
