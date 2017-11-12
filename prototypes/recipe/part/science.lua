
--Base Overrides

--Base "science-pack-1"
data.raw.recipe["science-pack-1"].enabled = false
data.raw.recipe["science-pack-1"].ingredients = {{"coil-1", 1}, {"iron-gear-wheel", 2}}

--Base "science-pack-2"
data.raw.recipe["science-pack-2"].enabled = false
data.raw.recipe["science-pack-2"].energy_required = 10
data.raw.recipe["science-pack-2"].ingredients = {{"inserter", 1}, {"transport-belt", 2}}

--Base "science-pack-3"
data.raw.recipe["science-pack-3"].energy_required = 15
data.raw.recipe["science-pack-3"].ingredients = {{"advanced-circuit", 4}, {"transformer-1", 1}, {"engine-unit", 1}, {"electric-mining-drill", 1}}

--Base "military-science-pack"
data.raw.recipe["military-science-pack"].ingredients = {{"piercing-rounds-magazine", 1}, {"grenade", 1}, {"gun-turret", 1}, {"stone-wall", 2}}

--Base "production-science-pack"
data.raw.recipe["production-science-pack"].energy_required = 20
data.raw.recipe["production-science-pack"].ingredients = {{"reactor-1", 1}, {"pump-2", 1}, {"furnace-4", 1}, {"assembling-machine-2", 1}}

--Base "high-tech-science-pack"
data.raw.recipe["high-tech-science-pack"].energy_required = 20
data.raw.recipe["high-tech-science-pack"].ingredients = {{"cell-2", 2}, {"control-3", 1}, {"speed-module", 2}, {"crystal-quartz", 2}, 
	{"mechanism-2", 1}}

data:extend(
{

--Science Pack 0
{
	type = "recipe",
	name = "science-pack-0",
	category = "basic-crafting",
	energy_required = 2,
	ingredients = {{"blank-1", 1}, {"copper-cable", 2}},
	result = "science-pack-0"
}

})
