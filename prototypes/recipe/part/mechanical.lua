
--Base Overrides

--Base "iron-gear-wheel"
data.raw.recipe["iron-gear-wheel"].category = "basic-machine"
data.raw.recipe["iron-gear-wheel"].normal = {energy_required = 5, ingredients = {{"blank-1", 1}}, result = "iron-gear-wheel"}
data.raw.recipe["iron-gear-wheel"].expensive = {energy_required = 5, ingredients = {{"blank-1", 2}}, result = "iron-gear-wheel"}

--Base "iron-stick"
data.raw.recipe["iron-stick"].category = "basic-machine"
data.raw.recipe["iron-stick"].energy_required = 2
data.raw.recipe["iron-stick"].ingredients = {{"iron-plate", 2}}
data.raw.recipe["iron-stick"].result_count = 1


data:extend(
{

--
--STRUCTURAL
--
--FORGINGS
--Crude Iron Casting, Plain (A)
{
	type = "recipe",
    name = "forging-iron-a",
	category = "smelting",
	energy_required = 16,
	ingredients = {{"iron-ore", 4}},
	result = "forging-iron"
},
--Crude Iron Casting, Fluxed (B)
{
	type = "recipe",
    name = "forging-iron-b",
	category = "smelting",
	energy_required = 32,
	enabled = false,
	ingredients = {{"iron-ore", 4}, {"limestone", 1}},
	result = "forging-iron",
	result_count = 2
},
--Iron Casting from Raw Iron (C)
{
	type = "recipe",
    name = "forging-iron-c",
	icon = "__xander-mod__/graphics/recipe/alloy/forging-iron-c.png",
	icon_size = 32,
	category = "forge",
	energy_required = 64,
	enabled = false,
	ingredients = {{"raw-iron", 16}, {"graphite-block", 1}, {"calcium-oxide", 2}, {"metallurgical-plate", 2}},
	results = {{"forging-iron", 4}, {"slag", 2}},
	subgroup = "structure"
},
--Crude Steel Forging (A)
{
	type = "recipe",
    name = "forging-steel-a",
	category = "smelting",
	energy_required = 8,
	enabled = false,
	ingredients = {{"steel-plate", 4}},
	result = "forging-steel"
},
--Steel Forging from Raw Iron (B)
{
	type = "recipe",
    name = "forging-steel-b",
	icon = "__xander-mod__/graphics/recipe/alloy/forging-steel-b.png",
	icon_size = 32,
	category = "forge",
	energy_required = 64,
	enabled = false,
	ingredients = {{"raw-iron", 16}, {"graphite-block", 1}, {"calcium-oxide", 2}, {"zinc-plate", 2}, {type = "fluid", name = "oxygen", amount = 40}},
	results = {{"forging-steel", 4}, {type = "fluid", name = "flue-gas", amount = 40}, {"slag", 2}},
	subgroup = "structure"
},
--Alloy Steel Forging A
{
	type = "recipe",
    name = "forging-alloy-a",
	icon = "__xander-mod__/graphics/recipe/alloy/forging-alloy-a.png",
	icon_size = 32,
	category = "forge",
	energy_required = 32,
	enabled = false,
	ingredients = {{"forging-steel", 4}, {"nickel-plate", 4}, {"tungsten-powder", 8}, {"graphite-powder", 2}},
	results = {{"forging-alloy", 4}, {"zinc-oxide", 1}},
	subgroup = "structure"
},
--Alloy Steel Forging B
{
	type = "recipe",
    name = "forging-alloy-b",
	icon = "__xander-mod__/graphics/recipe/alloy/forging-alloy-b.png",
	icon_size = 32,
	category = "forge",
	energy_required = 64,
	enabled = false,
	ingredients = {{"forging-steel", 4}, {"chromium-plate", 2}, {"vanadium-plate", 2}, {"cobalt-plate", 2}, {"graphite-powder", 2}},
	results = {{"forging-alloy", 4}, {"zinc-oxide", 1}},
	subgroup = "structure"
},
--Stainless Steel Forging
{
	type = "recipe",
    name = "forging-stainless",
	icon = "__xander-mod__/graphics/recipe/alloy/forging-stainless.png",
	icon_size = 32,
	category = "forge",
	energy_required = 32,
	enabled = false,
	ingredients = {{"forging-steel", 4}, {"chromium-plate", 4}, {"nickel-plate", 2}},
	results = {{"forging-stainless", 4}, {"zinc-oxide", 1}},
	subgroup = "structure"
},				
--Duralumin Casting
{
	type = "recipe",
    name = "forging-aluminum",
	category = "forge",
	energy_required = 8,
	enabled = false,
	ingredients = {{"aluminum-plate", 8}, {"copper-plate", 1}, {"magnesium-plate", 1}, {"zinc-plate", 1}},
	result = "forging-aluminum",
	result_count = 2
},	
--Superalloy Forging
{
	type = "recipe",
    name = "forging-superalloy",
	category = "forge",
	energy_required = 16,
	enabled = false,
	ingredients = {{"nickel-plate", 8}, {"titanium-plate", 1}, {"aluminum-plate", 1}, {"cobalt-plate", 1}, {"chromium-plate", 1}},
	result = "forging-superalloy",
	result_count = 2
},
--Titanium Alloy  Forging
{
	type = "recipe",
    name = "forging-titanium",
	category = "forge",
	energy_required = 16,
	enabled = false,
	ingredients = {{"titanium-plate", 8}, {"aluminum-plate", 1}, {"vanadium-plate", 1}, {"tin-plate", 1}},
	result = "forging-titanium",
	result_count = 2
},
--
--MISCELLANEOUS STRUCTURAL
--Glass Fiber
{
	type = "recipe",
    name = "fiber-glass",
	category = "forge",
	energy_required = 2,
	enabled = false,
	ingredients = {{"glass", 1}},
	result = "fiber-glass"
},
--Plastic Fiber
{
	type = "recipe",
    name = "fiber-plastic",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"plastic-pellets", 1}},
	result = "fiber-plastic"
},
--Carbon Fiber
{
	type = "recipe",
    name = "fiber-carbon",
	category = "forge",
	energy_required = 2,
	enabled = false,
	ingredients = {{"fiber-plastic", 1}},
	result = "fiber-carbon"
},
--XM Plastic Bar from Plastic Pellets
{
	type = "recipe",
    name = "xm-plastic-bar",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"plastic-pellets", 1}},
	result = "plastic-bar"
},
--Tungsten Carbide Cermet with Cobalt
{
	type = "recipe",
    name = "tungsten-cermet",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"tungsten-carbide", 2}, {"cobalt-plate", 1}},
	result = "tungsten-cermet"
},
--Silicon Nitride Block
{
	type = "recipe",
    name = "nitride-block",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"silicon-nitride", 1}},
	result = "nitride-block"
},
--
--GEAR BLANKS
--Crude Iron Gear Blank
{
	type = "recipe",
    name = "blank-1-a",
	category = "smelting",
	energy_required = 4,
	ingredients = {{"forging-iron", 1}},
	result = "blank-1",
	result_count = 2
},
--Iron Gear Blank B
{
	type = "recipe",
    name = "blank-1-b",
	category = "forge",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-iron", 1}},
	result = "blank-1",
	result_count = 2
},
--Brass Gear Blank
{
	type = "recipe",
    name = "blank-2",
	category = "forge",
	energy_required = 2,
	enabled = false,
	ingredients = {{"brass-plate", 2}},
	result = "blank-2"
},
--Steel Blank A
{
	type = "recipe",
    name = "blank-3-a",
	category = "smelting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"steel-plate", 2}},
	result = "blank-3"
},
--Steel Gear Blank B
{
	type = "recipe",
    name = "blank-3-b",
	icon = "__xander-mod__/graphics/recipe/mechanical/blank-3-b.png",
	icon_size = 32,
	category = "forge",
	energy_required = 16,
	enabled = false,
	ingredients = {{"forging-steel", 4}},
	results = {{"blank-3", 8}, {"zinc-oxide", 1}},
	subgroup = "structure"
},
--Alloy Steel Gear Blank
{
	type = "recipe",
    name = "blank-4",
	category = "forge",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-alloy", 1}},
	result = "blank-4",
	result_count = 2
},


