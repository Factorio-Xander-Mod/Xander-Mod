
--Base Overrides

--Base "roboport"
data.raw.recipe["roboport"].category = "crafting"
data.raw.recipe["roboport"].energy_required = 10
data.raw.recipe["roboport"].ingredients = {{"mechanism-2", 20}, {"forging-steel", 50}, {"control-2", 5}, {"transformer-2", 10}, {"motor-2", 10}, 
	{"battery-2", 10}, {"radar", 1}}

--Base "construction-robot"
data.raw.recipe["construction-robot"].category = "crafting"
data.raw.recipe["construction-robot"].energy_required = 5
data.raw.recipe["construction-robot"].ingredients = {{"flying-robot-frame", 1}, {"mechanism-2", 1}, {"tooling-2", 1}, {"forging-steel", 1}}

--Base "logistic-robot"
data.raw.recipe["logistic-robot"].category = "crafting"
data.raw.recipe["logistic-robot"].energy_required = 5
data.raw.recipe["logistic-robot"].ingredients = {{"flying-robot-frame", 1}, {"mechanism-2", 1}, {"forging-aluminum", 1}, {"rubber", 4}}

--Base "logistic-chest-storage"
data.raw.recipe["logistic-chest-storage"].category = "crafting"
data.raw.recipe["logistic-chest-storage"].energy_required = 1
data.raw.recipe["logistic-chest-storage"].ingredients = {{"steel-chest", 1}, {"control-2", 1}}

--Base "logistic-chest-passive-provider"
data.raw.recipe["logistic-chest-passive-provider"].category = "crafting"
data.raw.recipe["logistic-chest-passive-provider"].energy_required = 1
data.raw.recipe["logistic-chest-passive-provider"].ingredients = {{"steel-chest", 1}, {"control-2", 1}}

--Base "logistic-chest-active-provider"
data.raw.recipe["logistic-chest-active-provider"].category = "crafting"
data.raw.recipe["logistic-chest-active-provider"].energy_required = 1
data.raw.recipe["logistic-chest-active-provider"].ingredients = {{"steel-chest", 1}, {"control-2", 1}}

--Base "logistic-chest-requester"
data.raw.recipe["logistic-chest-requester"].category = "crafting"
data.raw.recipe["logistic-chest-requester"].energy_required = 1
data.raw.recipe["logistic-chest-requester"].ingredients = {{"steel-chest", 1}, {"control-2", 1}}

--Base "wooden-chest"
data.raw.recipe["wooden-chest"].category = "crafting"
data.raw.recipe["wooden-chest"].energy_required = 1
data.raw.recipe["wooden-chest"].ingredients = {{"wood", 4}}

--Base "iron-chest"
data.raw.recipe["iron-chest"].category = "crafting"
data.raw.recipe["iron-chest"].energy_required = 1
data.raw.recipe["iron-chest"].ingredients = {{"forging-iron", 1}, {"shaft-1", 1}, {"iron-plate", 2}}

--Base "steel-chest"
data.raw.recipe["steel-chest"].category = "crafting"
data.raw.recipe["steel-chest"].energy_required = 1
data.raw.recipe["steel-chest"].ingredients = {{"forging-steel", 5}, {"shaft-1", 2}, {"steel-plate", 16}}


data:extend(
{

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
}

})