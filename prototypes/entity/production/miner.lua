
--Base Overrides

--Base "offshore-pump"
data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 10

--Base "burner-mining-drill"
data.raw["mining-drill"]["burner-mining-drill"].max_health = 100
data.raw["mining-drill"]["burner-mining-drill"].mining_speed = 0.4
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_category = "crude"
data.raw["mining-drill"]["burner-mining-drill"].energy_source.emissions = 0.01
data.raw["mining-drill"]["burner-mining-drill"].energy_usage = "200kW"
data.raw["mining-drill"]["burner-mining-drill"].mining_power = 2

--Base "electric-mining-drill"
data.raw["mining-drill"]["electric-mining-drill"].max_health = 200
data.raw["mining-drill"]["electric-mining-drill"].resource_categories = {"basic-solid", "hard-solid"}
data.raw["mining-drill"]["electric-mining-drill"].mining_speed = 1
data.raw["mining-drill"]["electric-mining-drill"].energy_source.emissions = 0.02
data.raw["mining-drill"]["electric-mining-drill"].energy_usage = "100kW"
data.raw["mining-drill"]["electric-mining-drill"].mining_power = 2.5
data.raw["mining-drill"]["electric-mining-drill"].module_specification = {module_slots = 2}

--Base "pumpjack"
data.raw["mining-drill"]["pumpjack"].energy_usage = "100kW"


