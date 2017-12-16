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
		{
			"__base__/graphics/entity/boiler/boiler-",
			"__xander-mod__/graphics/entity/production/boiler-2/",
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
			"__base__/graphics/entity/boiler/boiler-",
			"__xander-mod__/graphics/entity/production/boiler-4/",
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
{
	type = "generator",
	name = "steam-turbine-2",
	icon = "__xander-mod__/graphics/item/production/energy/steam-turbine-2.png",
	flags = {"placeable-neutral","player-creation"},
	minable = {mining_time = 1, result = "steam-turbine-2"},
	max_health = 800,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	effectivity = 1,
	fluid_usage_per_tick = 2,
	maximum_temperature = 500,
	resistances =
	{
		{
			type = "fire",
			percent = 70
		}
	},
	fast_replaceable_group = "steam-engine",
	collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
	selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
	fluid_box =
	{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{type = "input-output", position = {0, 3}},
			{type = "input-output", position = {0, -3}}
		},
		production_type = "input-output"
	},
	fluid_input =
	{
		name = "steam",
		amount = 0.0,
		minimum_temperature = 100.0
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-output"
	},
	horizontal_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/steam-turbine-2/H.png",
				width = 160,
				height = 123,
				frame_count = 8,
				line_length = 4,
				shift = util.by_pixel(0, -2.5),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/steam-turbine-2/hr-H.png",
					width = 320,
					height = 245,
					frame_count = 8,
					line_length = 4,
					shift = util.by_pixel(0, -2.75),
					scale = 0.5
				},
			},
			{
				filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
				width = 217,
				height = 74,
				frame_count = 8,
				line_length = 4,
				draw_as_shadow = true,
				shift = util.by_pixel(28.75, 18),
				hr_version =
				{
					filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
					width = 435,
					height = 150,
					frame_count = 8,
					line_length = 4,
					draw_as_shadow = true,
					shift = util.by_pixel(28.5, 18),
					scale = 0.5
				}
			}
		}
	},
	vertical_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/steam-turbine-2/V.png",
				width = 108,
				height = 173,
				frame_count = 8,
				line_length = 4,
				shift = util.by_pixel(5, 6.5),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/steam-turbine-2/hr-V.png",
					width = 217,
					height = 347,
					frame_count = 8,
					line_length = 4,
					shift = util.by_pixel(4.75, 6.75),
					scale = 0.5
				},
			},
			{
				filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
				width = 151,
				height = 131,
				frame_count = 8,
				line_length = 4,
				draw_as_shadow = true,
				shift = util.by_pixel(39.5, 24.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
					width = 302,
					height = 260,
					frame_count = 8,
					line_length = 4,
					draw_as_shadow = true,
					shift = util.by_pixel(39.5, 24.5),
					scale = 0.5
				}
			}
		}
	},
	smoke =
	{
		{
			name = "turbine-smoke",
			north_position = {0.0, -1.0},
			east_position = {0.75, -0.75},
			frequency = 10 / 32,
			starting_vertical_speed = 0.08,
			slow_down_factor = 1,
			starting_frame_deviation = 60
		}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/steam-engine-90bpm.ogg", volume = 0.6},
		match_speed_to_activity = true,
	},
	min_perceived_performance = 0.25,
	performance_to_sound_speedup = 0.5
},
--Base "nuclear-reactor" placeholder
--Base "solar-panel" placeholder
--Dense Solar Panel
{
	type = "solar-panel",
	name = "solar-panel-2",
	icon = "__xander-mod__/graphics/item/production/energy/solar-panel-2.png",
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
		minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-2"},
		max_health = 200,
		energy_source =
		{
			name = "accumulator-2",
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