--
--PROPER MECHANICAL
--
--GEARS
--Base "iron-gear-wheel" placeholder
--Brass Gear
{
	type = "recipe",
    name = "gear-2",
	category = "machine",
	energy_required = 10,
	enabled = false,
	ingredients = {{"blank-2", 1}},
	result = "gear-2"
},
--Steel Gear
{
	type = "recipe",
    name = "gear-3",
	category = "machine",
	energy_required = 10,
	enabled = false,
	ingredients = {{"blank-3", 1}},
	result = "gear-3"
},
--Alloy Steel Gear
{
	type = "recipe",
    name = "gear-4",
	category = "machine",
	energy_required = 10,
	enabled = false,
	ingredients = {{"blank-4", 1}},
	result = "gear-4"
},
--
--BEARINGS
--Bronze Bearing
{
	type = "recipe",
    name = "bearing-1",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"bronze-plate", 1}, {"graphite-powder", 1}},
	result = "bearing-1",
	result_count = 2
},	
--Alloy Steel Bearing
{
	type = "recipe",
    name = "bearing-2",
	category = "machine",
	energy_required = 8,
	enabled = false,
	ingredients = {{"forging-alloy", 1}, {"graphite-powder", 2}, {type = "fluid", name = "lubricant", amount = 10}},
	result = "bearing-2",
	result_count = 4
},
--Silicon Nitride Ceramic Bearing
{
	type = "recipe",
    name = "bearing-3",
	category = "forge",
	energy_required = 8,
	enabled = false,
	ingredients = {{"silicon-nitride", 1}, {"plastic-pellets", 1}, {type = "fluid", name = "lubricant", amount = 10}},
	result = "bearing-3",
	result_count = 2
},
--
--RODS
--Base "iron-stick" placeholder
--Steel Rod
{
	type = "recipe",
    name = "rod-2",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"forging-steel", 1}},
	result = "rod-2",
	result_count = 2
},
--Alloy Steel Rod
{
	type = "recipe",
    name = "rod-3",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-alloy", 1}},
	result = "rod-3",
	result_count = 2
},
--Titanium Rod
{
	type = "recipe",
    name = "rod-4",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-titanium", 1}},
	result = "rod-4",
	result_count = 2
},
--
--BORNE SHAFTS
--Iron Shaft
{
	type = "recipe",
    name = "shaft-0",
	category = "basic-machine",
	energy_required = 0.5,
	ingredients = {{"iron-stick", 1}, {"lead-plate", 2}},
	result = "shaft-0"
},
--Steel Shaft
{
	type = "recipe",
    name = "shaft-1",
	category = "machine",
	energy_required = 0.5,
	enabled = false,
	ingredients = {{"rod-2", 1}, {"bearing-1", 2}},
	result = "shaft-1"
},
--Alloy Steel Shaft
{
	type = "recipe",
    name = "shaft-2",
	category = "machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"rod-3", 1}, {"bearing-2", 2}},
	result = "shaft-2"
},
--Titanium Shaft
{
	type = "recipe",
    name = "shaft-3",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"rod-4", 1}, {"bearing-3", 2}},
	result = "shaft-3"
}

})