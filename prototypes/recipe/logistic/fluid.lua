
--Base Overrides

--Base "pipe"
data.raw.recipe["pipe"].category = "basic-machine"
data.raw.recipe["pipe"].normal =
{
	energy_required = 1,
	ingredients = {{"iron-plate", 1}},
	result = "pipe",
	requester_paste_multiplier = 15
}
data.raw.recipe["pipe"].expensive =
{
	energy_required = 1,
	ingredients = {{"iron-plate", 2}},
	result = "pipe",
	requester_paste_multiplier = 15
}

--Base "pipe-to-ground"
data.raw.recipe["pipe-to-ground"].category = "basic-machine"
data.raw.recipe["pipe-to-ground"].energy_required = 1
data.raw.recipe["pipe-to-ground"].ingredients = {{"pipe", 10}, {"forging-iron", 2}}

--Base "storage-tank"
data.raw.recipe["storage-tank"].category = "crafting"
data.raw.recipe["storage-tank"].energy_required = 5
data.raw.recipe["storage-tank"].ingredients = {{"mechanism-1", 2}, {"forging-steel", 10}}

--Base "pump"
data.raw.recipe["pump"].category = "crafting"
data.raw.recipe["pump"].energy_required = 2
data.raw.recipe["pump"].ingredients = {{"electric-engine-unit", 1}, {"pipe-copper", 2}, {"bronze-plate", 4}, {"electronic-circuit", 1}}


data:extend(
{

--Cast Iron Pipe
{
	type = "recipe",
    name = "pipe-iron-b",
	category = "basic-machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-iron", 1}},
	result = "pipe",
	result_count = 4
},
--Copper Pipe
{
	type = "recipe",
    name = "pipe-copper",
	category = "basic-machine",
	energy_required = 0.5,
	ingredients = {{"copper-plate", 1}},
	result = "pipe-copper"
},
--Steel Pipe
{
	type = "recipe",
    name = "pipe-steel",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-steel", 1}},
	result = "pipe-steel",
	result_count = 4
},
--Monel Metal Pipe
{
	type = "recipe",
    name = "pipe-monel",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"monel-plate", 1}},
	result = "pipe-monel"
},
--Stainless Steel Pipe
{
	type = "recipe",
    name = "pipe-stainless",
	category = "machine",
	energy_required = 8,
	enabled = false,
	ingredients = {{"forging-stainless", 1}},
	result = "pipe-stainless",
	result_count = 4
},
--Plastic Pipe
{
	type = "recipe",
    name = "pipe-plastic",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"plastic-pellets", 1}},
	result = "pipe-plastic"
},
--Superalloy Pipe
{
	type = "recipe",
    name = "pipe-superalloy",
	category = "machine",
	energy_required = 20,
	enabled = false,
	ingredients = {{"forging-superalloy", 1}},
	result = "pipe-superalloy",
	result_count = 4
},
--Copper Pipe-To-Ground
{
	type = "recipe",
    name = "pipe-to-ground-copper",
	category = "basic-machine",
	energy_required = 1,
	ingredients = {{"pipe-copper", 10}, {"forging-iron", 2}},
	result = "pipe-to-ground-copper",
	result_count = 2
},
--Steel Pipe-To-Ground
{
	type = "recipe",
    name = "pipe-to-ground-steel",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"pipe-steel", 20}, {"forging-steel", 4}},
	result = "pipe-to-ground-steel",
	result_count = 2
},
--Monel Metal Pipe-To-Ground
{
	type = "recipe",
    name = "pipe-to-ground-monel",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"pipe-monel", 20}, {"forging-steel", 4}},
	result = "pipe-to-ground-monel",
	result_count = 2
},
--Stainless Steel Pipe-To-Ground
{
	type = "recipe",
    name = "pipe-to-ground-stainless",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"pipe-stainless", 30}, {"forging-alloy", 6}},
	result = "pipe-to-ground-stainless",
	result_count = 2
},
--Plastic Pipe-To-Ground
{
	type = "recipe",
    name = "pipe-to-ground-plastic",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"pipe-plastic", 30}, {"forging-alloy", 6}},
	result = "pipe-to-ground-plastic",
	result_count = 2
},
--Superalloy Pipe-To-Ground
{
	type = "recipe",
    name = "pipe-to-ground-superalloy",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"pipe-superalloy", 30}, {"forging-alloy", 6}},
	result = "pipe-to-ground-superalloy",
	result_count = 2
},
--Pressurized Storage Tank
{
	type = "recipe",
    name = "storage-tank-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"mechanism-2", 2}, {"forging-stainless", 20}, {"pipe-monel", 10}, {"pipe-stainless", 10}},
	result = "storage-tank-2"
},
--Rotary Impeller Pump
{
	type = "recipe",
    name = "pump-2",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"motor-2", 1}, {"pipe-monel", 2}, {"forging-aluminum", 1}, {"advanced-circuit", 1}},
	result = "pump-2"
},
--Turbomolecualr Pump
{
	type = "recipe",
    name = "pump-3",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"motor-3", 1}, {"pipe-superalloy", 2}, {"forging-titanium", 1}, {"processing-unit", 1}},
	result = "pump-3"
}

})