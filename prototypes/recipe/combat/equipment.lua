
--Base Overrides

--Base "solar-panel-equipment"
data.raw.recipe["solar-panel-equipment"].category = "crafting"
data.raw.recipe["solar-panel-equipment"].energy_required = 5
data.raw.recipe["solar-panel-equipment"].ingredients = {{"forging-steel", 5}, {"solar-panel-2", 5}, {"advanced-circuit", 2}}

--Base "fusion-reactor-equipment"
data.raw.recipe["fusion-reactor-equipment"].category = "crafting-with-fluid"
data.raw.recipe["fusion-reactor-equipment"].energy_required = 50
data.raw.recipe["fusion-reactor-equipment"].ingredients = {{type = "fluid", name = "hydrogen", amount = 1000}, {"lithium-titanate", 1000}, 
	{"steam-turbine-2", 2}, {"mechanism-3", 100}, {"forging-superalloy", 100}, {"control-3", 50}, {"lasing-3", 100}, {"coil-3", 200}}

--Base "battery-equipment"
data.raw.recipe["battery-equipment"].category = "crafting"
data.raw.recipe["battery-equipment"].energy_required = 5
data.raw.recipe["battery-equipment"].ingredients = {{"battery-1", 1}, {"forging-steel", 10}, {"control-1", 5}}

--Base "battery-mk2-equipment"
data.raw.recipe["battery-mk2-equipment"].category = "crafting"
data.raw.recipe["battery-mk2-equipment"].energy_required = 10
data.raw.recipe["battery-mk2-equipment"].ingredients = {{"battery-equipment", 5}, {"battery-2", 10}, {"forging-alloy", 20}, {"control-2", 10}}



--Base "energy-shield-equipment"
data.raw.recipe["energy-shield-equipment"].category = "crafting"
data.raw.recipe["energy-shield-equipment"].energy_required = 10
data.raw.recipe["energy-shield-equipment"].ingredients = {{"control-2", 2}, {"forging-steel", 10}, {"coil-1", 20}, {"aluminum-plate", 10}}

--Base "energy-shield-mk2-equipment"
data.raw.recipe["energy-shield-mk2-equipment"].category = "crafting"
data.raw.recipe["energy-shield-mk2-equipment"].energy_required = 20
data.raw.recipe["energy-shield-mk2-equipment"].ingredients = {{"energy-shield-equipment", 10}, {"control-2", 5}, {"forging-stainless", 20}, {"coil-2", 20}, 
	{"cobalt-plate", 20}, {"battery-1", 2}}

--Base "personal-laser-defense-equipment"
data.raw.recipe["personal-laser-defense-equipment"].category = "crafting"
data.raw.recipe["personal-laser-defense-equipment"].energy_required = 10
data.raw.recipe["personal-laser-defense-equipment"].ingredients = {{"laser-turret", 5}, {"forging-steel", 10}, {"control-2", 5}}

--Base "discharge-defense-equipment"
data.raw.recipe["discharge-defense-equipment"].category = "crafting"
data.raw.recipe["discharge-defense-equipment"].energy_required = 10
data.raw.recipe["discharge-defense-equipment"].ingredients = {{"forging-stainless", 20}, {"laser-turret", 20}, {"control-3", 2}, 
	{"energy-shield-equipment", 2}}



--Base "personal-roboport-equipment"
data.raw.recipe["personal-roboport-equipment"].category = "crafting"
data.raw.recipe["personal-roboport-equipment"].energy_required = 10
data.raw.recipe["personal-roboport-equipment"].ingredients = {{"mechanism-2", 10}, {"forging-steel", 20}, {"control-2", 5}, {"transformer-2", 2}, 
	{"motor-2", 2}, {"battery-2", 5}, {"radar", 1}}

--Base "personal-roboport-mk2-equipment"
data.raw.recipe["personal-roboport-mk2-equipment"].category = "crafting"
data.raw.recipe["personal-roboport-mk2-equipment"].energy_required = 20
data.raw.recipe["personal-roboport-mk2-equipment"].ingredients = {{"personal-roboport-equipment", 2}, {"mechanism-3", 10}, {"forging-aluminum", 20}, 
	{"control-3", 5}, {"transformer-3", 2}, {"motor-3", 2}, {"battery-3", 5}, {"radar", 1}}

