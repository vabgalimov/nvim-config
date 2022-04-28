local fn = vim.fn
local data_path = fn.stdpath("data")
local install_path = data_path .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    local git_repo = "https://github.com/wbthomason/packer.nvim"
    local cmd = { "git", "clone", "--depth", "1", git_repo, install_path }
    vim.g.init_packer = fn.system(cmd)
end

vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugin.lua source <afile> | PackerCompile
    augroup end
]]