data:extend(
{

--Base "offshore-pump" placeholder
--XM Proper Steel Parts Offshore Pump
{
	type = "offshore-pump",
	name = "offshore-pump-1",
	icon = "__xander-mod__/graphics/item/production/miner/offshore-pump-1.png",
	flags = {"placeable-neutral", "player-creation", "filter-directions"},
	minable = {mining_time = 1, result = "offshore-pump"},
	max_health = 200,
	corpse = "small-remnants",
	fluid = "water",
	resistances =
	{
		{
			type = "fire",
			percent = 70
		}
	},
	collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
	selection_box = {{-1, -1.49}, {1, 0.49}},
	fluid_box =
	{
		base_area = 1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{position = {0, 1}}
		}
	},
	pumping_speed = 20,
	tile_width = 1,
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	picture =
	{
		north =
		{
			filename = "__xander-mod__/graphics/entity/production/offshore-pump-1/1.png",
			priority = "high",
			shift = {0.9, 0.05},
			width = 160,
			height = 102
		},
		east =
		{
			filename = "__xander-mod__/graphics/entity/production/offshore-pump-1/1.png",
			priority = "high",
			shift = {0.9, 0.05},
			x = 160,
			width = 160,
			height = 102
		},
		south =
		{
			filename = "__xander-mod__/graphics/entity/production/offshore-pump-1/1.png",
			priority = "high",
			shift = {0.9, 0.65},
			x = 320,
			width = 160,
			height = 102
		},
		west =
		{
			filename = "__xander-mod__/graphics/entity/production/offshore-pump-1/1.png",
			priority = "high",
			shift = {1.0, 0.05},
			x = 480,
			width = 160,
			height = 102
		}
	}
},
--XM Logging Camp
{
	type = "assembling-machine",
	name = "logging-camp",
	icon = "__xander-mod__/graphics/item/production/miner/logging-camp.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "logging-camp"},
	max_health = 50,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	resistances =
	{
		{
			type = "fire",
			percent = 70
		}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_picture =
			{
				north =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 20),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 19.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-20, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-19.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(20.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(20.75, 1.25),
						scale = 0.5,
					}
				}
			},
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -2} }},
			secondary_draw_orders = { north = -1 }
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "mining-drill",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/logging-camp/logging-camp.png",
				priority = "high",
				width = 113,
				height = 91,
				frame_count = 33,
				line_length = 11,
				shift = {0.2, 0.15}
			}
		}
	},
	crafting_categories = {"temp-logging"},
	crafting_speed = 1,
	energy_source =
	{
		type = "burner",
		fuel_category = "crude",
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions = 0.01,
		smoke =
		{
			{
				name = "smoke",
				deviation = {0.1, 0.1},
				frequency = 5,
				position = {0.0, -0.8},
				starting_vertical_speed = 0.08,
				starting_frame_deviation = 60
			}
		}
	},
	energy_usage = "200kW",
	ingredient_count = 2,
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound =
		{
			{filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8},
			{filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8}
		},
		idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
		apparent_volume = 1.5,
	}
},
--Base "burner-mining-drill" placeholder
--Base "electri-mining-drill" placeholder
--Electric Shovel Excavator
{
	type = "mining-drill",
	name = "mining-drill-3",
	icon = "__xander-mod__/graphics/item/production/miner/mining-drill-3.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 1, result = "mining-drill-3"},
	max_health = 400,
	resource_categories = {"basic-solid", "hard-solid", "tough-solid"},
	corpse = "big-remnants",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	input_fluid_box = (not data.is_demo) and
	{
		production_type = "input-output",
		pipe_picture = assembler2pipepictures(),
		pipe_covers = pipecoverspictures(),
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_connections =
		{
			{position = {-2, 0}},
			{position = {2, 0}},
			{position = {0, 2}}
		}
	} or nil,	
	working_sound =
	{
		sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.75},
		apparent_volume = 1.5,
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	animations =
	{
		north =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/N.png",
			line_length = 8,
			width = 98,
			height = 113,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -8.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-N.png",
				line_length = 8,
				width = 196,
				height = 226,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(0, -8),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/E.png",
			line_length = 8,
			width = 105,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(3.5, -1),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-E.png",
				line_length = 8,
				width = 211,
				height = 197,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(3.75, -1.25),
				run_mode = "forward-then-backward",		
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/S.png",
			line_length = 8,
			width = 98,
			height = 109,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -1.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-S.png",
				line_length = 8,
				width = 196,
				height = 219,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(0, -1.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/W.png",
			line_length = 8,
			width = 105,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(-3.5, -1),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-W.png",
				line_length = 8,
				width = 211,
				height = 197,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-3.75, -0.75),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		}
	},
	shadow_animations =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 101,
			height = 111,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(1.5, -7.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 201,
				height = 223,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1.25, -7.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 110,
			height = 97,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(6, -0.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 221,
				height = 195,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(6.25, -0.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 100,
			height = 103,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(1, 2.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 200,
				height = 206,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1, 2.5),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 114,
			height = 97,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(1, -0.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 229,
				height = 195,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1.25, -0.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		}
	},
	input_fluid_patch_sprites =
	{
		north =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/N-patch.png",
			line_length = 1,
			width = 100,
			height = 111,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -6.5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-N-patch.png",
				line_length = 1,
				width = 200,
				height = 222,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -6.5),
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/E-patch.png",
			line_length = 1,
			width = 100,
			height = 110,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -6),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-E-patch.png",
				line_length = 1,
				width = 200,
				height = 219,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(0, -5.75),
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/S-patch.png",
			line_length = 1,
			width = 100,
			height = 113,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -7.5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-S-patch.png",
				line_length = 1,
				width = 200,
				height = 226,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -7.5),
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-3/W-patch.png",
			line_length = 1,
			width = 100,
			height = 108,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-3/hr-W-patch.png",
				line_length = 1,
				width = 200,
				height = 220,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -6),
				scale = 0.5
			}
		}
	},
	input_fluid_patch_shadow_sprites =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 110,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(5, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 220,
				height = 197,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(5, -0.25),
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 112,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(6, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 224,
				height = 198,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(6, 0),
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 110,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(5, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 220,
				height = 197,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(5, -0.25),
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 110,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(5, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 220,
				height = 197,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(5, -0.25),
				scale = 0.5
			}
		}
	},
	input_fluid_patch_shadow_animations =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 100,
			height = 102,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(-1, -3),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 204,
				height = 206,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -2),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 102,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -2),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 204,
				height = 209,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -1.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 100,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(-1, -1),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 204,
				height = 204,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -2.5),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 96,
			height = 99,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -1.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 198,
				height = 206,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1, -2),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		}
	},
	input_fluid_patch_window_sprites =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
			line_length = 1,
			width = 72,
			height = 54,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(-1, 1),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
				line_length = 1,
				width = 142,
				height = 107,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-1, 0.75),
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
			line_length = 1,
			width = 51,
			height = 74,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(-11.5, -11),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
				line_length = 1,
				width = 104,
				height = 147,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-11, -11.25),
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
			line_length = 1,
			width = 71,
			height = 44,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(-1.5, -29),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
				line_length = 1,
				width = 141,
				height = 86,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-1.75, -29),
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
			line_length = 1,
			width = 41,
			height = 69,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(11.5, -11.5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
				line_length = 1,
				width = 80,
				height = 137,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(11.5, -11.25),
				scale = 0.5
			}
		}
	},
	
	input_fluid_patch_window_flow_sprites =
	{
		{
			north =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
				line_length = 1,
				width = 68,
				height = 50,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, -1),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
					line_length = 1,
					width = 136,
					height = 99,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2.5, -0.75),
					scale = 0.5
				}
			},
			east =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
				line_length = 1,
				width = 41,
				height = 70,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-11.5, -11),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
					line_length = 1,
					width = 82,
					height = 139,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-11.5, -11.25),
					scale = 0.5
				}
			},
			south =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
				line_length = 1,
				width = 68,
				height = 40,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, -29),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
					line_length = 1,
					width = 136,
					height = 80,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2.5, -29.5),
					scale = 0.5
				}
			},
			west =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
				line_length = 1,
				width = 42,
				height = 70,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(11, -11),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
					line_length = 1,
					width = 83,
					height = 140,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(10.75, -11),
					scale = 0.5
				}
			}
		},
	},
	input_fluid_patch_window_base_sprites =
	{
		{
			north =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
				line_length = 1,
				width = 70,
				height = 48,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, 0),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
					line_length = 1,
					width = 138,
					height = 94,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2, 0),
					scale = 0.5
				}
			},
			east =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
				line_length = 1,
				width = 42,
				height = 70,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-12, -11),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
					line_length = 1,
					width = 84,
					height = 138,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-12, -11),
					scale = 0.5
				}
			},
			south =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
				line_length = 1,
				width = 70,
				height = 40,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, -29),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
					line_length = 1,
					width = 138,
					height = 80,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2, -29),
					scale = 0.5
				}
			},
			west =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
				line_length = 1,
				width = 42,
				height = 69,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(12, -10.5),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
					line_length = 1,
					width = 83,
					height = 137,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(11.75, -10.75),
					scale = 0.5
				}
			}
		},
	},
	mining_speed = 4,
	energy_source =
	{
		type = "electric",
		emissions = 0.02,
		usage_priority = "secondary-input"
	},
	energy_usage = "400kW",
	mining_power = 4.5,
	resource_searching_radius = 2.49,
	vector_to_place_result = {0, -1.85},
	module_specification =
	{
		module_slots = 3
	},
	radius_visualisation_picture =
	{
		filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
		width = 12,
		height = 12
	},
	monitor_visualization_tint = {r = 78, g = 173, b = 255},
	fast_replaceable_group = "mining-drill",
	circuit_wire_connection_points =
	{
		get_circuit_connector_wire_shifting_for_connector({-0.09375, -1.65625}, {-0.09375, -1.65625}, 4),
		get_circuit_connector_wire_shifting_for_connector({1.28125, -0.40625}, {1.28125, -0.40625}, 2),
		get_circuit_connector_wire_shifting_for_connector({0.09375, 1}, {0.09375, 1}, 0),
		get_circuit_connector_wire_shifting_for_connector({-1.3125, -0.3125}, {-1.3125, -0.3125}, 6)
	},
	circuit_connector_sprites =
	{
		get_circuit_connector_sprites({-0.09375, -1.65625}, {-0.09375, -1.65625}, 4),
		get_circuit_connector_sprites({1.28125, -0.40625}, {1.28125, -0.40625}, 2),
		get_circuit_connector_sprites({0.09375, 1}, {0.09375, 1}, 0),
		get_circuit_connector_sprites({-1.3125, -0.3125}, {-1.3125, -0.3125}, 6)
	},
	circuit_wire_max_distance = 9,
},
--Bucket Wheel Excavator
{
	type = "mining-drill",
	name = "mining-drill-4",
	icon = "__xander-mod__/graphics/item/production/miner/mining-drill-4.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 1, result = "mining-drill-4"},
	max_health = 1000,
	resource_categories = {"basic-solid", "hard-solid", "tough-solid"},
	corpse = "big-remnants",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	input_fluid_box = (not data.is_demo) and
	{
		production_type = "input-output",
		pipe_picture = assembler2pipepictures(),
		pipe_covers = pipecoverspictures(),
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_connections =
		{
			{position = {-2, 0}},
			{position = {2, 0}},
			{position = {0, 2}}
		}
	} or nil,	
	working_sound =
	{
		sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.75},
		apparent_volume = 1.5,
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	animations =
	{
		north =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/N.png",
			line_length = 8,
			width = 98,
			height = 113,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -8.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-N.png",
				line_length = 8,
				width = 196,
				height = 226,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(0, -8),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/E.png",
			line_length = 8,
			width = 105,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(3.5, -1),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-E.png",
				line_length = 8,
				width = 211,
				height = 197,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(3.75, -1.25),
				run_mode = "forward-then-backward",		
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/S.png",
			line_length = 8,
			width = 98,
			height = 109,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -1.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-S.png",
				line_length = 8,
				width = 196,
				height = 219,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(0, -1.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/W.png",
			line_length = 8,
			width = 105,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(-3.5, -1),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-W.png",
				line_length = 8,
				width = 211,
				height = 197,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-3.75, -0.75),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		}
	},
	shadow_animations =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 101,
			height = 111,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(1.5, -7.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 201,
				height = 223,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1.25, -7.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 110,
			height = 97,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(6, -0.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 221,
				height = 195,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(6.25, -0.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 100,
			height = 103,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(1, 2.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 200,
				height = 206,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1, 2.5),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-shadow.png",
			flags = {"shadow"},
			line_length = 8,
			width = 114,
			height = 97,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(1, -0.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-shadow.png",
				flags = {"shadow"},
				line_length = 8,
				width = 229,
				height = 195,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1.25, -0.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		}
	},
	input_fluid_patch_sprites =
	{
		north =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/N-patch.png",
			line_length = 1,
			width = 100,
			height = 111,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -6.5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-N-patch.png",
				line_length = 1,
				width = 200,
				height = 222,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -6.5),
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/E-patch.png",
			line_length = 1,
			width = 100,
			height = 110,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -6),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-E-patch.png",
				line_length = 1,
				width = 200,
				height = 219,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(0, -5.75),
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/S-patch.png",
			line_length = 1,
			width = 100,
			height = 113,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -7.5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-S-patch.png",
				line_length = 1,
				width = 200,
				height = 226,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -7.5),
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__xander-mod__/graphics/entity/production/mining-drill-4/W-patch.png",
			line_length = 1,
			width = 100,
			height = 108,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(0, -5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__xander-mod__/graphics/entity/production/mining-drill-4/hr-W-patch.png",
				line_length = 1,
				width = 200,
				height = 220,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -6),
				scale = 0.5
			}
		}
	},
	input_fluid_patch_shadow_sprites =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 110,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(5, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 220,
				height = 197,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(5, -0.25),
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 112,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(6, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 224,
				height = 198,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(6, 0),
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 110,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(5, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 220,
				height = 197,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(5, -0.25),
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
			flags = {"shadow"},
			line_length = 1,
			width = 110,
			height = 98,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(5, 0),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
				flags = {"shadow"},
				line_length = 1,
				width = 220,
				height = 197,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(5, -0.25),
				scale = 0.5
			}
		}
	},
	input_fluid_patch_shadow_animations =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 100,
			height = 102,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(-1, -3),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 204,
				height = 206,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -2),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 102,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -2),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 204,
				height = 209,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -1.25),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 100,
			height = 98,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(-1, -1),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 204,
				height = 204,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(-0.5, -2.5),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-received-shadow.png",
			tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
			line_length = 8,
			width = 96,
			height = 99,
			frame_count = 64,
			animation_speed = 0.5,
			direction_count = 1,
			shift = util.by_pixel(0, -1.5),
			run_mode = "forward-then-backward",
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-received-shadow.png",
				tint = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
				line_length = 8,
				width = 198,
				height = 206,
				frame_count = 64,
				animation_speed = 0.5,
				direction_count = 1,
				shift = util.by_pixel(1, -2),
				run_mode = "forward-then-backward",
				scale = 0.5
			}
		}
	},
	input_fluid_patch_window_sprites =
	{
		north =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
			line_length = 1,
			width = 72,
			height = 54,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(-1, 1),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
				line_length = 1,
				width = 142,
				height = 107,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-1, 0.75),
				scale = 0.5
			}
		},
		east =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
			line_length = 1,
			width = 51,
			height = 74,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(-11.5, -11),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
				line_length = 1,
				width = 104,
				height = 147,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-11, -11.25),
				scale = 0.5
			}
		},
		south =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
			line_length = 1,
			width = 71,
			height = 44,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(-1.5, -29),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
				line_length = 1,
				width = 141,
				height = 86,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-1.75, -29),
				scale = 0.5
			}
		},
		west =
		{
			priority = "extra-high",
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
			line_length = 1,
			width = 41,
			height = 69,
			frame_count = 1,
			direction_count = 1,
			shift = util.by_pixel(11.5, -11.5),
			hr_version =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
				line_length = 1,
				width = 80,
				height = 137,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(11.5, -11.25),
				scale = 0.5
			}
		}
	},
	
	input_fluid_patch_window_flow_sprites =
	{
		{
			north =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
				line_length = 1,
				width = 68,
				height = 50,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, -1),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
					line_length = 1,
					width = 136,
					height = 99,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2.5, -0.75),
					scale = 0.5
				}
			},
			east =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
				line_length = 1,
				width = 41,
				height = 70,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-11.5, -11),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
					line_length = 1,
					width = 82,
					height = 139,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-11.5, -11.25),
					scale = 0.5
				}
			},
			south =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
				line_length = 1,
				width = 68,
				height = 40,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, -29),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
					line_length = 1,
					width = 136,
					height = 80,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2.5, -29.5),
					scale = 0.5
				}
			},
			west =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
				line_length = 1,
				width = 42,
				height = 70,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(11, -11),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
					line_length = 1,
					width = 83,
					height = 140,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(10.75, -11),
					scale = 0.5
				}
			}
		},
	},
	input_fluid_patch_window_base_sprites =
	{
		{
			north =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
				line_length = 1,
				width = 70,
				height = 48,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, 0),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
					line_length = 1,
					width = 138,
					height = 94,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2, 0),
					scale = 0.5
				}
			},
			east =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
				line_length = 1,
				width = 42,
				height = 70,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-12, -11),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
					line_length = 1,
					width = 84,
					height = 138,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-12, -11),
					scale = 0.5
				}
			},
			south =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
				line_length = 1,
				width = 70,
				height = 40,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(-2, -29),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
					line_length = 1,
					width = 138,
					height = 80,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(-2, -29),
					scale = 0.5
				}
			},
			west =
			{
				priority = "extra-high",
				filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
				line_length = 1,
				width = 42,
				height = 69,
				frame_count = 1,
				direction_count = 1,
				shift = util.by_pixel(12, -10.5),
				hr_version =
				{
					priority = "extra-high",
					filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
					line_length = 1,
					width = 83,
					height = 137,
					frame_count = 1,
					direction_count = 1,
					shift = util.by_pixel(11.75, -10.75),
					scale = 0.5
				}
			}
		},
	},
	mining_speed = 20,
	energy_source =
	{
		type = "electric",
		emissions = 0.02,
		usage_priority = "secondary-input"
	},
	energy_usage = "1MW",
	mining_power = 6.5,
	resource_searching_radius = 2.49,
	vector_to_place_result = {0, -1.85},
	module_specification =
	{
		module_slots = 4
	},
	radius_visualisation_picture =
	{
		filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
		width = 12,
		height = 12
	},
	monitor_visualization_tint = {r = 78, g = 173, b = 255},
	fast_replaceable_group = "mining-drill",
	circuit_wire_connection_points =
	{
		get_circuit_connector_wire_shifting_for_connector({-0.09375, -1.65625}, {-0.09375, -1.65625}, 4),
		get_circuit_connector_wire_shifting_for_connector({1.28125, -0.40625}, {1.28125, -0.40625}, 2),
		get_circuit_connector_wire_shifting_for_connector({0.09375, 1}, {0.09375, 1}, 0),
		get_circuit_connector_wire_shifting_for_connector({-1.3125, -0.3125}, {-1.3125, -0.3125}, 6)
	},
	circuit_connector_sprites =
	{
		get_circuit_connector_sprites({-0.09375, -1.65625}, {-0.09375, -1.65625}, 4),
		get_circuit_connector_sprites({1.28125, -0.40625}, {1.28125, -0.40625}, 2),
		get_circuit_connector_sprites({0.09375, 1}, {0.09375, 1}, 0),
		get_circuit_connector_sprites({-1.3125, -0.3125}, {-1.3125, -0.3125}, 6)
	},
	circuit_wire_max_distance = 9,
},

