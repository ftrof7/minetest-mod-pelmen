local S = minetest.get_translator("pelmen")

local items = {
    {"pelmen", "Pelmen", 4},
    {"pelmen_boiled", "Pelmen boiled", 6},
    {"pelmen_package", "Pelmen package", 16},
    {"pelmen_rotten", "Pelmen rotten", -20},
}

local nodes = {
    {"pelmen_block", "Pelmen block", 20},
    {"pelmen_block_boiled", "Pelmen block boiled", 30},
}

for _, row in ipairs(items) do
    local name = row[1]
    local desc = row[2]
    local eat = row[3]

    minetest.register_craftitem("pelmen:"..name,{
        description = S(desc),
        inventory_image = name..".png",
        on_use = minetest.item_eat(eat),
    })
end

for _, row in ipairs(nodes) do
    local name = row[1]
    local desc = row[2]
    local eat = row[3]

    minetest.register_node("pelmen:"..name, {
        description = S(desc),
        tiles = {name..".png"},
        groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
        on_use = minetest.item_eat(eat)
    })
end