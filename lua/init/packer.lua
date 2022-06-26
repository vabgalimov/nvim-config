local path = vim.fn.stdpath("data")
path = path .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(path)) > 0 then
    local repo = "https://github.com/wbthomason/packer.nvim"
    local cmd = { "git", "clone", "--depth", "1", repo, path }
    INIT_PACKER = vim.fn.system(cmd)
end

vim.cmd [[
    aug PackerAutocompile
        au!
        au BufWritePost plugins.lua source <afile>|PackerCompile
    aug end
]]
