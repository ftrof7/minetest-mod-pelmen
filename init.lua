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
minetest.register_craft({
	output = "pelmen:pelmen 9",
	recipe = {
		{"pelmen:pelmen_block"}
	},
})
minetest.register_craftitem("pelmen:pelmen_boiled",{
description = "Pelmen boiled",
inventory_image = "pelmen_boiled.png",
wield_image = "pelmen_boiled.png",
on_use = minetest.item_eat(5),
groups = {food_pelmen = 1, fleshy = 3, dig_immediate = 3, flammable = 2}
})
minetest.register_craft({
	output = "pelmen:pelmen_boiled",
	recipe = {
		{"pelmen:pelmen","default:water_source"},
	}
})
minetest.register_craft({
	output = "pelmen:pelmen 9",
	recipe = {
		{"pelmen:pelmen_block_boiled"}
	},
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
minetest.register_node("pelmen:pelmen_block_boiled", {
    description = "Pelmen block boiled",
    tiles = {"pelmen_block_boiled.png"},
    groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
    on_use = minetest.item_eat(30)
})
minetest.register_craft({
    output = "pelmen:pelmen_block_boiled",
    recipe = {
        {"pelmen:pelmen_boiled","pelmen:pelmen_boiled","pelmen:pelmen_boiled"},
        {"pelmen:pelmen_boiled","pelmen:pelmen_boiled","pelmen:pelmen_boiled"},
        {"pelmen:pelmen_boiled","pelmen:pelmen_boiled","pelmen:pelmen_boiled"},
    }
})
minetest.register_craft({
    output = "pelmen:pelmen_block_boiled",
    recipe = {
        {"pelmen:pelmen_block","default:water_source"},
    }
})
minetest.register_craftitem("pelmen:pelmen_bio",{
description = "Pelmen bio",
inventory_image = "pelmen_bio.png",
wield_image = "pelmen_bio.png",
on_use = minetest.item_eat(15),
groups = {food_pelmen = 1, fleshy = 3, dig_immediate = 3, flammable = 2}
})
minetest.register_craft({
    output = "pelmen:pelmen_bio",
    recipe = {
        {"pelmen:pelmen","pelmen:pelmen","pelmen:pelmen"},
        {"","default:paper",""},
        {"","",""},
    }
})
minetest.register_craftitem("pelmen:pelmen_rotten",{
description = "Pelmen rotten",
inventory_image = "pelmen_r.png",
wield_image = "pelmen_r.png",
on_use = minetest.item_eat(-65600),
groups = {food_pelmen = 1, fleshy = 3, dig_immediate = 3, flammable = 2}
})
minetest.register_craft({
	output = "pelmen:pelmen_rotten",
	recipe = {
		{"default:dirt","default:dirt","default:dirt"},
		{"default:dirt","pelmen:pelmen","default:dirt"},
		{"default:dirt","default:dirt","default:dirt"}
	}
})
