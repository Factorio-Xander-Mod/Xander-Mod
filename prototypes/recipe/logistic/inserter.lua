
--Base Overrides

--Base "burner-inserter"
data.raw.recipe["burner-inserter"].category = "basic-crafting"
data.raw.recipe["burner-inserter"].energy_required = 1
data.raw.recipe["burner-inserter"].ingredients = {{"iron-plate", 4}, {"forging-iron", 1}, {"blank-1", 2}}
data.raw.recipe["burner-inserter"].result_count = 2

--Base "inserter"
data.raw.recipe["inserter"].energy_required = 2
data.raw.recipe["inserter"].enabled = false
data.raw.recipe["inserter"].ingredients = {{"steel-plate", 4}, {"mechanism-1", 1}, {"electric-engine-unit", 2}, {"electronic-circuit", 4}}
data.raw.recipe["inserter"].result_count = 4

--Base "long-handed-inserter"
data.raw.recipe["long-handed-inserter"].category = "crafting"
data.raw.recipe["long-handed-inserter"].energy_required = 1
data.raw.recipe["long-handed-inserter"].ingredients = {{"inserter", 1}, {"electronic-circuit", 1}, {"steel-plate", 2}, {"bearing-1", 4}}

--Base "fast-inserter"
data.raw.recipe["fast-inserter"].category = "crafting"
data.raw.recipe["fast-inserter"].energy_required = 2
data.raw.recipe["fast-inserter"].ingredients = {{"inserter", 4}, {"mechanism-1", 1}, {"electric-engine-unit", 2}, {"advanced-circuit", 4}}
data.raw.recipe["fast-inserter"].result_count = 4

--Base "filter-inserter"
data.raw.recipe["filter-inserter"].category = "crafting"
data.raw.recipe["filter-inserter"].energy_required = 2
data.raw.recipe["filter-inserter"].ingredients = {{"fast-inserter", 1}, {"advanced-circuit", 2}, {"electronic-circuit", 4}}

--Base "stack-inserter"
data.raw.recipe["stack-inserter"].category = "crafting"
data.raw.recipe["stack-inserter"].energy_required = 4
data.raw.recipe["stack-inserter"].ingredients = {{"fast-inserter", 1}, {"advanced-circuit", 8}, {"forging-aluminum", 2}, {"motor-2", 2}, {"mechanism-2", 2}}

--Base "stack-filter-inserter"
data.raw.recipe["stack-filter-inserter"].category = "crafting"
data.raw.recipe["stack-filter-inserter"].energy_required = 4
data.raw.recipe["stack-filter-inserter"].ingredients = {{"stack-inserter", 1}, {"processing-unit", 4}, {"advanced-circuit", 4}}


data:extend(
{

--Chemical-Fuel Burner Inserter
{
	type = "recipe",
    name = "inserter-chemical-burner",
	category = "basic-crafting",
	energy_required = 1,
	ingredients = {{"iron-plate", 4}, {"forging-iron", 1}, {"blank-1", 2}},
	result = "inserter-chemical-burner",
	result_count = 2
},
--Slow Electric Inserter (Iron-Based)
{
	type = "recipe",
    name = "inserter-slow",
	category = "basic-crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"iron-plate", 4}, {"mechanism-0", 1}, {"electric-engine-unit", 1}},
	result = "inserter-slow",
	result_count = 2
},
--Steel-Based Standard Inserter
	--Just uses the base inserter recipe entry and totally changes it
--Long Fast Inserter
{
	type = "recipe",
    name = "inserter-long-fast",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"fast-inserter", 1}, {"advanced-circuit", 2}, {"forging-aluminum", 1}, {"bearing-2", 4}},
	result = "inserter-long-fast"
},
--Long Stack Inserter
{
	type = "recipe",
    name = "inserter-long-stack",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"stack-inserter", 1}, {"processing-unit", 8}, {"forging-titanium", 2}, {"bearing-3", 8}},
	result = "inserter-long-stack"
},

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
},

--Long-Range Roboport
{
	type = "recipe",
    name = "roboport-2",
	category = "advanced-crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"roboport", 1}, {"mechanism-3", 20}, {"forging-stainless", 50}, {"control-3", 10}, {"transformer-3", 10}, {"motor-3", 10}, 
		{"battery-3", 10}, {"radar-3", 2}},
	result = "roboport-2"
},
--Durable Construction Robot
{
	type = "recipe",
    name = "construction-robot-2",
	category = "advanced-crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"construction-robot", 1}, {"flying-robot-frame-2", 1}, {"tooling-3", 1}, {"forging-titanium", 1}, {"lasing-2", 1}, {"forging-alloy", 1}},
	result = "construction-robot-2"
},
--Fast Logistic Robot
{
	type = "recipe",
    name = "logistic-robot-2",
	category = "advanced-crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"logistic-robot", 1}, {"flying-robot-frame-2", 1}, {"mechanism-3", 1}, {"forging-titanium", 1}, {"plastic-bar", 4}},
	result = "logistic-robot-2"
},

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
	energy_required = 8,
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
	category = "machine",
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
	category = "machine",
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
	category = "machine",
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
	category = "machine",
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
	category = "machine",
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
--Rotayr Impeller Pump
{
	type = "recipe",
    name = "pump-2",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"motor-2", 1}, {"pipe-monel", 2}, {"forging-aluminum", 1}, {"advanced-circuit", 2}},
	result = "pump-2"
},
--Turbomolecualr Pump
{
	type = "recipe",
    name = "pump-3",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"motor-3", 1}, {"pipe-superalloy", 2}, {"forging-titanium", 1}, {"processing-unit", 2}},
	result = "pump-3"
},


--Shielded Green Circuit Wire
{
	type = "recipe",
    name = "green-wire-b",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"wire-tinned", 4}, {"rubber", 4}, {"electronic-circuit", 1}, {"sheet-mu", 1}},
	result = "green-wire",
	result_count = 4
},
--Shielded Red Circuit Wire
{
	type = "recipe",
    name = "red-wire-b",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"wire-tinned", 4}, {"rubber", 4}, {"electronic-circuit", 1}, {"sheet-mu", 1}},
	result = "red-wire",
	result_count = 4
}

})