minetest.register_craftitem("pelmen:pelmen",{
description = "Pelmen",
inventory_image = "pelmen.png",
wield_image = "pelmen.png",
on_use = minetest.item_eat(4),
groups = {food_pelmen = 1, fleshy = 3, dig_immediate = 3, flammable = 2}
})
minetest.register_craft({
	output = "pelmen",
	recipe = {
		{"","farming:flour",""},
		{"","mobs:pork_raw",""},
		{"","farming:flour",""}
	}
})
