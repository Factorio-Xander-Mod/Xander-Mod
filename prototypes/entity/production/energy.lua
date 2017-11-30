
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


data:extend(
{

--Base "boiler" placeholder
--Superheating Boiler
{
	type = "boiler",
	name = "boiler-2",
	icon = "__xander-mod__/graphics/item/production/energy/boiler-2.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-2"},
	max_health = 500,
	corpse = "small-remnants",
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	mode = "output-to-separate-pipe",
	resistances =
	{
		{
			type = "fire",
			percent = 90
		},
		{
			type = "explosion",
			percent = 30
		},
		{
			type = "impact",
			percent = 30
		}
	},
	collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
	selection_box = {{-1.5, -1}, {1.5, 1}},
	target_temperature = 300,
	fluid_box =
	{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{type = "input-output", position = {-2, 0.5}},
			{type = "input-output", position = {2, 0.5}}
		},
		production_type = "input-output"
	},
	output_fluid_box =
	{
		base_area = 1,
		height = 2,
		base_level = 1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{type = "output", position = {0, -1.5}}
		},
		production_type = "output"
	},
	fluid_input =
	{
		name = "water",
		amount = 0.0
	},
	fluid_output =
	{
		name = "steam",
		amount = 0.0
	},
	energy_consumption = "3MW",
	energy_source =
	{
		type = "burner",
		fuel_category = "chemical",
		effectivity = 2/3,
		fuel_inventory_size = 1,
		emissions = 0.002,
		smoke =
		{
			{
				name = "smoke",
				north_position = util.by_pixel(-38, -47.5),
				south_position = util.by_pixel(38.5, -32),
				east_position = util.by_pixel(20, -70),
				west_position = util.by_pixel(-19, -8.5),
				frequency = 15,
				starting_vertical_speed = 0.0,
				starting_frame_deviation = 60
			}
		}
	},
	working_sound =
	{
		sound = {filename = "__base__/sound/boiler.ogg", volume = 0.8},
		max_sounds_per_type = 3
	},
	structure =
	{
		north =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-2/N-idle.png",
					priority = "extra-high",
					width = 131,
					height = 108,
					shift = util.by_pixel(-0.5, 4),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-2/hr-N-idle.png",
						priority = "extra-high",
						width = 269,
						height = 221,
						shift = util.by_pixel(-1.25, 5.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
					priority = "extra-high",
					width = 137,
					height = 82,
					shift = util.by_pixel(20.5, 9),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
						priority = "extra-high",
						width = 274,
						height = 164,
						scale = 0.5,
						shift = util.by_pixel(20.5, 9),
						draw_as_shadow = true,
					}
				}
			}
		},
		east =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-2/E-idle.png",
					priority = "extra-high",
					width = 105,
					height = 147,
					shift = util.by_pixel(-3.5, -0.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-2/hr-E-idle.png",
						priority = "extra-high",
						width = 216,
						height = 301,
						shift = util.by_pixel(-3, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
					priority = "extra-high",
					width = 92,
					height = 97,
					shift = util.by_pixel(30, 9.5),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
						priority = "extra-high",
						width = 184,
						height = 194,
						scale = 0.5,
						shift = util.by_pixel(30, 9.5),
						draw_as_shadow = true,
					}
				}
			}
		},
		south =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-2/S-idle.png",
					priority = "extra-high",
					width = 128,
					height = 95,
					shift = util.by_pixel(3, 12.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-2/hr-S-idle.png",
						priority = "extra-high",
						width = 260,
						height = 192,
						shift = util.by_pixel(4, 13),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
					priority = "extra-high",
					width = 156,
					height = 66,
					shift = util.by_pixel(30, 16),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
						priority = "extra-high",
						width = 311,
						height = 131,
						scale = 0.5,
						shift = util.by_pixel(29.75, 15.75),
						draw_as_shadow = true,
					}
				}
			}
		},
		west =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-2/W-idle.png",
					priority = "extra-high",
					width = 96,
					height = 132,
					shift = util.by_pixel(1, 5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-2/hr-W-idle.png",
						priority = "extra-high",
						width = 196,
						height = 273,
						shift = util.by_pixel(1.5, 7.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
					priority = "extra-high",
					width = 103,
					height = 109,
					shift = util.by_pixel(19.5, 6.5),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
						priority = "extra-high",
						width = 206,
						height = 218,
						scale = 0.5,
						shift = util.by_pixel(19.5, 6.5),
						draw_as_shadow = true,
					}
				}
			}
		}
	},
	patch =
	{
		east =
		{
			filename = "__xander-mod__/graphics/entity/production/boiler-2/E-patch.png",
			priority = "extra-high",
			width = 3,
			height = 17,
			shift = util.by_pixel(33.5, -13.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/boiler-2/hr-E-patch.png",
				width = 6,
				height = 36,
				shift = util.by_pixel(33.5, -13.5),
				scale = 0.5
			}
		},
	},
	fire_flicker_enabled = true,
	fire =
	{
		north =
		{
			filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 12,
			height = 13,
			animation_speed = 0.5,
			shift = util.by_pixel(0, -8.5),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 26,
				height = 26,
				animation_speed = 0.5,
				shift = util.by_pixel(0, -8.5),
				scale = 0.5
			}
		},
		east =
		{
			filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 14,
			height = 14,
			animation_speed = 0.5,
			shift = util.by_pixel(-10, -22),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 28,
				height = 28,
				animation_speed = 0.5,
				shift = util.by_pixel(-9.5, -22),
				scale = 0.5
			}
		},
		south =
		{
			filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 12,
			height = 9,
			animation_speed = 0.5,
			shift = util.by_pixel(-1, -26.5),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 26,
				height = 16,
				animation_speed = 0.5,
				shift = util.by_pixel(-1, -26.5),
				scale = 0.5
			}
		},
		west =
		{
			filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 14,
			height = 14,
			animation_speed = 0.5,
			shift = util.by_pixel(13, -23),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 30,
				height = 29,
				animation_speed = 0.5,
				shift = util.by_pixel(13, -23.25),
				scale = 0.5
			}
		}
	},
	fire_glow_flicker_enabled = true,
	fire_glow =
	{
		north =
		{
			filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 100,
			height = 87,
			shift = util.by_pixel(-1, -6.5),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 200,
				height = 173,
				shift = util.by_pixel(-1, -6.75),
				blend_mode = "additive",
				scale = 0.5
			}
		},
		east =
		{
			filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 70,
			height = 122,
			shift = util.by_pixel(0, -13),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 139,
				height = 244,
				shift = util.by_pixel(0.25, -13),
				blend_mode = "additive",
				scale = 0.5
			}
		},
		south =
		{
			filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 100,
			height = 81,
			shift = util.by_pixel(1, 5.5),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 200,
				height = 162,
				shift = util.by_pixel(1, 5.5),
				blend_mode = "additive",
				scale = 0.5
			}
		},
		west =
		{
			filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 68,
			height = 109,
			shift = util.by_pixel(2, -6.5),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 136,
				height = 217,
				shift = util.by_pixel(2, -6.25),
				blend_mode = "additive",
				scale = 0.5
			}
		}
	},
	burning_cooldown = 20
},
--Base "heat-exchanger" placeholder
--Electric Boiler
{
	type = "boiler",
	name = "boiler-4",
	icon = "__xander-mod__/graphics/item/production/energy/boiler-4.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-4"},
	max_health = 500,
	corpse = "small-remnants",
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	mode = "output-to-separate-pipe",
	resistances =
	{
		{
			type = "fire",
			percent = 90
		},
		{
			type = "explosion",
			percent = 30
		},
		{
			type = "impact",
			percent = 30
		}
	},
	collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
	selection_box = {{-1.5, -1}, {1.5, 1}},
	target_temperature = 110,
	fluid_box =
	{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{type = "input-output", position = {-2, 0.5}},
			{type = "input-output", position = {2, 0.5}}
		},
		production_type = "input-output"
	},
	output_fluid_box =
	{
		base_area = 1,
		height = 2,
		base_level = 1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{type = "output", position = {0, -1.5}}
		},
		production_type = "output"
	},
	fluid_input =
	{
		name = "water",
		amount = 0.0
	},
	fluid_output =
	{
		name = "steam",
		amount = 0.0
	},
	energy_consumption = "5MW",
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input"
	},
	working_sound =
	{
		sound = {filename = "__base__/sound/boiler.ogg", volume = 0.8},
		max_sounds_per_type = 3
	},
	structure =
	{
		north =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-4/N-idle.png",
					priority = "extra-high",
					width = 131,
					height = 108,
					shift = util.by_pixel(-0.5, 4),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-4/hr-N-idle.png",
						priority = "extra-high",
						width = 269,
						height = 221,
						shift = util.by_pixel(-1.25, 5.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
					priority = "extra-high",
					width = 137,
					height = 82,
					shift = util.by_pixel(20.5, 9),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
						priority = "extra-high",
						width = 274,
						height = 164,
						scale = 0.5,
						shift = util.by_pixel(20.5, 9),
						draw_as_shadow = true,
					}
				}
			}
		},
		east =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-4/E-idle.png",
					priority = "extra-high",
					width = 105,
					height = 147,
					shift = util.by_pixel(-3.5, -0.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-4/hr-E-idle.png",
						priority = "extra-high",
						width = 216,
						height = 301,
						shift = util.by_pixel(-3, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
					priority = "extra-high",
					width = 92,
					height = 97,
					shift = util.by_pixel(30, 9.5),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
						priority = "extra-high",
						width = 184,
						height = 194,
						scale = 0.5,
						shift = util.by_pixel(30, 9.5),
						draw_as_shadow = true,
					}
				}
			}
		},
		south =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-4/S-idle.png",
					priority = "extra-high",
					width = 128,
					height = 95,
					shift = util.by_pixel(3, 12.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-4/hr-S-idle.png",
						priority = "extra-high",
						width = 260,
						height = 192,
						shift = util.by_pixel(4, 13),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
					priority = "extra-high",
					width = 156,
					height = 66,
					shift = util.by_pixel(30, 16),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
						priority = "extra-high",
						width = 311,
						height = 131,
						scale = 0.5,
						shift = util.by_pixel(29.75, 15.75),
						draw_as_shadow = true,
					}
				}
			}
		},
		west =
		{
			layers =
			{
				{
					filename = "__xander-mod__/graphics/entity/production/boiler-4/W-idle.png",
					priority = "extra-high",
					width = 96,
					height = 132,
					shift = util.by_pixel(1, 5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/boiler-4/hr-W-idle.png",
						priority = "extra-high",
						width = 196,
						height = 273,
						shift = util.by_pixel(1.5, 7.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
					priority = "extra-high",
					width = 103,
					height = 109,
					shift = util.by_pixel(19.5, 6.5),
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
						priority = "extra-high",
						width = 206,
						height = 218,
						scale = 0.5,
						shift = util.by_pixel(19.5, 6.5),
						draw_as_shadow = true,
					}
				}
			}
		}
	},
	patch =
	{
		east =
		{
			filename = "__xander-mod__/graphics/entity/production/boiler-4/E-patch.png",
			priority = "extra-high",
			width = 3,
			height = 17,
			shift = util.by_pixel(33.5, -13.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/boiler-4/hr-E-patch.png",
				width = 6,
				height = 36,
				shift = util.by_pixel(33.5, -13.5),
				scale = 0.5
			}
		},
	},
	fire_flicker_enabled = false,
	fire =
	{
		north =
		{
			filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 12,
			height = 13,
			animation_speed = 0.5,
			shift = util.by_pixel(0, -8.5),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 26,
				height = 26,
				animation_speed = 0.5,
				shift = util.by_pixel(0, -8.5),
				scale = 0.5
			}
		},
		east =
		{
			filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 14,
			height = 14,
			animation_speed = 0.5,
			shift = util.by_pixel(-10, -22),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 28,
				height = 28,
				animation_speed = 0.5,
				shift = util.by_pixel(-9.5, -22),
				scale = 0.5
			}
		},
		south =
		{
			filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 12,
			height = 9,
			animation_speed = 0.5,
			shift = util.by_pixel(-1, -26.5),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 26,
				height = 16,
				animation_speed = 0.5,
				shift = util.by_pixel(-1, -26.5),
				scale = 0.5
			}
		},
		west =
		{
			filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
			priority = "extra-high",
			frame_count = 64,
			line_length = 8,
			width = 14,
			height = 14,
			animation_speed = 0.5,
			shift = util.by_pixel(13, -23),
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",
				priority = "extra-high",
				frame_count = 64,
				line_length = 8,
				width = 30,
				height = 29,
				animation_speed = 0.5,
				shift = util.by_pixel(13, -23.25),
				scale = 0.5
			}
		}
	},
	fire_glow_flicker_enabled = false,
	fire_glow =
	{
		north =
		{
			filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 100,
			height = 87,
			shift = util.by_pixel(-1, -6.5),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 200,
				height = 173,
				shift = util.by_pixel(-1, -6.75),
				blend_mode = "additive",
				scale = 0.5
			}
		},
		east =
		{
			filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 70,
			height = 122,
			shift = util.by_pixel(0, -13),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 139,
				height = 244,
				shift = util.by_pixel(0.25, -13),
				blend_mode = "additive",
				scale = 0.5
			}
		},
		south =
		{
			filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 100,
			height = 81,
			shift = util.by_pixel(1, 5.5),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 200,
				height = 162,
				shift = util.by_pixel(1, 5.5),
				blend_mode = "additive",
				scale = 0.5
			}
		},
		west =
		{
			filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
			priority = "extra-high",
			frame_count = 1,
			width = 68,
			height = 109,
			shift = util.by_pixel(2, -6.5),
			blend_mode = "additive",
			hr_version =
			{
				filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",
				priority = "extra-high",
				frame_count = 1,
				width = 136,
				height = 217,
				shift = util.by_pixel(2, -6.25),
				blend_mode = "additive",
				scale = 0.5
			}
		}
	},
	burning_cooldown = 20
},
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
{
	type = "accumulator",
	name = "accumulator-2",
	icon = "__xander-mod__/graphics/item/production/energy/accumulator-2.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-2"},
	max_health = 200,
	corpse = "medium-remnants",
	collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
	selection_box = {{-1, -1}, {1, 1}},
	energy_source =
	{
		type = "electric",
		buffer_capacity = "20MJ",
		usage_priority = "terciary",
		input_flow_limit = "500kW",
		output_flow_limit = "500kW"
	},
	picture =
	{
		filename = "__xander-mod__/graphics/entity/production/accumulator-2/2.png",
		priority = "extra-high",
		width = 124,
		height = 103,
		shift = {0.6875, -0.203125}
	},
	charge_animation =
	{
		filename = "__xander-mod__/graphics/entity/production/accumulator-2/charge.png",
		width = 138,
		height = 135,
		line_length = 8,
		frame_count = 24,
		shift = {0.46875, -0.640625},
		animation_speed = 0.5
	},
	charge_cooldown = 30,
	charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
	discharge_animation =
	{
		filename = "__xander-mod__/graphics/entity/production/accumulator-2/discharge.png",
		width = 147,
		height = 128,
		line_length = 8,
		frame_count = 24,
		shift = {0.390625, -0.53125},
		animation_speed = 0.5
	},
	discharge_cooldown = 60,
	discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/accumulator-working.ogg", volume = 1},
		idle_sound = {filename = "__base__/sound/accumulator-idle.ogg", volume = 0.4},
		max_sounds_per_type = 5
	},
	circuit_wire_connection_point =
	{
		shadow =
		{
			red = {0.984375, 1.10938},
			green = {0.890625, 1.10938}
		},
		wire =
		{
			red = {0.6875, 0.59375},
			green = {0.6875, 0.71875}
		}
	},
	circuit_connector_sprites = get_circuit_connector_sprites({0.46875, 0.5}, {0.46875, 0.8125}, 26),
	circuit_wire_max_distance = 9,
	default_output_signal = {type = "virtual", name = "signal-A"}
},
--Base "small-lamp" placeholder
--Gas Discharge Lamp
{
	type = "lamp",
	name = "lamp-2",
	icon = "__xander-mod__/graphics/item/production/energy/lamp-2.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "lamp-2"},
	max_health = 200,
	corpse = "small-remnants",
	collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input"
	},
	energy_usage_per_tick = "10KW",
	light = {intensity = 1.5, size = 60, color = {r = 1.0, g = 1.0, b = 1.0}},
	light_when_colored = {intensity = 1, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
	glow_size = 6,
	glow_color_intensity = 0.135,
	picture_off =
	{
		filename = "__xander-mod__/graphics/entity/production/lamp-2/off.png",
		priority = "high",
		width = 67,
		height = 58,
		frame_count = 1,
		axially_symmetrical = false,
		direction_count = 1,
		shift = {-0.015625, 0.15625},
	},
	picture_on =
	{
		filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
		priority = "high",
		width = 62,
		height = 62,
		frame_count = 1,
		axially_symmetrical = false,
		direction_count = 1,
		shift = {-0.03125, -0.03125},
	},
	signal_to_color_mapping =
	{
		{type = "virtual", name = "signal-red", color = {r = 1,g = 0,b = 0}},
		{type = "virtual", name = "signal-green", color = {r = 0,g = 1,b = 0}},
		{type = "virtual", name = "signal-blue", color = {r = 0,g = 0,b = 1}},
		{type = "virtual", name = "signal-yellow", color = {r = 1,g = 1,b = 0}},
		{type = "virtual", name = "signal-pink", color = {r = 1,g = 0,b = 1}},
		{type = "virtual", name = "signal-cyan", color = {r = 0,g = 1,b = 1}},
	},
	circuit_wire_connection_point =
	{
		shadow =
		{
			red = {0.734375, 0.578125},
			green = {0.609375, 0.640625},
		},
		wire =
		{
			red = {0.40625, 0.34375},
			green = {0.40625, 0.5},
		}
	},
	circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.28125}, {0.1875, 0.28125}, 18),
	circuit_wire_max_distance = 9
}

}
)
