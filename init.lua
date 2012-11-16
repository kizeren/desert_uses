-- desert_stone mod by Menche
-- Adds the uses of normal stone to desert stone
-- License: CC0

-- Node definitions --------------------
-- Desert Cobble
minetest.register_node("desert_uses:desert_cobble", {
	description = "Desert Cobblestone",
	tiles = {"desert_stone_desert_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

-- Make desert stone drop desert cobble
minetest.register_node(":default:desert_stone", {
	description = "Desert Stone",
	tiles = {"default_desert_stone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = "desert_uses:desert_cobble",
	sounds = default.node_sound_stone_defaults(),
})

-- Tool definitions -------------------
-- Desert stone pickaxe
minetest.register_tool("desert_uses:pick_desert_stone", {
	description = "Desert Stone Pickaxe",
	inventory_image = "desert_stone_tool_desert_stonepick.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[1]=3.00, [2]=1.20, [3]=0.80}, uses=20, maxlevel=1}
		}
	},
})

-- Desert stone shovel
minetest.register_tool("desert_uses:shovel_desert_stone", {
	description = "Desert Stone Shovel",
	inventory_image = "desert_uses_tool_desert_stoneshovel.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.50, [3]=0.30}, uses=20, maxlevel=1}
		}
	},
})

-- Desert stone axe
minetest.register_tool("desert_uses:axe_desert_stone", {
	description = "Desert Stone Axe",
	inventory_image = "desert_uses_tool_desert_stoneaxe.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.00, [3]=0.60}, uses=20, maxlevel=1},
			fleshy={times={[2]=1.30, [3]=0.70}, uses=20, maxlevel=1},
		}
	}
})

-- Desert stone sword
minetest.register_tool("desert_uses:sword_desert_stone", {
	description = "Desert Stone Sword",
	inventory_image = "desert_uses_tool_desert_stonesword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			fleshy={times={[2]=0.80, [3]=0.40}, uses=20, maxlevel=1},
			snappy={times={[2]=0.80, [3]=0.40}, uses=20, maxlevel=1},
			choppy={times={[3]=0.90}, uses=20, maxlevel=0}
		}
	}
})

-- Craft definitions -------------------
-- Desert stone pickaxe
minetest.register_craft({
	output = "desert_uses:pick_desert_stone",
	recipe = {
		{"desert_uses:desert_cobble", "desert_uses:desert_cobble", "desert_uses:desert_cobble"},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	}
})

-- Desert stone shovel
minetest.register_craft({
	output = "desert_uses:shovel_desert_stone",
	recipe = {
		{"desert_uses:desert_cobble"},
		{"default:stick"},
		{"default:stick"},
	}
})

-- Desert stone axe
minetest.register_craft({
	output = "desert_uses:axe_desert_stone",
	recipe = {
		{"desert_uses:desert_cobble", "desert_uses:desert_cobble"},
		{"desert_uses:desert_cobble", "default:stick"},
		{"", "default:stick"},
	}
})

-- Desert stone axe (flipped recipe)
minetest.register_craft({
	output = "desert_uses:axe_desert_stone",
	recipe = {
		{"desert_uses:desert_cobble", "desert_uses:desert_cobble"},
		{"default:stick", "desert_uses:desert_cobble"},
		{"default:stick", ""},
	}
})

-- Desert stone sword
minetest.register_craft({
	output = "desert_uses:sword_desert_stone",
	recipe = {
		{"desert_uses:desert_cobble"},
		{"desert_uses:desert_cobble"},
		{"default:stick"},
	}
})

-- Stick from dry shrub
minetest.register_craft({
	output = "default:stick 4",
	recipe = {
		{"default:dry_shrub"},
	}
})

-- Desert Cobble -> Desert Stone
minetest.register_craft({
	type = "cooking",
	output = "default:desert_stone",
	recipe = "desert_uses:desert_cobble",
})

-- Furnace
minetest.register_craft({
	output = "default:furnace",
	recipe = {
		{"desert_uses:desert_cobble", "desert_uses:desert_cobble", "desert_uses:desert_cobble"},
		{"desert_uses:desert_cobble", "", "desert_uses:desert_cobble"},
		{"desert_uses:desert_cobble", "desert_uses:desert_cobble", "desert_uses:desert_cobble"},
	}
})
