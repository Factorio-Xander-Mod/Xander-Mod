
--Base Overrides

--Base "assembling-machine-1"
data.raw.recipe["assembling-machine-1"].category = "crafting"
data.raw.recipe["assembling-machine-1"].energy_required = 2
data.raw.recipe["assembling-machine-1"].ingredients = {{"inserter", 2}, {"mechanism-1", 4}, {"control-1", 1}, {"forging-steel", 2}}

--Base "assembling-machine-2"
data.raw.recipe["assembling-machine-2"].category = "crafting"
data.raw.recipe["assembling-machine-2"].normal =
{
	enabled = false,
	energy_required = 5,
	ingredients = {{"assembling-machine-1", 1}, {"fast-inserter", 2}, {"tooling-1", 1}, {"forging-steel", 4}, {"control-1", 1}},
	result = "assembling-machine-2",
	requester_paste_multiplier = 4
}
data.raw.recipe["assembling-machine-2"].expensive =
{
	enabled = false,
	energy_required = 10,
	ingredients = {{"assembling-machine-1", 1}, {"fast-inserter", 4}, {"tooling-1", 2}, {"forging-steel", 8}, {"control-1", 2}},
	result = "assembling-machine-2",
	requester_paste_multiplier = 4
}

--Base "assembling-machine-3"
data.raw.recipe["assembling-machine-3"].category = "crafting"
data.raw.recipe["assembling-machine-3"].energy_required = 10
data.raw.recipe["assembling-machine-3"].ingredients = {{"assembling-machine-2", 1}, {"filter-inserter", 4}, {"tooling-2", 2}, {"mechanism-2", 2}, 
	{"motor-2", 2}, {"control-2", 2}}

--Base "lab"
data.raw.recipe["lab"].category = "crafting"
data.raw.recipe["lab"].energy_required = 5
data.raw.recipe["lab"].enabled = false
data.raw.recipe["lab"].ingredients = {{"forging-steel", 5}, {"electric-engine-unit", 2}, {"control-1", 4}, {"transport-belt", 10}, {"mechanism-1", 2}, 
	{"inserter", 4}}


data:extend(
{

--
--MACHINING
--Burner Machine Tool
{
	type = "recipe",
    name = "machine-tool-0",
	category = "basic-crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"mechanism-0", 2}, {"forging-steel", 4}, {"stone-brick", 20}},
	result = "machine-tool-0"
},
--Lathe Mill
{
	type = "recipe",
    name = "machine-tool-1",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"mechanism-1", 5}, {"electric-engine-unit", 1}, {"tooling-1", 1}, {"forging-iron", 5}},
	result = "machine-tool-1"
},
--Universal Machine Tool
{
	type = "recipe",
    name = "machine-tool-2",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"machine-tool-1", 1}, {"control-2", 5}, {"mechanism-2", 5}, {"forging-steel", 10}, {"motor-2", 2}, {"tooling-2", 2}},
	result = "machine-tool-2"
},
--Computer-Numerical Controlled Machine Tool
{
	type = "recipe",
    name = "machine-tool-3",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"machine-tool-2", 1}, {"control-3", 5}, {"mechanism-3", 5}, {"forging-stainless", 10}, {"motor-3", 2}, {"tooling-3", 2}, 
		{"fused-basalt", 40}, {"lasing-2", 1}},
	result = "machine-tool-3"
},
--
--ASSEMBLING
--Burner Assembling Machine (tier 0)
{
	type = "recipe",
    name = "assembling-machine-0",
	category = "basic-crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"burner-inserter", 2}, {"mechanism-0", 2}, {"forging-steel", 4}},
	result = "assembling-machine-0"
},
--Base "assembling-machine-1" placeholder
--Base "assembling-machine-2" placeholder
--Base "assembling-machine-3" placeholder
--Assembling Machine 4
{
	type = "recipe",
    name = "assembling-machine-4",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"assembling-machine-3", 1}, {"stack-filter-inserter", 4}, {"tooling-3", 2}, {"mechanism-3", 2}, {"motor-3", 2}, {"control-3", 5}, {"forging-stainless", 5}, {"lasing-2", 2}},
	result = "assembling-machine-4"
},
--
--LAB, BEACON
--Burner Lab
{
	type = "recipe",
    name = "lab-1",
	category = "basic-crafting",
	energy_required = 2,
	ingredients = {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"mechanism-0", 2}, {"slow-transport-belt", 10}, {"burner-inserter", 4}},
	result = "lab-1"
}
--Base "lab" placeholder
--ROCKET SILO
--Base "rocket-silo" placeholder

})