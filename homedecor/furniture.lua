local S = homedecor.gettext

-- 3dforniture tables ... well, they used to be :P

local table_colors = { "", "mahogany", "white" }

for _, i in ipairs(table_colors) do
	local color = "_"..i
	local desc = S("Table ("..i..")")

	if i == "" then
		color = ""
		desc = S("Table")
	end

	minetest.register_node("homedecor:table"..color, {
		description = desc,
		tiles = { "forniture_wood"..color..".png" },
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		node_box = {
		    type = "fixed",
		    fixed = {
		        { -0.4, -0.5, -0.4, -0.3,  0.4, -0.3 },
		        {  0.3, -0.5, -0.4,  0.4,  0.4, -0.3 },
		        { -0.4, -0.5,  0.3, -0.3,  0.4,  0.4 },
		        {  0.3, -0.5,  0.3,  0.4,  0.4,  0.4 },
		        { -0.5,  0.4, -0.5,  0.5,  0.5,  0.5 },
		        { -0.4, -0.2, -0.3, -0.3, -0.1,  0.3 },
		        {  0.3, -0.2, -0.4,  0.4, -0.1,  0.3 },
		        { -0.3, -0.2, -0.4,  0.4, -0.1, -0.3 },
		        { -0.3, -0.2,  0.3,  0.3, -0.1,  0.4 },
		    },
		},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	})  
end

local chaircolors = {
	{ "", "plain" },
	{ "black", "Black" },
	{ "red", "Red" },
	{ "pink", "Pink" },
	{ "violet", "Violet" },
	{ "blue", "Blue" },
	{ "dark_green", "Dark Green" },
}

for i in ipairs(chaircolors) do

	local color = "_"..chaircolors[i][1]
	local color2 = chaircolors[i][1]
	local name = S(chaircolors[i][2])

	if chaircolors[i][1] == "" then 
		color = ""
	end

	minetest.register_node("homedecor:chair"..color, {
	    description = S("Kitchen chair (%s)"):format(name),
		tiles = { 
			"forniture_kitchen_chair_top"..color..".png",
			"forniture_wood.png",
			"forniture_kitchen_chair_sides"..color..".png",
			"forniture_kitchen_chair_sides"..color..".png^[transformFX",
			"forniture_kitchen_chair_back"..color..".png",
			"forniture_kitchen_chair_front"..color..".png",
		 },
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		node_box = {
		    type = "fixed",
		    fixed = {
				{-0.3125, -0.5, 0.1875, -0.1875, 0.5, 0.3125},
				{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
				{-0.3125, -0.5, -0.3125, -0.1875, 0, -0.1875},
				{0.1875, -0.5, -0.3125, 0.3125, 0, -0.1875},
				{-0.3125, -0.125, -0.3125, 0.3125, 0, 0.3125},
				{-0.25, 0.0625, 0.25, 0.25, 0.4375, 0.25},
		    },
		},
		selection_box = {
		    type = "fixed",
		    fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
		},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	})

	if color ~= "" then 
		minetest.register_node("homedecor:armchair"..color, {
			description = S("Armchair (%s)"):format(name),
			tiles = { "forniture_armchair_top"..color..".png" },
			drawtype = "nodebox",
			sunlight_propagates = true,
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
			type = "fixed",
			fixed = {
				{ -0.50, -0.50, -0.45, -0.30,  0.05,  0.30 },
				{ -0.45, -0.50, -0.50, -0.35,  0.05, -0.45 },
				{ -0.45,  0.05, -0.45, -0.35,  0.10,  0.15 },
				{  0.30, -0.50, -0.45,  0.50,  0.05,  0.30 },
				{  0.35, -0.50, -0.50,  0.45,  0.05, -0.45 },
				{  0.35,  0.05, -0.45,  0.45,  0.10,  0.15 },
				{ -0.50, -0.50,  0.30,  0.50,  0.45,  0.50 },
				{ -0.45,  0.45,  0.35,  0.45,  0.50,  0.45 },
				{ -0.30, -0.45, -0.35,  0.30, -0.10,  0.30 },
				{ -0.30, -0.45, -0.40,  0.30, -0.15, -0.35 },
				{ -0.50,  0.05,  0.15, -0.30,  0.45,  0.30 },
				{ -0.45,  0.10,  0.10, -0.35,  0.45,  0.15 },
				{ -0.45,  0.45,  0.15, -0.35,  0.50,  0.35 },
				{  0.30,  0.05,  0.15,  0.50,  0.45,  0.30 },
				{  0.35,  0.10,  0.10,  0.45,  0.45,  0.15 },
				{  0.35,  0.45,  0.15,  0.45,  0.50,  0.35 },
			},
			},
			groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
		})

		minetest.register_craft({
			output = "homedecor:armchair"..color.." 2",
			recipe = {
			{ "wool:"..color2,""},
			{ "group:wood","group:wood" },
			{ "wool:"..color2,"wool:"..color2 },
			},
		})
	end
end

local repl = { off="low", low="med", med="hi", hi="max", max="off", }
local lamp_colors = { "", "blue", "green", "pink", "red", "violet" }

