local xmutil = require("xmutil")

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
xmutil.clone("offshore-pump", "offshore-pump",
	{
		{
			"__base__/graphics/entity/offshore-pump/offshore-pump.png",
			"__xander-mod__/graphics/entity/production/offshore-pump-1/1.png",
		},
	},
	{
		name = "offshore-pump-1",
		icon = "__xander-mod__/graphics/item/production/miner/offshore-pump-1.png",
		minable = {mining_time = 1, result = "offshore-pump-1"},
		max_health = 200,
		pumping_speed = 20,
	}
),
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
--Base "electric-mining-drill" placeholder
--Electric Shovel Excavator
xmutil.clone("mining-drill", "electric-mining-drill",
	{
		{
			"__base__/graphics/icon/electric-mining-drill.png",
			"__xander-mod__/graphics/item/production/miner/mining-drill-3.png",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/electric-mining-drill-",
			"__xander-mod__/graphics/entity/production/mining-drill-3/",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-",
			"__xander-mod__/graphics/entity/production/mining-drill-3/hr-",
		},
	},
	{
		name = "mining-drill-3",
		minable = {mining_time = 1, result = "mining-drill-3"},
		max_health = 400,
		resource_categories = {"basic-solid", "hard-solid", "tough-solid"},
		mining_speed = 4,
		energy_source = { emissions = 0.02 },
		energy_usage = "400kW",
		mining_power = 4.5,
	}
),
--Bucket Wheel Excavator
xmutil.clone("mining-drill", "electric-mining-drill",
	{
		{
			"__base__/graphics/icon/electric-mining-drill.png",
			"__xander-mod__/graphics/item/production/miner/mining-drill-4.png",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/electric-mining-drill-",
			"__xander-mod__/graphics/entity/production/mining-drill-4/",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-",
			"__xander-mod__/graphics/entity/production/mining-drill-4/hr-",
		},
	},
	{
		name = "mining-drill-4",
		minable = {mining_time = 1, result = "mining-drill-4"},
		max_health = 1000,
		resource_categories = {"basic-solid", "hard-solid", "tough-solid"},
		mining_speed = 20,
		energy_source = { emissions = 0.02 },
		energy_usage = "1MW",
		mining_power = 6.5,
	}
),

--Base "pumpjack" placeholder
--High-Pressure Pumpjack
xmutil.clone("mining-drill", "pumpjack",
	{
		{
			"__base__/graphics/icon/pumpjack.png",
			"__xander-mod__/graphics/item/production/miner/pumpjack-2.png",
		},
		{
			"__base__/graphics/entity/pumpjack/pumpjack-base.png",
			"__xander-mod__/graphics/entity/production/pumpjack-2/base.png",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-",
			"__xander-mod__/graphics/entity/production/mining-drill-4/hr-",
		},
	},
	{
		name = "pumpjack-2",
		minable = {mining_time = 1, result = "pumpjack-2"},
		max_health = 400,
		resource_categories = {"basic-fluid", "advanced-fluid"},
		mining_speed = 4,
		energy_source = { emissions = 0.02 },
		energy_usage = "200kW",
		mining_power = 2,
		module_specification = { module_slots = 4 },
		base_picture = {
			sheets = {
				{
					filename = "__xander-mod__/graphics/entity/production/pumpjack-2/base.png",
					hr_version = xmutil.NIL,
				},
			},
		},
		animations = {
			north = {
				layers = {
					{
						filename = "__xander-mod__/graphics/entity/production/pumpjack-2/animation.png",
						hr_version = xmutil.NIL,
					},
				},
			},
		},
	}
),
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