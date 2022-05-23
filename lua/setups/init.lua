if INIT_PACKER then return end

local scan = require "plenary.scandir"

local path = vim.fn.stdpath("config") .. "/lua/setups"
local pathlen = path:len()

for _, filename in ipairs(scan.scan_dir(path)) do
    local modname = filename:sub(pathlen + 2, -5)
    if modname ~= "init" then
        require("setups." .. modname)
    end
end
