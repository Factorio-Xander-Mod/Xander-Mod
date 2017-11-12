
--Base Overrides

--Base "rail"
data.raw.recipe["rail"].category = "basic-machine"
data.raw.recipe["rail"].energy_required = 1
data.raw.recipe["rail"].ingredients = {{"steel-plate", 4}, {"wood", 4}, {"gravel", 2}}
data.raw.recipe["rail"].result_count = 1

--Base "train-stop"
data.raw.recipe["train-stop"].category = "crafting"
data.raw.recipe["train-stop"].energy_required = 2
data.raw.recipe["train-stop"].ingredients = {{"forging-steel", 4}, {"control-1", 1}, {"small-lamp", 1}, {"mechanism-1", 1}}

--Base "rail-signal"
data.raw.recipe["rail-signal"].category = "crafting"
data.raw.recipe["rail-signal"].energy_required = 2
data.raw.recipe["rail-signal"].ingredients = {{"small-lamp", 2}, {"electronic-circuit", 4}, {"forging-iron", 1}}
data.raw.recipe["rail-signal"].result_count = 2

--Base "rail-chain-signal"
data.raw.recipe["rail-chain-signal"].category = "crafting"
data.raw.recipe["rail-chain-signal"].energy_required = 1
data.raw.recipe["rail-chain-signal"].ingredients = {{"rail-signal", 1}, {"electronic-circuit", 2}}

--Base "cargo-wagon"
data.raw.recipe["cargo-wagon"].category = "crafting"
data.raw.recipe["cargo-wagon"].energy_required = 5
data.raw.recipe["cargo-wagon"].ingredients = {{"forging-steel", 10}, {"mechanism-1", 4}, {"wheel-1", 8}}

--Base "fluid-wagon"
data.raw.recipe["fluid-wagon"].category = "crafting"
data.raw.recipe["fluid-wagon"].energy_required = 5
data.raw.recipe["fluid-wagon"].ingredients = {{"forging-steel", 10}, {"storage-tank", 3}, {"pipe", 10}, {"wheel-1", 8}}

--Base "locomotive"
data.raw.recipe["locomotive"].category = "crafting"
data.raw.recipe["locomotive"].energy_required = 10
data.raw.recipe["locomotive"].ingredients = {{"boiler", 2}, {"forging-steel", 20}, {"control-1", 2}, {"pipe-steel", 20}, {"wheel-1", 8}, {"engine-unit", 8}}


data:extend(
{

--Heavy Rail
{
	type = "recipe",
    name = "rail-b",
	category = "machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"forging-alloy", 1}, {"concrete", 4}, {"modified", 4}, {"gravel", 2}},
	result = "rail",
	result_count = 2
},
--Heavy Cargo Wagon
{
	type = "recipe",
    name = "cargo-wagon-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"forging-stainless", 10}, {"mechanism-2", 4}, {"wheel-2", 8}},
	result = "cargo-wagon-2"
},
--Pressurized Fluid Wagon
{
	type = "recipe",
    name = "fluid-wagon-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"forging-stainless", 10}, {"storage-tank-2", 3}, {"pipe-stainless", 10}, {"wheel-2", 8}},
	result = "fluid-wagon-2"
},
--Diesel-Electric Locomotive
{
	type = "recipe",
    name = "locomotive-2",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"forging-stainless", 20}, {"wheel-2", 8}, {"control-2", 4}, {"storage-tank", 1}, {"engine-unit", 20}, {"mechanism-2", 8}, {"motor-2", 20}},
	result = "locomotive-2"
},
--Steam Turbine Locomotive
{
	type = "recipe",
    name = "locomotive-3",
	category = "crafting",
	energy_required = 40,
	enabled = false,
	ingredients = {{"forging-alloy", 20}, {"wheel-2", 16}, {"control-3", 4}, {"storage-tank-2", 1}, {"boiler-2", 1}, {"steam-turbine", 1}, 
		{"motor-2", 20}, {"battery-2", 10}},
	result = "locomotive-3"
}

})