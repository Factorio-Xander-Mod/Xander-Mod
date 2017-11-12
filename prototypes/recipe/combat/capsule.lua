
--Base Overrides

--Base "grenade"
data.raw.recipe["grenade"].category = "crafting"
data.raw.recipe["grenade"].energy_required = 2
data.raw.recipe["grenade"].ingredients = {{"forging-iron", 1}, {"powder-1", 10}}

--Base "cluster-grenade"
data.raw.recipe["cluster-grenade"].category = "advanced-crafting"
data.raw.recipe["cluster-grenade"].energy_required = 10
data.raw.recipe["cluster-grenade"].ingredients = {{"grenade", 7}, {"explosives", 15}, {"tungsten-block", 5}}

--Base "poison-capsule"
data.raw.recipe["poison-capsule"].category = "crafting"
data.raw.recipe["poison-capsule"].energy_required = 2
data.raw.recipe["poison-capsule"].ingredients = {{"forging-steel", 4}, {"electronic-circuit", 4}, {"borax", 1}, {"glass", 10}}

--Base "slowdown-capsule"
data.raw.recipe["slowdown-capsule"].category = "crafting-with-fluid"
data.raw.recipe["slowdown-capsule"].energy_required = 2
data.raw.recipe["slowdown-capsule"].ingredients = {{"forging-steel", 2}, {"electronic-circuit", 4}, {type = "fluid", name = "crude-oil", amount = 50}, 
	{"glass", 10}}

--Base "defender-capsule"
data.raw.recipe["defender-capsule"].category = "crafting"
data.raw.recipe["defender-capsule"].energy_required = 10
data.raw.recipe["defender-capsule"].ingredients = {{"piercing-rounds-magazine", 2}, {"electronic-circuit", 2}, {"mechanism-1", 1}}

--Base "distractor-capsule"
data.raw.recipe["distractor-capsule"].category = "crafting"
data.raw.recipe["distractor-capsule"].energy_required = 20
data.raw.recipe["distractor-capsule"].ingredients = {{"defender-capsule", 4}, {"control-2", 1}, {"mechanism-2", 1}}

--Base "destroyer-capsule"
data.raw.recipe["destroyer-capsule"].category = "advanced-crafting"
data.raw.recipe["destroyer-capsule"].energy_required = 20
data.raw.recipe["destroyer-capsule"].ingredients = {{"distractor-capsule", 5}, {"control-3", 1}, {"mechanism-3", 1}, {"speed-module", 1}}

--Base "discharge-defense-remote"
data.raw.recipe["discharge-defense-remote"].category = "crafting"
data.raw.recipe["discharge-defense-remote"].energy_required = 1
data.raw.recipe["discharge-defense-remote"].ingredients = {{"advanced-circuit", 1}}


data:extend(
{

--Explosives-Based Grenade
{
	type = "recipe",
    name = "grenade-b",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"forging-iron", 1}, {"explosives", 4}},
	result = "grenade",
	result_count = 2
},
--Basic First Aid
{
	type = "recipe",
    name = "first-aid-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"cotton", 2}, {"phenol", 2}},
	result = "first-aid-1"
},
--Intravenous Medicine
{
	type = "recipe",
    name = "first-aid-2",
	category = "crafting-with-fluid",
	energy_required = 10,
	enabled = false,
	ingredients = {{"first-aid-1", 2}, {"glass", 2}, {"forging-stainless", 1}, {"synthetic-drugs", 1}, {type = "fluid", name = "water", amount = 10}},
	result = "first-aid-2"
}

})
