local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},  --  NodeBox1
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},  --  NodeBox2
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},  --  NodeBox3
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},  --  NodeBox4
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},  --  NodeBox5
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},  --  NodeBox6
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},  --  NodeBox7
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},  --  NodeBox8
	}
}

local icorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5}, -- NodeBox6
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5}, -- NodeBox7
		{-0.5, 0, -0.5, 0, 0.25, 0.5}, -- NodeBox8
		{-0.5, 0, 0, 0.5, 0.25, 0.5}, -- NodeBox9
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5}, -- NodeBox10
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5}, -- NodeBox11
	}
}

local ocorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5,   0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25,  0.25,     0, 0.5},
		{-0.5,     0,     0,     0,  0.25, 0.5},
		{-0.5,  0.25,  0.25, -0.25,   0.5, 0.5}
	}
}
local wood_slopes = {   --Material , Description , Image , Item
	{ "wood" , "Wood" , "default:wood"},
	{ "pinewood" , "Pinewood" , "default:pinewood"},	
	{ "junglewood" , "Junglewood" , "default:junglewood"},
}

for i in ipairs(wood_slopes) do
	local mat = wood_slopes[i][1]
	local desc = wood_slopes[i][2]
	local item = wood_slopes[i][3]

--slope
minetest.register_node("mywoodslopes:"..mat.."_slope", {
	description = desc.." Slope",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--long slope
minetest.register_node("mywoodslopes:"..mat.."_slope_long", {
	description = desc.." Slope Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--icorner
minetest.register_node("mywoodslopes:"..mat.."_icorner", {
	description = desc.." Slope Inside Corner",
	drawtype = "mesh",
	mesh = "slope_test_icorner.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh_icorner.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
minetest.register_node("mywoodslopes:"..mat.."_ocorner", {
	description = desc.." Slope Outside Corner",
	drawtype = "mesh",
	mesh = "slope_test_ocorner.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh_ocorner.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})

--rotated---------------------------------------------------------------
--slope
minetest.register_node("mywoodslopes:"..mat.."_slope_r", {
	description = desc.." Slope Rotated",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh.png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})

--long slope
minetest.register_node("mywoodslopes:"..mat.."_slope_long_r", {
	description = desc.." Slope Long Rotated",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh.png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--icorner
minetest.register_node("mywoodslopes:"..mat.."_icorner_r", {
	description = desc.." Slope Inside Corner Rotate",
	drawtype = "mesh",
	mesh = "slope_test_icorner.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh_icorner.png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--ocorner
minetest.register_node("mywoodslopes:"..mat.."_ocorner_r", {
	description = desc.." Slope Outside Corner Rotated",
	drawtype = "mesh",
	mesh = "slope_test_ocorner.obj",
	tiles = {"mywoodslopes_"..mat.."_mesh_ocorner.png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})
--Crafts--------------------------------------------------------

--slope
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_slope 3",
	recipe = {
		{"", "",""},
		{item, "",""},
		{item, item,""},
	}
})
--slope long
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_slope_long 3",
	recipe = {
		{"", "",""},
		{item, "",""},
		{item, item,item},
	}
})
--slope icorner
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_icorner 3",
	recipe = {
		{"", "",""},
		{"", item,""},
		{item,"", item},
	}
})
--slope ocorner
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_ocorner 3",
	recipe = {
		{"", "",""},
		{item, "",item},
		{"", item,""},
	}
})

--rotated-----------------------------------------------
--slope
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_slope_r 3",
	recipe = {
		{"", "",""},
		{"", "mywoodslopes:"..mat.."_slope",""},
		{"", "",""},
	}
})
--slope long
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_slope_long_r 3",
	recipe = {
		{"", "",""},
		{"", "mywoodslopes:"..mat.."_slope_long",""},
		{"", "",""},
	}
})
--slope icorner
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_icorner_r 3",
	recipe = {
		{"", "",""},
		{"", "mywoodslopes:"..mat.."_icorner",""},
		{"", "",""},
	}
})
--slope ocorner
minetest.register_craft({
	output = "mywoodslopes:"..mat.."_ocorner_r 3",
	recipe = {
		{"", "",""},
		{"", "mywoodslopes:"..mat.."_ocorner",""},
		{"", "",""},
	}
})
end






