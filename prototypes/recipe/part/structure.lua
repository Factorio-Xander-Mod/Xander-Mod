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
	ingredients = {{"raw-iron", 16}, {"graphite-block", 1}, {"calcium-oxide", 2}, {"silicon-ingot", 2}},
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
	ingredients = {{"brass-billet", 2}},
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
}

})