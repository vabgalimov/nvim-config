require "global"
require "init_packer"
require "plugin"
if not vim.g.init_packer then
	require "setup"
end
