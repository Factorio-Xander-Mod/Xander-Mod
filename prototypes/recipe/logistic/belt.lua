
--Base Overrides


--Base "transport-belt"
data.raw.recipe["transport-belt"].category = "basic-crafting"
data.raw.recipe["transport-belt"].energy_required = 1
data.raw.recipe["transport-belt"].enabled = false
data.raw.recipe["transport-belt"].ingredients = {{"steel-plate", 2}, {"shaft-1", 1}}
data.raw.recipe["transport-belt"].result_count = 1

--Base "fast-transport-belt"
data.raw.recipe["fast-transport-belt"].category = "crafting"
data.raw.recipe["fast-transport-belt"].energy_required = 2
data.raw.recipe["fast-transport-belt"].ingredients = {{"transport-belt", 1}, {"shaft-1", 2}, {"brass-plate", 4}, {"forging-steel", 1}}

--Base "express-transport-belt"
data.raw.recipe["express-transport-belt"].normal =
{
	enabled = false,
	category = "crafting",
	energy_required = 5,
	ingredients = {{"expedited-transport-belt", 1}, {"shaft-3", 1}, {"fiber-plastic", 4}, {"forging-titanium", 2}},
	result = "express-transport-belt"
}
data.raw.recipe["express-transport-belt"].expensive =
{
	enabled = false,
	category = "crafting",
	energy_required = 5,
	ingredients = {{"expedited-transport-belt", 1}, {"shaft-3", 2}, {"fiber-plastic", 8}, {"forging-titanium", 4}},
	result = "express-transport-belt"
}


--Base "underground-belt"
data.raw.recipe["underground-belt"].category = "basic-crafting"
data.raw.recipe["underground-belt"].energy_required = 1
data.raw.recipe["underground-belt"].ingredients = {{"transport-belt", 6}, {"brick-clay", 12}, {"forging-steel", 2}}

--Base "fast-underground-belt"
data.raw.recipe["fast-underground-belt"].category = "crafting"
data.raw.recipe["fast-underground-belt"].energy_required = 2
data.raw.recipe["fast-underground-belt"].ingredients = {{"underground-belt", 2}, {"fast-transport-belt", 8}, {"concrete", 16}, {"brass-plate", 6}}

--Base "express-underground-belt"
data.raw.recipe["express-underground-belt"].category = "crafting"
data.raw.recipe["express-underground-belt"].energy_required = 6
data.raw.recipe["express-underground-belt"].ingredients = {{"expedited-underground-belt", 2}, {"express-transport-belt", 12}, {"fused-basalt", 24}, 
	{"forging-stainless", 4}, {"forging-alloy", 2}}


--Base "splitter"
data.raw.recipe["splitter"].category = "basic-crafting"
data.raw.recipe["splitter"].energy_required = 1
data.raw.recipe["splitter"].ingredients = {{"transport-belt", 4}, {"mechanism-1", 1}, {"steel-plate", 4}}

--Base "fast-splitter"
data.raw.recipe["fast-splitter"].category = "crafting"
data.raw.recipe["fast-splitter"].energy_required = 2
data.raw.recipe["fast-splitter"].ingredients = {{"splitter", 1}, {"fast-transport-belt", 4}, {"brass-plate", 4}, {"electronic-circuit", 2}}

--Base "express-splitter"
data.raw.recipe["express-splitter"].category = "crafting"
data.raw.recipe["express-splitter"].energy_required = 5
data.raw.recipe["express-splitter"].ingredients = {{"expedited-splitter", 1}, {"express-transport-belt", 4}, {"mechanism-3", 1}, {"forging-stainless", 1}, 
	{"processing-unit", 4}}


--Base "loader"
data.raw.recipe["loader"].category = "crafting"
data.raw.recipe["loader"].energy_required = 5
data.raw.recipe["loader"].ingredients = {{"transport-belt", 10}, {"electric-engine-unit", 1}, {"mechanism-1", 2}, {"forging-steel", 2}}

--Base "fast-loader"
data.raw.recipe["fast-loader"].category = "crafting"
data.raw.recipe["fast-loader"].energy_required = 10
data.raw.recipe["fast-loader"].ingredients = {{"loader", 1}, {"fast-transport-belt", 10}, {"electric-engine-unit", 1}, {"mechanism-1", 2}, {"brass-plate", 8}, 
	{"control-1", 2}}

--Base "express-loader"
data.raw.recipe["express-loader"].category = "crafting"
data.raw.recipe["express-loader"].energy_required = 20
data.raw.recipe["express-loader"].ingredients = {{"expedited-loader", 1}, {"express-transport-belt", 10}, {"motor-3", 1}, {"mechanism-3", 2}, 
	{"forging-titanium", 2}, {"control-3", 2}}


data:extend(
{

--Slow Transport Belt
{
	type = "recipe",
    name = "slow-transport-belt",
	category = "basic-crafting",
	energy_required = 1,
	ingredients = {{"shaft-0", 1}, {"iron-plate", 2}, {"bronze-plate", 2}},
	result = "slow-transport-belt",
	result_count = 4
},
--Expedited Transport Belt
{
	type = "recipe",
    name = "expedited-transport-belt",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"fast-transport-belt", 1}, {"shaft-2", 1}, {"rubber", 4}, {"forging-aluminum", 2}},
	result = "expedited-transport-belt"
},

--Slow Underground Belt
{
	type = "recipe",
    name = "slow-underground-belt",
	category = "basic-crafting",
	energy_required = 0.5,
	enabled = false,
	ingredients = {{"slow-transport-belt", 4}, {"stone-brick", 8}, {"bronze-plate", 4}},
	result = "slow-underground-belt",
	result_count = 2
},
--Expedited Underground Belt
{
	type = "recipe",
    name = "expedited-underground-belt",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"fast-underground-belt", 2}, {"expedited-transport-belt", 10}, {"concrete", 20}, {"forging-aluminum", 2}},
	result = "expedited-underground-belt",
	result_count = 2
},

--Slow Splitter
{
	type = "recipe",
    name = "slow-splitter",
	category = "basic-crafting",
	energy_required = 0.5,
	enabled = false,
	ingredients = {{"slow-transport-belt", 4}, {"mechanism-0", 1}, {"bronze-plate", 2}},
	result = "slow-splitter"
},
--Expedited Splitter
{
	type = "recipe",
    name = "expedited-splitter",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"fast-splitter", 1}, {"expedited-transport-belt", 4}, {"mechanism-2", 1}, {"forging-aluminum", 1}, {"advanced-circuit", 4}},
	result = "expedited-splitter"
},

--Expedited Loader
{
	type = "recipe",
    name = "expedited-loader",
	category = "crafting",
	energy_required = 15,
	enabled = false,
	ingredients = {{"fast-loader", 1}, {"expedited-transport-belt", 10}, {"motor-2", 1}, {"mechanism-2", 2}, {"forging-aluminum", 2}, {"control-2", 2}},
	result = "expedited-loader"
}

})