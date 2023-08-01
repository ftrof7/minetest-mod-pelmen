local S = minetest.get_translator("pelmen")

local items = {
    -- name, desc, eat (w/o "pelmen")
    {"", "", 4},
    {"_boiled", " boiled", 6},
    {"_package", " package", 16},
    {"_rotten", " rotten", -20},
}

local nodes = {
    -- name, desc, eat (w/o "pelmen")
    {"_block", " block", 20},
    {"_block_boiled", " block boiled", 30},
}

-- register items
for _, row in ipairs(items) do
    -- assign local = row
    local name = row[1]
    local desc = row[2]
    local eat = row[3]

    minetest.register_craftitem("pelmen:pelmen"..name,{
        description = S("Pelmen"..desc),
        inventory_image = "pelmen"..name..".png",
        on_use = minetest.item_eat(eat),
    })
end

-- register nodes
for _, row in ipairs(nodes) do
    -- assign local = row
    local name = row[1]
    local desc = row[2]
    local eat = row[3]

    minetest.register_node("pelmen:pelmen"..name, {
        description = S("Pelmen"..desc),
        tiles = {"pelmen"..name..".png"},
        groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
        on_use = minetest.item_eat(eat)
    })
end