local function reg_lamp(suffix, nxt, desc, tilesuffix, light, color)
	local lampcolor = "_"..color
	if color == "" then	lampcolor = "" end
	minetest.register_node("homedecor:table_lamp"..lampcolor.."_"..suffix, {
	description = S(desc),
	drawtype = "nodebox",
	tiles = {
		"forniture_table_lamp_s"..tilesuffix..".png",
		"forniture_table_lamp_s"..tilesuffix..".png",
		"forniture_table_lamp"..lampcolor.."_l"..tilesuffix..".png",
	},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{ -0.1500, -0.500, -0.1500,  0.1500, -0.45,  0.1500 },
			{ -0.0500, -0.450, -0.0500,  0.0500, -0.40,  0.0500 },
			{ -0.0250, -0.400, -0.0250,  0.0250, -0.10,  0.0250 },
			{ -0.0125, -0.125, -0.2000,  0.0125, -0.10,  0.2000 },
			{ -0.2000, -0.125, -0.0125,  0.2000, -0.10,  0.0125 },
			{ -0.2000, -0.100, -0.2000, -0.1750,  0.30,  0.2000 },
			{  0.1750, -0.100, -0.2000,  0.2000,  0.30,  0.2000 },
			{ -0.1750, -0.100, -0.2000,  0.1750,  0.30, -0.1750 },
			{ -0.1750, -0.100,  0.1750,  0.1750,  0.30,  0.2000 },
		},
	},
	walkable = false,
	light_source = light,
	selection_box = {
		type = "fixed",
		fixed = { -0.2, -0.5, -0.2, 0.2, 0.30, 0.2 },
	},
	groups = {cracky=2,oddly_breakable_by_hand=1,
		not_in_creative_inventory=((desc == nil) and 1) or nil,
	},
	drop = "homedecor:table_lamp"..lampcolor.."_off",
	on_punch = function(pos, node, puncher)
		node.name = "homedecor:table_lamp"..lampcolor.."_"..repl[suffix]
		minetest.set_node(pos, node)
		nodeupdate(pos)
	end,
	})
	if lampcolor == "" then 
		minetest.register_alias("3dforniture:table_lamp_"..suffix, "homedecor:table_lamp_"..suffix)
	end
end

for _, color in ipairs(lamp_colors) do
	reg_lamp("off", "low", "Table Lamp",  "", nil,	color )
	reg_lamp("low", "med", nil,          "l", 3,	color )
	reg_lamp("med", "hi" , nil,          "m", 7,	color )
	reg_lamp("hi" , "max", nil,          "h", 11,	color )
	reg_lamp("max", "off", nil,          "x", 14,	color )
end

minetest.register_node(":homedecor:openframe_bookshelf", {
	description = "Bookshelf (open-frame)",
	drawtype = "nodebox",
	is_ground_content = false,
	groups = {choppy=3,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
	tiles = {
		"3dbookshelf_openframe_top.png",
		"3dbookshelf_openframe_bottom.png",
		"3dbookshelf_openframe_right.png",
		"3dbookshelf_openframe_left.png",
		"3dbookshelf_openframe_back.png",
		"3dbookshelf_openframe_front.png"

	},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, 0, 0.5, 0.5, 0.5 }
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, 0, -0.375, 0.5, 0.5},
			{0.375, -0.5, 0, 0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, -0.4375, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			{-0.375, 0.0625, 0.176, -0.25, 0.5, 0.5},
			{-0.25, 0.0625, 0.253, -0.1875, 0.4375, 0.5},
			{-0.1875, 0.0625, 0.227, -0.125, 0.5, 0.5},
			{-0.125, 0.0625, 0.176, 0, 0.4375, 0.5},
			{0, 0.0625, 0.232, 0.0625, 0.375, 0.5},
			{0.0625, 0.0625, 0.130, 0.1875, 0.5, 0.5},
			{0.1875, 0.0625, 0.217, 0.25, 0.4375, 0.5},
			{0.25, 0.0625, 0.166, 0.3125, 0.5, 0.5},
			{0.3125, 0.0625, 0.242, 0.375, 0.4375, 0.5},
			{-0.375, -0.4375, 0.191, -0.3125, -0.0625, 0.5},
			{-0.3125, -0.4375, 0.191, -0.1875, -0.125, 0.5},
			{-0.1875, -0.4375, 0.227, -0.125, -0.0625, 0.5},
			{-0.125, -0.4375, 0.0737, 0, -0.0625, 0.5},
			{0, -0.4375, 0.145, 0.0625, -0.125, 0.5},
			{0.0625, -0.4375, 0.212, 0.125, -0.1875, 0.5},
			{0.125, -0.4375, 0.207, 0.1875, -0.125, 0.5},
			{0.1875, -0.4375, 0.176, 0.25, -0.125, 0.5},
			{0.25, -0.4375, 0.258, 0.3125, -0.1875, 0.5},
			{0.3125, -0.4375, 0.130, 0.375, -0.0625, 0.5}
		}
	}
})

-- Aliases for 3dforniture mod.
minetest.register_alias("3dforniture:table", "homedecor:table")
minetest.register_alias("3dforniture:chair", "homedecor:chair")
minetest.register_alias("3dforniture:armchair", "homedecor:armchair_black")
minetest.register_alias("homedecor:armchair", "homedecor:armchair_black")

minetest.register_alias('table', 'homedecor:table')
minetest.register_alias('chair', 'homedecor:chair')
minetest.register_alias('armchair', 'homedecor:armchair')
