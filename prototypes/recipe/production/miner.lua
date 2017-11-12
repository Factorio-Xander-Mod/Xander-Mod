
--Base Overrides

--Base "offshore-pump"
data.raw.recipe["offshore-pump"].category = "basic-crafting"
data.raw.recipe["offshore-pump"].energy_required = 1
data.raw.recipe["offshore-pump"].enabled = false
data.raw.recipe["offshore-pump"].ingredients = {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"pipe", 5}, {"mechanism-0", 2}}

--Base "burner-mining-drill"
data.raw.recipe["burner-mining-drill"].category = "basic-crafting"
data.raw.recipe["burner-mining-drill"].normal = {energy_required = 2, enabled = false, ingredients = {{"boiler", 1}, {"mechanical-steam-engine", 1}, 
	{"mechanism-0", 1}, {"slow-transport-belt", 4}}, result = "burner-mining-drill"}
data.raw.recipe["burner-mining-drill"].expensive = {energy_required = 4, enabled = false, ingredients = {{"boiler", 2}, {"mechanical-steam-engine", 2}, 
	{"mechanism-0", 2}, {"slow-transport-belt", 10}}, result = "burner-mining-drill"}

--Base "electric-mining-drill"
data.raw.recipe["electric-mining-drill"].category = "crafting"
data.raw.recipe["electric-mining-drill"].enabled = false
data.raw.recipe["electric-mining-drill"].normal = {energy_required = 5, enabled = false, ingredients = {{"mechanism-1", 2}, {"forging-steel", 5}, 
	{"electric-engine-unit", 1}, {"control-1", 1}}, result = "electric-mining-drill"}
data.raw.recipe["electric-mining-drill"].expensive = {energy_required = 5, enabled = false, ingredients = {{"mechanism-1", 4}, {"forging-steel", 10}, 
	{"electric-engine-unit", 2}, {"control-1", 1}}, result = "electric-mining-drill"}

--Base "pumpjack"
data.raw.recipe["pumpjack"].category = "crafting"
data.raw.recipe["pumpjack"].energy_required = 5
data.raw.recipe["pumpjack"].ingredients = {{"forging-steel", 10}, {"mechanism-1", 2}, {"control-1", 1}, {"pipe-steel", 20}, {"electric-engine-unit", 1}}


data:extend(
{

--
--MINING DRILL
--Base "offshore-pump" placeholder
--XM Offshore Pump with Improved Parts
{
	type = "recipe",
    name = "offshore-pump-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"electric-engine-unit", 10}, {"forging-steel", 10}, {"pipe-copper", 20}, {"mechanism-1", 10}},
	result = "offshore-pump-1"
},
--Logging Camp
{
	type = "recipe",
    name = "logging-camp",
	category = "basic-crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"mechanism-0", 2}, {"forging-steel", 4}, {"stone-brick", 20}},
	result = "logging-camp"
},
--Base "burner-mining-drill" placeholder
--Base "electric-mining-drill" placeholder
--Electric Shovel Excavator
{
	type = "recipe",
    name = "mining-drill-3",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"electric-mining-drill", 5}, {"forging-alloy", 25}, {"motor-2", 5}, {"mechanism-2", 10}, {"control-2", 5}, {"fast-transport-belt", 20}, 
		{"tungsten-cermet", 100}},
	result = "mining-drill-3"
},
--Bucket Wheel Excavator
{
	type = "recipe",
    name = "mining-drill-4",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"mining-drill-3", 4}, {"forging-stainless", 100}, {"motor-3", 20}, {"mechanism-3", 40}, {"control-3", 20}, 
		{"expedited-transport-belt", 80}, {"nitride-block", 400}, {"transformer-3", 20}},
	result = "mining-drill-4"
},
--
--PUMPJACK
--Base "pumpjack" placeholder
--High-Pressure Pumpjack
{
	type = "recipe",
    name = "pumpjack-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"pumpjack", 1}, {"forging-titanium", 10}, {"mechanism-3", 4}, {"control-2", 2}, {"pipe-stainless", 50}, {"motor-3", 2}, 
		{"tungsten-cermet", 10}},
	result = "pumpjack-2"
},
--
--ORE PROCESSOR
--Burner Ore Sluice
{
	type = "recipe",
    name = "ore-processor-0",
	category = "basic-crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"machine-tool-0", 1}, {"pipe-copper", 10}, {"forging-steel", 4}},
	result = "ore-processor-0"
},
--Ore Sluice
{
	type = "recipe",
    name = "ore-processor-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"machine-tool-1", 1}, {"pipe-copper", 10}, {"pump", 1}, {"forging-steel", 5}},
	result = "ore-processor-1"
},
--Ore Plant
{
	type = "recipe",
    name = "ore-processor-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"ore-processor-1", 2}, {"control-2", 2}, {"forging-stainless", 10}, {"forging-alloy", 5}, {"coil-2", 10}, {"pump-2", 2}},
	result = "ore-processor-2"
}

})