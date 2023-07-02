local directory = minetest.get_modpath(minetest.get_current_modname()) .. "/maps/"

for _, entry in ipairs(minetest.get_dir_list(directory, true)) do
    for _, filename in ipairs(minetest.get_dir_list(directory .. "/" .. entry .. "/", false)) do
        if filename == "init.lua" then
            dofile(directory .. "/" .. entry .. "/"..filename)
        end
    end
end
