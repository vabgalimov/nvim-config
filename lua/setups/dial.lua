local set_keymap = vim.api.nvim_set_keymap
local dial = require "dial.map"
local noremap = { noremap = true }

set_keymap("n", "<C-a>", dial.inc_normal(), noremap)
set_keymap("n", "<C-x>", dial.dec_normal(), noremap)
set_keymap("v", "<C-a>", dial.inc_visual(), noremap)
set_keymap("v", "<C-x>", dial.dec_visual(), noremap)
set_keymap("v", "g<C-a>", dial.inc_gvisual(), noremap)
set_keymap("v", "g<C-x>", dial.dec_gvisual(), noremap)
