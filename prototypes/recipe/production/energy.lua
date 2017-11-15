
--Base Overrides

--Base "boiler"
data.raw.recipe["boiler"].category = "crafting"
data.raw.recipe["boiler"].energy_required = 2
data.raw.recipe["boiler"].ingredients = {{"furnace-2", 1}, {"pipe", 10}, {"pipe-copper", 10}, {"forging-iron", 2}}

--Base "heat-exchanger"
data.raw.recipe["heat-exchanger"].category = "crafting"
data.raw.recipe["heat-exchanger"].energy_required = 10
data.raw.recipe["heat-exchanger"].ingredients = {{"heat-pipe", 5}, {"brick-spinel", 20}, {"pipe-superalloy", 20}}

--Base "steam-engine"
data.raw.recipe["steam-engine"].category = "crafting"
data.raw.recipe["steam-engine"].normal = {energy_required = 2, enabled = false, ingredients = {{"mechanical-steam-engine", 3}, {"forging-iron", 2}, 
	{"electric-engine-unit", 2}}, result = "steam-engine"}
data.raw.recipe["steam-engine"].expensive = {energy_required = 2, enabled = false, ingredients = {{"mechanical-steam-engine", 6}, {"forging-iron", 5}, 
	{"electric-engine-unit", 4}}, result = "steam-engine"}

--Base "steam-turbine"
data.raw.recipe["steam-turbine"].category = "crafting"
data.raw.recipe["steam-turbine"].energy_required = 10
data.raw.recipe["steam-turbine"].ingredients = {{"forging-superalloy", 10}, {"forging-alloy", 20}, {"mechanism-2", 10}, {"mechanism-3", 5}, 
	{"control-3", 2}, {"motor-3", 4}, {"pipe-superalloy", 20}, {"fused-basalt", 50}}

--Base "heat-pipe"
data.raw.recipe["heat-pipe"].category = "crafting"
data.raw.recipe["heat-pipe"].energy_required = 1
data.raw.recipe["heat-pipe"].ingredients = {{"forging-stainless", 10}, {"silver-plate", 20}, {"fiber-glass", 20}}

--Base "nuclear-reactor"
data.raw.recipe["nuclear-reactor"].category = "crafting"
data.raw.recipe["nuclear-reactor"].energy_required = 20
data.raw.recipe["nuclear-reactor"].ingredients = {{"concrete", 2000}, {"lead-plate", 1000}, {"forging-alloy", 500}, {"control-2", 200}, 
	{"heat-pipe", 20}, {"forging-zirconium", 200}, {"mechanism-2", 100}}

--Base "solar-panel"
data.raw.recipe["solar-panel"].category = "crafting"
data.raw.recipe["solar-panel"].energy_required = 5
data.raw.recipe["solar-panel"].ingredients = {{"wafer-solar", 16}, {"forging-steel", 4}, {"cable-insulated", 8}, {"glass", 4}, {"advanced-circuit", 2}}

--Base "accumulator"
data.raw.recipe["accumulator"].category = "crafting"
data.raw.recipe["accumulator"].energy_required = 10
data.raw.recipe["accumulator"].ingredients = {{"battery-1", 1}, {"forging-steel", 2}, {"cable-insulated", 2}, {"insulator-1", 4}}

--Base "small-lamp"
data.raw.recipe["small-lamp"].category = "crafting"
data.raw.recipe["small-lamp"].energy_required = 1
data.raw.recipe["small-lamp"].ingredients = {{"graphite-block", 2}, {"glass", 8}, {"mechanism-1", 1}, {"transformer-1", 1}, {"electronic-circuit", 1}}
data.raw.recipe["small-lamp"].result_count = 4


data:extend(
{

--
--ENERGY
--
--BOILER
--Base "boiler" placeholder
--Superheating Boiler
{
	type = "recipe",
    name = "boiler-2",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"pipe-monel", 20}, {"brick-spinel", 20}, {"forging-aluminum", 5}, {"forging-stainless", 5}},
	result = "boiler-2"
},
--Base "heat-exchanger" placeholder
--Electric Boiler
{
	type = "recipe",
    name = "boiler-4",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"boiler-2", 1}, {"electric-furnace", 1}},
	result = "boiler-4"
},
--
--STEAM ELECTRIC GENERATOR
--Base "steam-engine" placeholder
--Base "steam-turbine" placeholder (medium-temperature)
--XM High-Temperature Steam Turbine
{
	type = "recipe",
    name = "steam-turbine-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"forging-alloy", 10}, {"forging-iron", 20}, {"mechanism-2", 10}, {"control-2", 2}, {"motor-2", 4}, {"pipe-stainless", 20}},
	result = "steam-turbine-2"
},
--
--HEAT PIPE, NUCLEAR
--Base "heat-pipe" placeholder
--Base "nuclear-reactor" placeholder
--
--SOLAR, ACCUMULATOR, LAMP
--Base "solar-panel" placeholder
--Dense Solar Panel
{
	type = "recipe",
    name = "solar-panel-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"solar-panel", 1}, {"wafer-solar", 16}, {"forging-steel", 4}, {"cable-insulated", 8}, {"glass", 4}, {"advanced-circuit", 2}},
	result = "solar-panel-2"
},
--Efficient Solar Panel
{
	type = "recipe",
    name = "solar-panel-3",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"solar-panel-2", 1}, {"wafer-solar", 32}, {"forging-stainless", 8}, {"silver-plate", 16}, {"fused-quartz", 8}, {"processing-unit", 4}},
	result = "solar-panel-3"
},
--Base "accumulator" placeholder
--Silver Accumulator
{
	type = "recipe",
    name = "accumulator-2",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"battery-2", 1}, {"forging-stainless", 2}, {"cable-insulated", 4}, {"insulator-2", 4}},
	result = "accumulator-2"
},
--Base "small-lamp" placeholder
--Discharge Lamp
{
	type = "recipe",
    name = "lamp-2",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"tungsten-block", 2}, {"fused-quartz", 4}, {"electronic-circuit", 2}, {"transformer-2", 1}, {"advanced-circuit", 1}},
	result = "lamp-2"
},
--Filament-Based Small Lamp
{
	type = "recipe",
    name = "lamp-1-b",
	category = "crafting",
	energy_required = 1,
	enabled = false,
	ingredients = {{"tungsten-block", 1}, {"glass", 4}, {"brass-plate", 2}, {"forging-iron", 2}, {"electronic-circuit", 1}},
	result = "small-lamp"
}

})