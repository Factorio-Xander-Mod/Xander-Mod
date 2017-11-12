
--Base Overrides

--Base "stone-wall"
data.raw.recipe["stone-wall"].category = "crafting"
data.raw.recipe["stone-wall"].energy_required = 1
data.raw.recipe["stone-wall"].ingredients = {{"stone-brick", 10}}

--Base "gate"
data.raw.recipe["gate"].category = "crafting"
data.raw.recipe["gate"].energy_required = 2
data.raw.recipe["gate"].ingredients = {{"forging-steel", 5}, {"electronic-circuit", 2}, {"electric-engine-unit", 1}, {"mechanism-1", 1}}

--Base "gun-turret"
data.raw.recipe["gun-turret"].category = "crafting"
data.raw.recipe["gun-turret"].energy_required = 5
data.raw.recipe["gun-turret"].ingredients = {{"forging-iron", 5}, {"mechanism-1", 5}, {"bronze-plate", 10}}

--Base "flamethrower-turret"
data.raw.recipe["flamethrower-turret"].category = "crafting"
data.raw.recipe["flamethrower-turret"].energy_required = 20
data.raw.recipe["flamethrower-turret"].ingredients = {{"forging-steel", 40}, {"mechanism-1", 5}, {"pipe", 10}, {"engine-unit", 5}}

--Base "laser-turret"
data.raw.recipe["laser-turret"].category = "crafting"
data.raw.recipe["laser-turret"].energy_required = 10
data.raw.recipe["laser-turret"].ingredients = {{"forging-steel", 10}, {"mechanism-1", 1}, {"electric-engine-unit", 1}, {"lasing-1", 1}, {"battery-1", 1}, 
	{"control-1", 1}}

--Base "radar"
data.raw.recipe["radar"].category = "crafting"
data.raw.recipe["radar"].energy_required = 5
data.raw.recipe["radar"].enabled = false
data.raw.recipe["radar"].ingredients = {{"forging-steel", 5}, {"control-1", 1}, {"copper-cable", 10}, {"electric-engine-unit", 1}}

--Base "car"
data.raw.recipe["car"].category = "crafting"
data.raw.recipe["car"].energy_required = 2
data.raw.recipe["car"].ingredients = {{"engine-unit", 8}, {"wheel-1", 4}, {"forging-steel", 10}, {"mechanism-1", 5}, {"rubber", 20}, {"glass", 10}, 
	{"control-1", 2}}

--Base "tank"
data.raw.recipe["tank"].category = "crafting"
data.raw.recipe["tank"].energy_required = 10
data.raw.recipe["tank"].ingredients = {{"engine-unit", 32}, {"wheel-1", 16}, {"forging-alloy", 100}, {"mechanism-2", 20}, {"motor-2", 10}, 
	{"crystal-corundum", 5}, {"control-2", 5}, {"tungsten-block", 200}}


data:extend(
{

--Clay Brick Wall
{
	type = "recipe",
    name = "wall-2",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"brick-clay", 5}},
	result = "wall-2"
},
--Reinforced Concrete Wall
{
	type = "recipe",
    name = "wall-3",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"concrete", 20}, {"forging-steel", 2}},
	result = "wall-3"
},
--Armored Basalt Wall
{
	type = "recipe",
    name = "wall-4",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"fused-basalt", 20}, {"forging-alloy", 2}},
	result = "wall-4"
},
--Impervious Ceramic Wall
{
	type = "recipe",
    name = "wall-5",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"nitride-block", 20}, {"tungsten-block", 10}},
	result = "wall-5"
},
--Armored Basalt Gate
{
	type = "recipe",
    name = "gate-2",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"forging-alloy", 10}, {"electronic-circuit", 2}, {"motor-2", 1}, {"mechanism-2", 1}},
	result = "gate-2"
},
--Impervious Ceramic Gate
{
	type = "recipe",
    name = "gate-3",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"wall-5", 2}, {"electronic-circuit", 2}, {"motor-3", 1}, {"mechanism-3", 1}},
	result = "gate-3"
},
--Carbon Dioxide Laser Turret
{
	type = "recipe",
    name = "laser-turret-2",
	category = "advanced-crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"laser-turret", 1}, {"forging-alloy", 10}, {"mechanism-2", 1}, {"motor-2", 1}, {"lasing-2", 1}, {"battery-2", 2}, {"control-2", 1}},
	result = "laser-turret-2"
},
--Nd:YAG Laser Turret
{
	type = "recipe",
    name = "laser-turret-3",
	category = "advanced-crafting",
	energy_required = 50,
	enabled = false,
	ingredients = {{"laser-turret-2", 1}, {"wall-5", 5}, {"mechanism-3", 1}, {"motor-3", 1}, {"lasing-3", 1}, {"battery-3", 2}, {"control-3", 1}},
	result = "laser-turret-3"
},
--Doppler Radar
{
	type = "recipe",
    name = "radar-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"radar", 1}, {"forging-stainless", 10}, {"forging-aluminum", 5}, {"motor-2", 2}, {"mechanism-2", 2}, {"control-2", 2}},
	result = "radar-2"
},
--LIDAR Scanning Array
{
	type = "recipe",
    name = "radar-3",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"radar-2", 1}, {"forging-stainless", 10}, {"forging-titanium", 5}, {"motor-3", 2}, {"mechanism-3", 2}, {"control-3", 2}, {"lasing-1", 4}},
	result = "radar-3"
},
--Artillery Crawler
{
	type = "recipe",
    name = "artillery-crawler",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"tank", 1}, {"forging-stainless", 50}, {"forging-alloy", 20}, {"mechanism-2", 20}, {"motor-2", 10}, {"laser-turret", 5}, 
		{"control-3", 20}},
	result = "artillery-crawler"
},
--TANK MARK 2
{
	type = "recipe",
    name = "tank-2",
	category = "crafting",
	energy_required = 50,
	enabled = false,
	ingredients = {{"steam-turbine", 1}, {"wheel-2", 32}, {"forging-titanium", 200}, {"mechanism-3", 20}, {"motor-3", 10}, {"laser-turret-3", 5}, 
		{"nitride-block", 200}, {"tungsten-block", 500}},
	result = "tank-2"
}

})