--Base "pumpjack" placeholder
--High-Pressure Pumpjack
{
	type = "mining-drill",
	name = "pumpjack-2",
	icon = "__xander-mod__/graphics/item/production/miner/pumpjack-2.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 1, result = "pumpjack-2"},
	resource_categories = {"basic-fluid", "advanced-fluid"},
	max_health = 400,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
	energy_source =
	{
		type = "electric",
		emissions = 0.02,
		usage_priority = "secondary-input"
	},
	output_fluid_box =
	{
		base_area = 1,
		base_level = 1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{
				positions = {{1, -2}, {2, -1}, {-1, 2}, {-2, 1}}
			}
		},
	},
	energy_usage = "200kW",
	mining_speed = 4,
	mining_power = 2,
	resource_searching_radius = 0.49,
	vector_to_place_result = {0, 0},
	module_specification =
	{
		module_slots = 4
	},
	radius_visualisation_picture =
	{
		filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
		width = 12,
		height = 12
	},
	monitor_visualization_tint = {r = 78, g = 173, b = 255},
	base_picture =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/production/pumpjack-2/base.png",
			priority = "extra-high",
			width = 114,
			height = 113,
			shift = util.by_pixel(6, -0.5)
		}
	},
	animations =
	{
		north =
		{
			priority = "extra-high",
			width = 116,
			height = 110,
			line_length = 10,
			shift = util.by_pixel(4, -23),
			filename = "__xander-mod__/graphics/entity/production/pumpjack-2/animation.png",
			frame_count = 40,
			animation_speed = 0.5
		}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/pumpjack.ogg"},
		apparent_volume = 1.5
	},
	fast_replaceable_group = "pumpjack",
	circuit_wire_connection_points =
	{
		get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
		get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
		get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
		get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2)
	},
	circuit_connector_sprites =
	{
		get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
		get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
		get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
		get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2)
	},
	circuit_wire_max_distance = 9
},
--Crude Burner Ore Sluice
{
	type = "assembling-machine",
	name = "ore-processor-0",
	icon = "__xander-mod__/graphics/item/production/miner/ore-processor-0.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "ore-processor-0"},
	max_health = 100,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "mining-drill",
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/ore-processor-0/0.png",
			width = 122,
			height = 134,
			frame_count = 1,
			shift = util.by_pixel(-5, -4.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/ore-processor-0/hr-0.png",
				width = 244,
				height = 268,
				frame_count = 1,
				shift = util.by_pixel(-5, -4.5),
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
			width = 175,
			height = 110,
			frame_count = 1,
			shift = util.by_pixel(31.5, 11),
			draw_as_shadow = true,
			hr_version =
			{
				filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
				width = 350,
				height = 219,
				frame_count = 1,
				shift = util.by_pixel(31.5, 10.75),
				draw_as_shadow = true,
				scale = 0.5
			}
		},
	}}),
	working_visualisations =
	{
		{
			north_position = util.by_pixel(30, -24),
			west_position = util.by_pixel(1, -49.5),
			south_position = util.by_pixel(-30, -48),
			east_position = util.by_pixel(-11, -1),
			apply_recipe_tint = "primary",
			animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch.png",
				frame_count = 32,
				width = 15,
				height = 10,
				animation_speed = 0.5,
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch.png",
					frame_count = 32,
					width = 30,
					height = 20,
					animation_speed = 0.5,
					scale = 0.5
				}
			}
		},
		{
			north_position = util.by_pixel(30, -24),
			west_position = util.by_pixel(1, -49.5),
			south_position = util.by_pixel(-30, -48),
			east_position = util.by_pixel(-11, -1),
			apply_recipe_tint = "secondary",
			animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch-mask.png",
				frame_count = 32,
				width = 15,
				height = 10,
				animation_speed = 0.5,
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch-mask.png",
					frame_count = 32,
					width = 30,
					height = 20,
					animation_speed = 0.5,
					scale = 0.5
				}
			}
		},
		{
			apply_recipe_tint = "tertiary",
			north_position = {0, 0},
			west_position = {0, 0},
			south_position = {0, 0},
			east_position = {0, 0},
			north_animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
				frame_count = 1,
				width = 87,
				height = 60,
				shift = util.by_pixel(0, -5),
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
					x = 0,
					frame_count = 1,
					width = 174,
					height = 119,
					shift = util.by_pixel(0, -5.25),
					scale = 0.5
				}
			},
			east_animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
				x = 87,
				frame_count = 1,
				width = 87,
				height = 60,
				shift = util.by_pixel(0, -5),
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
					x = 174,
					frame_count = 1,
					width = 174,
					height = 119,
					shift = util.by_pixel(0, -5.25),
					scale = 0.5
				}
			},
			south_animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
				x = 174,
				frame_count = 1,
				width = 87,
				height = 60,
				shift = util.by_pixel(0, -5),
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
					x = 348,
					frame_count = 1,
					width = 174,
					height = 119,
					shift = util.by_pixel(0, -5.25),
					scale = 0.5
				}
			}
		}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {{filename = "__base__/sound/chemical-plant.ogg", volume = 0.8}},
		idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
		apparent_volume = 1.5
	},
	crafting_speed = 0.5,
	energy_source =
	{
		type = "burner",
		fuel_category = "crude",
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions = 0.01,
		smoke =
		{
			{
				name = "smoke",
				deviation = {0.1, 0.1},
				frequency = 5,
				position = {0.0, -0.8},
				starting_vertical_speed = 0.08,
				starting_frame_deviation = 60
			}
		}
	},
	energy_usage = "200kW",
	ingredient_count = 2,
	crafting_categories = {"basic-sluice"},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {-1, -2}}}
		},
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {1, -2}}}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_level = 1,
			pipe_connections = {{position = {-1, 2}}}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_level = 1,
			pipe_connections = {{position = {1, 2}}}
		}
	}
},
--Electric Ore Sluice
{
	type = "assembling-machine",
	name = "ore-processor-1",
	icon = "__xander-mod__/graphics/item/production/miner/ore-processor-1.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "ore-processor-1"},
	max_health = 200,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "mining-drill",
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/ore-processor-1/1.png",
			width = 122,
			height = 134,
			frame_count = 1,
			shift = util.by_pixel(-5, -4.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/ore-processor-1/hr-1.png",
				width = 244,
				height = 268,
				frame_count = 1,
				shift = util.by_pixel(-5, -4.5),
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
			width = 175,
			height = 110,
			frame_count = 1,
			shift = util.by_pixel(31.5, 11),
			draw_as_shadow = true,
			hr_version =
			{
				filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
				width = 350,
				height = 219,
				frame_count = 1,
				shift = util.by_pixel(31.5, 10.75),
				draw_as_shadow = true,
				scale = 0.5
			}
		},
	}}),
	working_visualisations =
	{
		{
			north_position = util.by_pixel(30, -24),
			west_position = util.by_pixel(1, -49.5),
			south_position = util.by_pixel(-30, -48),
			east_position = util.by_pixel(-11, -1),
			apply_recipe_tint = "primary",
			animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch.png",
				frame_count = 32,
				width = 15,
				height = 10,
				animation_speed = 0.5,
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch.png",
					frame_count = 32,
					width = 30,
					height = 20,
					animation_speed = 0.5,
					scale = 0.5
				}
			}
		},
		{
			north_position = util.by_pixel(30, -24),
			west_position = util.by_pixel(1, -49.5),
			south_position = util.by_pixel(-30, -48),
			east_position = util.by_pixel(-11, -1),
			apply_recipe_tint = "secondary",
			animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch-mask.png",
				frame_count = 32,
				width = 15,
				height = 10,
				animation_speed = 0.5,
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch-mask.png",
					frame_count = 32,
					width = 30,
					height = 20,
					animation_speed = 0.5,
					scale = 0.5
				}
			}
		},
		{
			apply_recipe_tint = "tertiary",
			north_position = {0, 0},
			west_position = {0, 0},
			south_position = {0, 0},
			east_position = {0, 0},
			north_animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
				frame_count = 1,
				width = 87,
				height = 60,
				shift = util.by_pixel(0, -5),
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
					x = 0,
					frame_count = 1,
					width = 174,
					height = 119,
					shift = util.by_pixel(0, -5.25),
					scale = 0.5
				}
			},
			east_animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
				x = 87,
				frame_count = 1,
				width = 87,
				height = 60,
				shift = util.by_pixel(0, -5),
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
					x = 174,
					frame_count = 1,
					width = 174,
					height = 119,
					shift = util.by_pixel(0, -5.25),
					scale = 0.5
				}
			},
			south_animation =
			{
				filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
				x = 174,
				frame_count = 1,
				width = 87,
				height = 60,
				shift = util.by_pixel(0, -5),
				hr_version =
				{
					filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
					x = 348,
					frame_count = 1,
					width = 174,
					height = 119,
					shift = util.by_pixel(0, -5.25),
					scale = 0.5
				}
			}
		}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {{filename = "__base__/sound/chemical-plant.ogg", volume = 0.8}},
		idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
		apparent_volume = 1.5
	},
	crafting_speed = 1,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.02
	},
	energy_usage = "100kW",
	ingredient_count = 6,
	crafting_categories = {"basic-sluice", "sluice"},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {-1, -2}}}
		},
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {1, -2}}}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_level = 1,
			pipe_connections = {{position = {-1, 2}}}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_level = 1,
			pipe_connections = {{position = {1, 2}}}
		}
	}
},
--Integrated Ore Plant
{
	type = "assembling-machine",
	name = "ore-processor-2",
	icon = "__xander-mod__/graphics/item/production/miner/ore-processor-2.png",
	flags = {"placeable-neutral","player-creation"},
	minable = {mining_time = 1, result = "ore-processor-2"},
	max_health = 400,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	fast_replaceable_group = "mining-drill",
	module_specification =
	{
		module_slots = 3
	},
	scale_entity_info_icon = true,
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	crafting_categories = {"sluice", "ore-plant"},
	crafting_speed = 2,
	has_backer_name = true,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.01
	},
	energy_usage = "400kW",
	ingredient_count = 6,
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/ore-processor-2/2.png",
			width = 337,
			height = 255,
			frame_count = 1,
			shift = {2.515625, 0.484375},
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/ore-processor-2/hr-2.png",
				width = 386,
				height = 430,
				frame_count = 1,
				shift = util.by_pixel(0, -7.5),
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
			width = 337,
			height = 213,
			frame_count = 1,
			shift = util.by_pixel(82.5, 26.5),
			draw_as_shadow = true,
			hr_version =
			{
				filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
				width = 674,
				height = 426,
				frame_count = 1,
				shift = util.by_pixel(82.5, 26.5),
				draw_as_shadow = true,
				scale = 0.5
			}
		}
	}}),
	working_visualisations =
	{
		{
			north_position = util.by_pixel(34, -65),
			east_position = util.by_pixel(-52, -61),
			south_position = util.by_pixel(-59, -82),
			west_position = util.by_pixel(57, -58),
			animation =
			{
				filename = "__xander-mod__/graphics/entity/production/ore-processor-2/dust.png",
				line_length = 10,
				width = 20,
				height = 40,
				frame_count = 60,
				animation_speed = 0.75,
				shift = util.by_pixel(0, -14),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/ore-processor-2/hr-dust.png",
					line_length = 10,
					width = 40,
					height = 81,
					frame_count = 60,
					animation_speed = 0.75,
					scale = 0.5,
					shift = util.by_pixel(0, -14.25)
				},
			},
			light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
		}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/oil-refinery.ogg"},
		idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
		apparent_volume = 2.5,
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {-2, 3}}}
		},
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {0, 3}}}
		},
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {2, 3}}}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_level = 1,
			pipe_connections = {{position = {-2, -3}}}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_level = 1,
			pipe_connections = {{position = {0, -3}}}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_level = 1,
			pipe_connections = {{position = {2, -3}}}
		}
	},
	pipe_covers = pipecoverspictures()
}

}
)