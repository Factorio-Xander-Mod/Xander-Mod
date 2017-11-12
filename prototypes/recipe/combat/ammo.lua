
--Base Overrides

--Base "firearm-magazine"
data.raw.recipe["firearm-magazine"].category = "crafting"
data.raw.recipe["firearm-magazine"].energy_required = 2
data.raw.recipe["firearm-magazine"].enabled = false
data.raw.recipe["firearm-magazine"].ingredients = {{"bullet-1", 1}, {"casing-1", 1}, {"powder-1", 1}}

--Base "piercing-rounds-magazine"
data.raw.recipe["piercing-rounds-magazine"].category = "crafting"
data.raw.recipe["piercing-rounds-magazine"].energy_required = 5
data.raw.recipe["piercing-rounds-magazine"].ingredients = {{"bullet-2", 1}, {"casing-2", 1}, {"powder-2", 2}}

--Base "uranium-rounds-magazine"
data.raw.recipe["uranium-rounds-magazine"].category = "advanced-crafting"
data.raw.recipe["uranium-rounds-magazine"].energy_required = 10
data.raw.recipe["uranium-rounds-magazine"].ingredients = {{"bullet-3", 1}, {"casing-2", 1}, {"powder-2", 2}, {"forging-aluminum", 1}, {"plastic-bar", 2}}

--Base "shotgun-shell"
data.raw.recipe["shotgun-shell"].category = "crafting"
data.raw.recipe["shotgun-shell"].energy_required = 2
data.raw.recipe["shotgun-shell"].ingredients = {{"bullet-1", 1}, {"casing-1", 1}, {"powder-1", 2}}

--Base "piercing-shotgun-shell"
data.raw.recipe["piercing-shotgun-shell"].category = "advanced-crafting"
data.raw.recipe["piercing-shotgun-shell"].energy_required = 5
data.raw.recipe["piercing-shotgun-shell"].ingredients = {{"bullet-2", 2}, {"casing-2", 2}, {"powder-2", 4}}

--Base "cannon-shell"
data.raw.recipe["cannon-shell"].category = "crafting"
data.raw.recipe["cannon-shell"].energy_required = 10
data.raw.recipe["cannon-shell"].ingredients = {{"bullet-2", 1}, {"casing-2", 1}, {"powder-2", 5}, {"forging-aluminum", 1}, {"plastic-bar", 2}}

--Base "explosive-cannon-shell"
data.raw.recipe["explosive-cannon-shell"].category = "crafting"
data.raw.recipe["explosive-cannon-shell"].energy_required = 10
data.raw.recipe["explosive-cannon-shell"].ingredients = {{"bullet-2", 1}, {"casing-2", 1}, {"powder-2", 5}, {"forging-aluminum", 1}, {"plastic-bar", 2}, 
	{"explosives", 5}}

--Base "uranium-cannon-shell"
data.raw.recipe["uranium-cannon-shell"].category = "crafting"
data.raw.recipe["uranium-cannon-shell"].energy_required = 20
data.raw.recipe["uranium-cannon-shell"].ingredients = {{"bullet-3", 1}, {"casing-2", 1}, {"powder-2", 5}, {"forging-aluminum", 1}, {"plastic-bar", 2}}

--Base "explosive-uranium-cannon-shell"
data.raw.recipe["explosive-uranium-cannon-shell"].category = "crafting"
data.raw.recipe["explosive-uranium-cannon-shell"].energy_required = 10
data.raw.recipe["explosive-uranium-cannon-shell"].ingredients = {{"bullet-3", 1}, {"casing-2", 1}, {"powder-2", 1}, {"forging-aluminum", 1}, 
	{"plastic-bar", 2}, {"explosives", 5}}

--Base "rocket"
data.raw.recipe["rocket"].category = "crafting"
data.raw.recipe["rocket"].energy_required = 4
data.raw.recipe["rocket"].ingredients = {{"electronic-circuit", 4}, {"powder-2", 20}, {"graphite-block", 1}, {"forging-steel", 2}}
data.raw.recipe["rocket"].result_count = 4

--Base "explosive-rocket"
data.raw.recipe["explosive-rocket"].category = "crafting"
data.raw.recipe["explosive-rocket"].energy_required = 2
data.raw.recipe["explosive-rocket"].ingredients = {{"rocket", 1}, {"explosives", 10}, {"forging-steel", 1}}

--Base "atomic-bomb"
data.raw.recipe["atomic-bomb"].category = "advanced-crafting"
data.raw.recipe["atomic-bomb"].energy_required = 50
data.raw.recipe["atomic-bomb"].ingredients = {{"uranium-235", 30}, {"explosives", 50}, {"forging-alloy", 20}, {"tungsten-block", 5}, {"mechanism-3", 5}, 
	{"control-3", 5}, {"battery-3", 5}, {"rocket", 10}}

--Base "flamethrower-ammo"
data.raw.recipe["flamethrower-ammo"].category = "crafting-with-fluid"
data.raw.recipe["flamethrower-ammo"].energy_required = 2
data.raw.recipe["flamethrower-ammo"].ingredients = {{"forging-steel", 5}, {type = "fluid", name = "light-oil", amount = 50}, 
	{type = "fluid", name = "heavy-oil", amount = 50}}


data:extend(
{

--Black Powder Mixing
{
	type = "recipe",
    name = "powder-1",
	category = "basic-machine",
	energy_required = 5,
	enabled = false,
	ingredients = {{"saltpeter", 7}, {"charcoal", 2}, {"sulfur", 1}},
	result = "powder-1",
	result_count = 10
},
--Smokeless Poder Mixing
{
	type = "recipe",
    name = "powder-2",
	category = "machine",
	energy_required = 10,
	enabled = false,
	ingredients = {{"nitrocellulose", 8}, {"explosives", 2}, {"magnesium-oxide", 1}},
	result = "powder-2",
	result_count = 10
},
--Lead Bullets
{
	type = "recipe",
    name = "bullet-1",
	category = "smelting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"lead-plate", 2}},
	result = "bullet-1"
},
--Piercing Bullets
{
	type = "recipe",
    name = "bullet-2",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"lead-plate", 8}, {"copper-plate", 4}, {"forging-steel", 1}},
	result = "bullet-2"
},
--Uranium Bullets
{
	type = "recipe",
    name = "bullet-3",
	category = "advanced-machine",
	energy_required = 10,
	enabled = false,
	ingredients = {{"uranium-238", 2}, {"monel-plate", 10}, {"forging-steel", 2}},
	result = "bullet-3"
},
--Bronze Sheel Casing
{
	type = "recipe",
    name = "casing-1",
	category = "basic-machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"bronze-plate", 2}},
	result = "casing-1"
},
--Brass Shell Casing
{
	type = "recipe",
    name = "casing-2",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"brass-plate", 4}},
	result = "casing-2"
}

})
