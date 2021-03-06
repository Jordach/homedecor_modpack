minetest.register_node("homedecor:analog_clock_plastic", {
	description = "Analog clock (plastic)",
	drawtype = "nodebox",
	tiles = {
		"homedecor_analog_clock_plastic_edges.png",
		"homedecor_analog_clock_plastic_edges.png",
		"homedecor_analog_clock_plastic_edges.png",
		"homedecor_analog_clock_plastic_edges.png",
		"homedecor_analog_clock_plastic_back.png",
		"homedecor_analog_clock_plastic_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/32, -3/32, 15/32, 8/32, 3/32, 16/32 },
			{ -7/32, -5/32, 15/32, 7/32, 5/32, 16/32 },
			{ -6/32, -6/32, 15/32, 6/32, 6/32, 16/32 },
			{ -5/32, -7/32, 15/32, 5/32, 7/32, 16/32 },
			{ -3/32, -8/32, 15/32, 3/32, 8/32, 16/32 }
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -8/32, -8/32, 15/32, 8/32, 8/32, 16/32 }
	},
	groups = {snappy=3},
})

minetest.register_node("homedecor:analog_clock_wood", {
	description = "Analog clock (wood)",
	drawtype = "nodebox",
	tiles = {
		"homedecor_analog_clock_wood_edges.png",
		"homedecor_analog_clock_wood_edges.png",
		"homedecor_analog_clock_wood_edges.png",
		"homedecor_analog_clock_wood_edges.png",
		"homedecor_analog_clock_wood_back.png",
		"homedecor_analog_clock_wood_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/32, -3/32, 15/32, 8/32, 3/32, 16/32 },
			{ -7/32, -5/32, 15/32, 7/32, 5/32, 16/32 },
			{ -6/32, -6/32, 15/32, 6/32, 6/32, 16/32 },
			{ -5/32, -7/32, 15/32, 5/32, 7/32, 16/32 },
			{ -3/32, -8/32, 15/32, 3/32, 8/32, 16/32 }
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -8/32, -8/32, 15/32, 8/32, 8/32, 16/32 }
	},
	groups = {snappy=3},
})

minetest.register_node("homedecor:digital_clock", {
	description = "Digital clock",
	drawtype = "nodebox",
	tiles = {
		"homedecor_digital_clock_edges.png",
		"homedecor_digital_clock_edges.png",
		"homedecor_digital_clock_edges.png",
		"homedecor_digital_clock_edges.png",
		"homedecor_digital_clock_back.png",
		"homedecor_digital_clock_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.28125, -0.25, 0.4375, 0.3125, 0.25, 0.5},
		}
	},
	groups = {snappy=3},
})

minetest.register_node("homedecor:alarm_clock", {
	description = "Alarm clock",
	drawtype = "nodebox",
	tiles = {
		"homedecor_alarm_clock_top.png",
		"homedecor_alarm_clock_bottom.png",
		"homedecor_alarm_clock_sides.png",
		"homedecor_alarm_clock_sides.png^[transformFX",
		"homedecor_alarm_clock_back.png",
		"homedecor_alarm_clock_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{ -9/32, -16/32, 7/32, 10/32, -5/32, 16/32 },
		}
	},
	groups = {snappy=3},
})
