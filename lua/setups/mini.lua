local modules = {
    "bufremove",
    "comment",
    "starter",
    "surround",
}

for _, mod in ipairs(modules) do
    require("mini." .. mod).setup {}
end
