local util = require("util")
local xmutil = require("xmutil")

--Base Overrides

--Base "boiler"
data.raw.boiler["boiler"].energy_source.fuel_category = "crude"
data.raw.boiler["boiler"].energy_source.emissions = 0.004

--Base "heat-exchanger"
data.raw.boiler["heat-exchanger"].max_health = 500

--Base "heat-pipe"

--Base "steam-engine"

--Base "steam-turbine"
data.raw.generator["steam-turbine"].max_health = 400
data.raw.generator["steam-turbine"].maximum_temperature = 300

--Base "nuclear-reactor"
data.raw.reactor["nuclear-reactor"].max_health = 1000
data.raw.reactor["nuclear-reactor"].consumption = "50MW"

--Base "solar-panel"
data.raw["solar-panel"]["solar-panel"].max_health = 100
data.raw["solar-panel"]["solar-panel"].production = "45kW"

--Base "accumulator"
data.raw.accumulator["accumulator"].max_health = 100
data.raw.accumulator["accumulator"].energy_source =
{
	type = "electric",
	buffer_capacity = "5MJ",
	usage_priority = "terciary",
	input_flow_limit = "200kW",
	output_flow_limit = "200kW"
}

--Base "small-lamp"


data:extend{

--Base "boiler" placeholder
--Superheating Boiler
xmutil.clone("boiler", "boiler",
	{
		--[[{
			"__base__/graphics/entity/boiler/boiler-",
			"__xander-mod__/graphics/entity/production/boiler-2/",
		},]]--
		{
			"__base__/graphics/entity/boiler/boiler-N-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/N-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-N-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/hr-N-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-E-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/E-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-E-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/hr-E-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-S-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/S-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-S-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/hr-S-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-W-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/W-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-W-idle",
			"__xander-mod__/graphics/entity/production/boiler-2/hr-W-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-E-patch",
			"__xander-mod__/graphics/entity/production/boiler-2/E-patch"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-E-patch",
			"__xander-mod__/graphics/entity/production/boiler-2/hr-E-patch"
		}
	},
	{
		name = "boiler-2",
		icon = "__xander-mod__/graphics/item/production/energy/boiler-2.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-2"},
		max_health = 500,
		target_temperature = 300,
		energy_consumption = "3MW",
		energy_source = {
			effectivity = 2/3,
			emissions = 0.02,
		},
	}
),
--Base "heat-exchanger" placeholder
--Electric Boiler
xmutil.clone("boiler", "boiler",
	{
		{
			"__base__/graphics/entity/boiler/boiler-N-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/N-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-N-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/hr-N-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-E-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/E-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-E-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/hr-E-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-S-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/S-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-S-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/hr-S-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-W-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/W-idle"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-W-idle",
			"__xander-mod__/graphics/entity/production/boiler-4/hr-W-idle"
		},
		{
			"__base__/graphics/entity/boiler/boiler-E-patch",
			"__xander-mod__/graphics/entity/production/boiler-4/E-patch"
		},
		{
			"__base__/graphics/entity/boiler/hr-boiler-E-patch",
			"__xander-mod__/graphics/entity/production/boiler-4/hr-E-patch"
		}
	},
	{
		name = "boiler-4",
		icon = "__xander-mod__/graphics/item/production/energy/boiler-4.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-4"},
		max_health = 500,
		target_temperature = 110,
		energy_consumption = "5MW",
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input"
		},
	}
),
--Base "heat-pipe" placeholder
--Base "steam-engine" placeholder
--Base "steam-turbine" placeholder (medium-temperature)
--XM High-Temperature Steam Turbine
xmutil.clone("generator", "steam-turbine",
	{
		{
			"__base__/graphics/entity/steam-turbine/steam-turbine-",
			"__xander-mod__/graphics/entity/production/steam-turbine-2/",
		},
	},
	{
		name = "steam-turbine-2",
		icon = "__xander-mod__/graphics/item/production/energy/steam-turbine-2.png",
		minable = {mining_time = 1, result = "steam-turbine-2"},
		max_health = 800,
		fluid_usage_per_tick = 2,
	}
),
--Base "nuclear-reactor" placeholder
--Base "solar-panel" placeholder
--Dense Solar Panel
{
	type = "solar-panel",
	name = "solar-panel-2",
	icon = "__xander-mod__/graphics/item/production/energy/solar-panel-2.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-2"},
	max_health = 200,
	corpse = "big-remnants",
	collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
	selection_box = {{-2, -2}, {2, 2}},
	energy_source =
	{
		type = "electric",
		usage_priority = "solar"
	},
	picture =
	{
		filename = "__xander-mod__/graphics/entity/production/solar-panel-2/2.png",
		priority = "high",
		width = 139,
		height = 128
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	production = "160kW"
},
--High-Efficiency Solar Panel
{
	type = "solar-panel",
	name = "solar-panel-3",
	icon = "__xander-mod__/graphics/item/production/energy/solar-panel-3.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-3"},
	max_health = 400,
	corpse = "big-remnants",
	collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
	selection_box = {{-2, -2}, {2, 2}},
	energy_source =
	{
		type = "electric",
		usage_priority = "solar"
	},
	picture =
	{
		filename = "__xander-mod__/graphics/entity/production/solar-panel-3/3.png",
		priority = "high",
		width = 139,
		height = 128
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	production = "240kW"
},
--Base "accumulator" placeholder
--Silver Accumulator
xmutil.clone("accumulator", "accumulator",
	{
		{
			"__base__/graphics/icon/accumulator.png",
			"__xander-mod__/graphics/item/production/energy/accumulator-2.png",
		},
		{
			"__base__/graphics/entity/accumulator/accumulator.png",
			"__xander-mod__/graphics/entity/production/accumulator-2/2.png",
		},
		{
			"__base__/graphics/entity/accumulator/accumulator-charge-animation.png",
			"__xander-mod__/graphics/entity/production/accumulator-2/charge.png",
		},
		{
			"__base__/graphics/entity/accumulator/accumulator-discharge-animation.png",
			"__xander-mod__/graphics/entity/production/accumulator-2/discharge.png",
		},
	},
	{
		name = "accumulator-2",
		minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-2"},
		max_health = 200,
		energy_source =
		{
			type = "electric",
			buffer_capacity = "20MJ",
			usage_priority = "terciary",
			input_flow_limit = "500kW",
			output_flow_limit = "500kW"
		},
	}
),
--Base "small-lamp" placeholder
--Gas Discharge Lamp
xmutil.clone("lamp", "small-lamp",
	{
		{
			"__base__/graphics/icon/small-lamp.png",
			"__xander-mod__/graphics/item/production/energy/lamp-2.png",
		},
		{
			"__base__/graphics/entity/small-lamp/lamp.png",
			"__xander-mod__/graphics/entity/production/lamp-2/off.png",
		},
	},
	{
		name = "lamp-2",
		minable = {hardness = 0.2, mining_time = 0.5, result = "lamp-2"},
		max_health = 200,
		energy_usage_per_tick = "10KW",
		light = {intensity = 1.5, size = 60},
		picture_off = {
			layers = {
				[1] = { hr_version = xmutil.NIL },
				[2] = { hr_version = xmutil.NIL },
			},
		}
	}
),
}