minetest.register_craftitem("pelmen:pelmen",{
description = "Pelmen",
inventory_image = "pelmen.png",
wield_image = "pelmen.png",
on_use = minetest.item_eat(4),
groups = {food_pelmen = 1, fleshy = 3, dig_immediate = 3, flammable = 2}
})
minetest.register_craft({
	output = "pelmen:pelmen",
	recipe = {
		{"","farming:flour",""},
		{"","extra:ground_meat",""},
		{"","farming:flour",""}
	}
})
minetest.register_node("pelmen:pelmen_block", {
    description = "Pelmen block",
    tiles = {"pelmen_block.png"},
    groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
    on_use = minetest.item_eat(25)
})
minetest.register_craft({
    output = "pelmen:pelmen_block",
    recipe = {
        {"pelmen:pelmen","pelmen:pelmen","pelmen:pelmen"},
        {"pelmen:pelmen","pelmen:pelmen","pelmen:pelmen"},
        {"pelmen:pelmen","pelmen:pelmen","pelmen:pelmen"},
    }
})
