
--Base Overrides

--Base "chemical-plant"
data.raw["assembling-machine"]["chemical-plant"].max_health = 100
data.raw["assembling-machine"]["chemical-plant"].module_specification.module_slots = 0
data.raw["assembling-machine"]["chemical-plant"].crafting_speed = 0.5
data.raw["assembling-machine"]["chemical-plant"].energy_source =
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
}
data.raw["assembling-machine"]["chemical-plant"].energy_usage = "200kW"

--Base "centrifuge" 
data.raw["assembling-machine"]["centrifuge"].max_health = 500
data.raw["assembling-machine"]["centrifuge"].crafting_speed = 0.5
data.raw["assembling-machine"]["centrifuge"].energy_source.emissions = 0.004
data.raw["assembling-machine"]["centrifuge"].energy_usage = "100kW"

--Base "oil-refinery"
data.raw["assembling-machine"]["oil-refinery"].max_health = 500
data.raw["assembling-machine"]["oil-refinery"].energy_source.emissions = 0.004
data.raw["assembling-machine"]["oil-refinery"].energy_usage = "400kW"


data:extend(
{

--Base "chemical-plant" placeholder
--Standard Chemical Reactor
{
	type = "assembling-machine",
	name = "reactor-1",
	icon = "__xander-mod__/graphics/item/production/chemical/reactor-1.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "reactor-1"},
	max_health = 200,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "reactor",
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/reactor-1/1.png",
			width = 122,
			height = 134,
			frame_count = 1,
			shift = util.by_pixel(-5, -4.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/reactor-1/hr-1.png",
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
		emissions = 0.002
	},
	energy_usage = "200kW",
	ingredient_count = 4,
	crafting_categories = {"basic-chemistry", "chemistry"},
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
--Catalytic Reactor
{
	type = "assembling-machine",
	name = "reactor-2",
	icon = "__xander-mod__/graphics/item/production/chemical/reactor-2.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "reactor-2"},
	max_health = 400,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "reactor",
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/reactor-2/2.png",
			width = 122,
			height = 134,
			frame_count = 1,
			shift = util.by_pixel(-5, -4.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/reactor-2/hr-2.png",
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
	crafting_speed = 2,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.002
	},
	energy_usage = "400kW",
	ingredient_count = 6,
	crafting_categories = {"chemistry"},
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
--Basic Electrolyzer
{
	type = "assembling-machine",
	name = "electrolyzer-1",
	icon = "__xander-mod__/graphics/item/production/chemical/electrolyzer-1.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "electrolyzer-1"},
	max_health = 200,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "electrolyzer",
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/electrolyzer-1/1.png",
			width = 122,
			height = 134,
			frame_count = 1,
			shift = util.by_pixel(-5, -4.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/electrolyzer-1/hr-1.png",
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
		emissions = 0.002
	},
	energy_usage = "500kW",
	ingredient_count = 4,
	crafting_categories = {"electrolysis"},
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
--Advanced Electrolyzer
{
	type = "assembling-machine",
	name = "electrolyzer-2",
	icon = "__xander-mod__/graphics/item/production/chemical/electrolyzer-2.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "electrolyzer-2"},
	max_health = 400,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "electrolyzer",
	module_specification =
	{
		module_slots = 3
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/electrolyzer-2/2.png",
			width = 122,
			height = 134,
			frame_count = 1,
			shift = util.by_pixel(-5, -4.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/electrolyzer-2/hr-2.png",
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
	crafting_speed = 2,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.0008
	},
	energy_usage = "1MW",
	ingredient_count = 6,
	crafting_categories = {"electrolysis"},
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
--Base "centrifuge" placeholder
--Base "oil-refinery" placeholder
--XM Integrated Chemical Plant
{
	type = "assembling-machine",
	name = "reactor-3",
	icon = "__xander-mod__/graphics/item/production/chemical/reactor-3.png",
	flags = {"placeable-neutral","player-creation"},
	minable = {mining_time = 1, result = "reactor-3"},
	max_health = 1000,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	module_specification =
	{
		module_slots = 3
	},
	scale_entity_info_icon = true,
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	crafting_categories = {"chemistry", "oil-processing", "chemical-plant"},
	crafting_speed = 4,
	has_backer_name = true,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.004
	},
	energy_usage = "1MW",
	ingredient_count = 8,
	animation = make_4way_animation_from_spritesheet({layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/reactor-3/3.png",
			width = 337,
			height = 255,
			frame_count = 1,
			shift = {2.515625, 0.484375},
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/reactor-3/hr-3.png",
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
				filename = "__xander-mod__/graphics/entity/production/reactor-3/steam.png",
				line_length = 10,
				width = 20,
				height = 40,
				frame_count = 60,
				animation_speed = 0.75,
				shift = util.by_pixel(0, -14),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/reactor-3/hr-steam.png",
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