--Base "night-vision-equipment"
data.raw.recipe["night-vision-equipment"].category = "crafting"
data.raw.recipe["night-vision-equipment"].energy_required = 10
data.raw.recipe["night-vision-equipment"].ingredients = {{"forging-steel", 10}, {"solar-panel-2", 2}, {"control-2", 1}, {"small-lamp", 2}}

--Base "exoskeleton-equipment"
data.raw.recipe["exoskeleton-equipment"].category = "crafting"
data.raw.recipe["exoskeleton-equipment"].energy_required = 10
data.raw.recipe["exoskeleton-equipment"].ingredients = {{"forging-stainless", 20}, {"mechanism-2", 10}, {"motor-2", 30}, {"control-2", 5}}


data:extend(
{

--
--ENERGY
--Efficient Solar Panel Equipment
{
	type = "recipe",
    name = "solar-panel-equipment-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"forging-stainless", 10}, {"solar-panel-3", 10}, {"processing-unit", 4}},
	result = "solar-panel-equipment-2"
},
--Portable Fission Reactor Equipment
{
	type = "recipe",
    name = "fission-reactor-equipment",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"uranium-fuel-cell", 20}, {"tungsten-block", 100}, {"uranium-238", 100}, {"forging-alloy", 50}, {"control-3", 20}, {"heat-pipe", 10}, 
		{"forging-zirconium", 20}, {"mechanism-3", 10}},
	result = "fission-reactor-equipment"
},
--Battery Equipment Mark 3
{
	type = "recipe",
    name = "battery-mk3-equipment",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"battery-mk2-equipment", 5}, {"battery-3", 100}, {"forging-titanium", 40}, {"control-3", 20}},
	result = "battery-mk3-equipment"
},

--
--DIRECT COMBAT
--Energy Shield Equipment Mark 3
{
	type = "recipe",
    name = "energy-shield-mk3-equipment",
	category = "crafting",
	energy_required = 50,
	enabled = false,
	ingredients = {{"energy-shield-mk2-equipment", 10}, {"control-3", 10}, {"forging-alloy", 40}, {"coil-3", 40}, {"platinum-plate", 40}, {"battery-2", 5}},
	result = "energy-shield-mk3-equipment"
},
--Energy Shield Equipment Mark 4
{
	type = "recipe",
    name = "energy-shield-mk4-equipment",
	category = "crafting",
	energy_required = 100,
	enabled = false,
	ingredients = {{"energy-shield-mk3-equipment", 5}, {"control-3", 20}, {"forging-titanium", 80}, {"coil-3", 80}, {"re-plate", 80}, {"battery-3", 10}},
	result = "energy-shield-mk4-equipment"
},
--Personal Laser Defense Equipment Mark 2
{
	type = "recipe",
    name = "personal-laser-defense-mk2-equipment",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"personal-laser-defense-equipment", 1}, {"laser-turret-2", 10}, {"forging-stainless", 20}, {"control-3", 10}},
	result = "personal-laser-defense-mk2-equipment"
},
--Personal Laser Defense Equipment Mark 3
{
	type = "recipe",
    name = "personal-laser-defense-mk3-equipment",
	category = "crafting",
	energy_required = 50,
	enabled = false,
	ingredients = {{"personal-laser-defense-mk2-equipment", 1}, {"laser-turret-3", 20}, {"forging-alloy", 40}, {"control-3", 20}},
	result = "personal-laser-defense-mk3-equipment"
},

--
--UTILITY
--Personal Roboport Equipment Mark 3
{
	type = "recipe",
    name = "personal-roboport-mk3-equipment",
	category = "crafting",
	energy_required = 50,
	enabled = false,
	ingredients = {{"personal-roboport-mk2-equipment", 2}, {"mechanism-3", 20}, {"forging-titanium", 50}, {"control-3", 10}, {"transformer-3", 5}, 
		{"motor-3", 5}, {"battery-3", 10}, {"radar-3", 2}},
	result = "personal-roboport-mk3-equipment"
},
--Exoskeleton Equipment Mark 2
{
	type = "recipe",
    name = "exoskeleton-mk2-equipment",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"exoskeleton-equipment", 2}, {"forging-titanium", 40}, {"mechanism-3", 20}, {"motor-3", 60}, {"control-3", 10}},
	result = "exoskeleton-mk2-equipment"
}

})
