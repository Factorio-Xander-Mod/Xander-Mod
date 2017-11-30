
--Base Overrides

--Base "stone-furnace"
data.raw.furnace["stone-furnace"].crafting_categories = {"empty"}
-- remove placeable-* flags to remove need for item to place it
data.raw.furnace["stone-furnace"].flags = {}

--Base "steel-furnace"
data.raw.furnace["steel-furnace"].crafting_categories = {"empty"}

--Base "electric-furnace"
data.raw.furnace["electric-furnace"].crafting_categories = {"empty"}


data:extend(
{

--Base "stone-furnace" placeholder
--Assembler-Type Stone Furnace (replaces base "stone-furnace")
--placed by stone-furnace item
{
	type = "assembling-machine",
	name = "furnace-1",
	icon = "__xander-mod__/graphics/item/production/furnace/furnace-1.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "stone-furnace"},
	dying_explosion = "medium-explosion",
	corpse = "medium-remnants",
	max_health = 50,
	--light = {intensity = 1, size = 10}, (?)
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
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-0.8, -1}, {0.8, 1}},
	fast_replaceable_group = "furnace",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/furnace-1/1.png",
				priority = "extra-high",
				width = 81,
				height = 64,
				frame_count = 1,
				shift = {0.515625, 0.0625},
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/furnace-1/hr-1.png",
					priority = "extra-high",
					width = 151,
					height = 146,
					frame_count = 1,
					shift = util.by_pixel(-0.25, 6),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
				priority = "extra-high",
				width = 81,
				height = 64,
				frame_count = 1,
				draw_as_shadow = true,
				shift = {0.515625, 0.0625},
				hr_version =
				{
					filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
					priority = "extra-high",
					width = 164,
					height = 74,
					frame_count = 1,
					draw_as_shadow = true,
					shift = util.by_pixel(14.5, 13),
					scale = 0.5
				}
			}
		}
	},
	working_visualisations =
	{
		{
			animation =
			{
				filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
				priority = "extra-high",
				line_length = 8,
				width = 20,
				height = 49,
				frame_count = 48,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(2, 5.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
					priority = "extra-high",
					line_length = 8,
					width = 41,
					height = 100,
					frame_count = 48,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(-0.75, 5.5),
					scale = 0.5
				}
			},
			light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
		},
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound =	{filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0},
	repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
	mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
	working_sound = {sound = {filename = "__base__/sound/furnace.ogg"}},
	crafting_categories = {"kiln"},
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
	energy_usage = "500kW",
	ingredient_count = 4
},
--Clay Brick Furnace (Assembler-Type)
{
	type = "assembling-machine",
	name = "furnace-2",
	icon = "__xander-mod__/graphics/item/production/furnace/furnace-2.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "furnace-2"},
	dying_explosion = "medium-explosion",
	corpse = "medium-remnants",
	max_health = 100,
	--light = {intensity = 1, size = 10}, (?)
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
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-0.8, -1}, {0.8, 1}},
	fast_replaceable_group = "furnace",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/furnace-2/2.png",
				priority = "extra-high",
				width = 81,
				height = 64,
				frame_count = 1,
				shift = {0.515625, 0.0625},
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/furnace-2/hr-2.png",
					priority = "extra-high",
					width = 151,
					height = 146,
					frame_count = 1,
					shift = util.by_pixel(-0.25, 6),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
				priority = "extra-high",
				width = 81,
				height = 64,
				frame_count = 1,
				draw_as_shadow = true,
				shift = {0.515625, 0.0625},
				hr_version =
				{
					filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
					priority = "extra-high",
					width = 164,
					height = 74,
					frame_count = 1,
					draw_as_shadow = true,
					shift = util.by_pixel(14.5, 13),
					scale = 0.5
				}
			}
		}
	},
	working_visualisations =
	{
		{
			animation =
			{
				filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
				priority = "extra-high",
				line_length = 8,
				width = 20,
				height = 49,
				frame_count = 48,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(2, 5.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
					priority = "extra-high",
					line_length = 8,
					width = 41,
					height = 100,
					frame_count = 48,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(-0.75, 5.5),
					scale = 0.5
				}
			},
			light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
		},
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound =	{filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0},
	repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
	mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
	working_sound = {sound = {filename = "__base__/sound/furnace.ogg"}},
	crafting_categories = {"kiln", "smelting"},
	crafting_speed = 1,
	energy_source =
	{
		type = "burner",
		fuel_category = "chemical",
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
	energy_usage = "1MW",
	ingredient_count = 4
},
--Base "steel-furnace" placeholder
--Assembler-Type Blast Furnace
{
	type = "assembling-machine",
	name = "furnace-3",
	icon = "__base__/graphics/icons/steel-furnace.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "furnace-3"},
	dying_explosion = "medium-explosion",
	corpse = "medium-remnants",
	max_health = 200,
	--light = {intensity = 1, size = 10}, (?)
	resistances =
	{
		{
			type = "fire",
			percent = 100
		}
	},
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-0.8, -1}, {0.8, 1}},
	fast_replaceable_group = "furnace",
	animation =
	{
		layers =
		{
			{
				filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
				priority = "high",
				width = 85,
				height = 87,
				frame_count = 1,
				shift = util.by_pixel(-1.5, 1.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
					priority = "high",
					width = 171,
					height = 174,
					frame_count = 1,
					shift = util.by_pixel(-1.25, 2),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
				priority = "high",
				width = 139,
				height = 43,
				frame_count = 1,
				draw_as_shadow = true,
				shift = util.by_pixel(39.5, 11.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
					priority = "high",
					width = 277,
					height = 85,
					frame_count = 1,
					draw_as_shadow = true,
					shift = util.by_pixel(39.25, 11.25),
					scale = 0.5
				}
			}
		}
	},
	working_visualisations =
	{
		{
			north_position = {0.0, 0.0},
			east_position = {0.0, 0.0},
			south_position = {0.0, 0.0},
			west_position = {0.0, 0.0},
			animation =
			{
				filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
				priority = "high",
				line_length = 8,
				width = 29,
				height = 40,
				frame_count = 48,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(-0.5, 6),
				hr_version =
				{
					filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
					priority = "high",
					line_length = 8,
					width = 57,
					height = 81,
					frame_count = 48,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(-0.75, 5.75),
					scale = 0.5
				}
			},
			light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
		},
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
	mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
	working_sound = {sound = {filename = "__base__/sound/furnace.ogg"}},
	crafting_categories = {"kiln", "smelting", "basic-refining"},
	crafting_speed = 2,
	energy_source =
	{
		type = "burner",
		fuel_category = "chemical",
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions = 0.004,
		smoke =
		{
			{
				name = "smoke",
				frequency = 10,
				position = {0.7, -1.2},
				starting_vertical_speed = 0.08,
				starting_frame_deviation = 60
			}
		}
	},
	energy_usage = "2MW",
	ingredient_count = 4
},
--Electric Refining Furnace
{
	type = "assembling-machine",
	name = "furnace-4",
	icon = "__xander-mod__/graphics/item/production/furnace/furnace-4.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "furnace-4"},
	dying_explosion = "medium-explosion",
	corpse = "big-remnants",
	max_health = 500,
	--light = {intensity = 1, size = 10}, (?)
	resistances =
	{
		{
			type = "fire",
			percent = 80
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
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
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
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type="input", position = {0, -2}}},
			secondary_draw_orders = {north = -1}
		},
		{
			production_type = "output",
			pipe_picture =
			{
				north =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
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
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{type = "output", position = {0, 2}}},
			secondary_draw_orders = { north = -1 }
		},
		off_when_no_fluid_recipe = true
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "furnace",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/furnace-4/4.png",
				priority = "high",
				width = 129,
				height = 100,
				frame_count = 1,
				shift = {0.421875, 0},
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/furnace-4/hr-4.png",
					priority = "high",
					width = 239,
					height = 219,
					frame_count = 1,
					shift = util.by_pixel(0.75, 5.75),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
				priority = "high",
				width = 129,
				height = 100,
				frame_count = 1,
				shift = {0.421875, 0},
				draw_as_shadow = true,
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
					priority = "high",
					width = 227,
					height = 171,
					frame_count = 1,
					draw_as_shadow = true,
					shift = util.by_pixel(11.25, 7.75),
					scale = 0.5
				}
			}
		}
	},
	working_visualisations =
	{
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
				priority = "high",
				width = 25,
				height = 15,
				frame_count = 12,
				animation_speed = 0.5,
				shift = {0.015625, 0.890625},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
					priority = "high",
					width = 60,
					height = 56,
					frame_count = 12,
					animation_speed = 0.5,
					shift = util.by_pixel(1.75, 32.75),
					scale = 0.5
				}
			},
			light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
		},
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
				priority = "high",
				width = 19,
				height = 13,
				frame_count = 4,
				animation_speed = 0.5,
				shift = {-0.671875, -0.640625},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
					priority = "high",
					width = 37,
					height = 25,
					frame_count = 4,
					animation_speed = 0.5,
					shift = util.by_pixel(-20.5, -18.5),
					scale = 0.5
				}
			}
		},
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
				priority = "high",
				width = 12,
				height = 9,
				frame_count = 4,
				animation_speed = 0.5,
				shift = {0.0625, -1.234375},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
					priority = "high",
					width = 23,
					height = 15,
					frame_count = 4,
					animation_speed = 0.5,
					shift = util.by_pixel(3.5, -38),
					scale = 0.5
				}
			}
		}
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound =
		{
			{filename = "__base__/sound/electric-furnace.ogg", volume = 0.7}
		}
	},
	crafting_categories = {"refining"},
	crafting_speed = 2,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.002
	},
	energy_usage = "1MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"}
},
--Base "electric-furnace" (DISABLED via NO RECIPE FOR THE ITEM TO PLACE IT) placeholder
--Electric Foundry-Forge - more capable entity taking the place of the base "electric-furnace"
{
	type = "assembling-machine",
	name = "furnace-5",
	icon = "__base__/graphics/icons/electric-furnace.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "furnace-5"},
	dying_explosion = "medium-explosion",
	corpse = "big-remnants",
	max_health = 500,
	--light = {intensity = 1, size = 10}, (?)
	resistances =
	{
		{
			type = "fire",
			percent = 80
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
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type = "input", position = {0, -2}}},
			secondary_draw_orders = {north = -1}
		},
		{
			production_type = "output",
			pipe_picture =
			{
				north =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{type = "output", position = {0, 2}}},
			secondary_draw_orders = { north = -1 }
		},
		off_when_no_fluid_recipe = true
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "furnace",
	animation =
	{
		layers =
		{
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
				priority = "high",
				width = 129,
				height = 100,
				frame_count = 1,
				shift = {0.421875, 0},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
					priority = "high",
					width = 239,
					height = 219,
					frame_count = 1,
					shift = util.by_pixel(0.75, 5.75),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
				priority = "high",
				width = 129,
				height = 100,
				frame_count = 1,
				shift = {0.421875, 0},
				draw_as_shadow = true,
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
					priority = "high",
					width = 227,
					height = 171,
					frame_count = 1,
					draw_as_shadow = true,
					shift = util.by_pixel(11.25, 7.75),
					scale = 0.5
				}
			}
		}
	},
	working_visualisations =
	{
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
				priority = "high",
				width = 25,
				height = 15,
				frame_count = 12,
				animation_speed = 0.5,
				shift = {0.015625, 0.890625},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
					priority = "high",
					width = 60,
					height = 56,
					frame_count = 12,
					animation_speed = 0.5,
					shift = util.by_pixel(1.75, 32.75),
					scale = 0.5
				}
			},
			light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
		},
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
				priority = "high",
				width = 19,
				height = 13,
				frame_count = 4,
				animation_speed = 0.5,
				shift = {-0.671875, -0.640625},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
					priority = "high",
					width = 37,
					height = 25,
					frame_count = 4,
					animation_speed = 0.5,
					shift = util.by_pixel(-20.5, -18.5),
					scale = 0.5
				}
			}
		},
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
				priority = "high",
				width = 12,
				height = 9,
				frame_count = 4,
				animation_speed = 0.5,
				shift = {0.0625, -1.234375},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
					priority = "high",
					width = 23,
					height = 15,
					frame_count = 4,
					animation_speed = 0.5,
					shift = util.by_pixel(3.5, -38),
					scale = 0.5
				}
			}
		}
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/electric-furnace.ogg", volume = 0.7}
	},
	crafting_categories = {"forge"},
	crafting_speed = 2,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.002
	},
	energy_usage = "1MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"}
},
--Arc Furnace
{
	type = "assembling-machine",
	name = "furnace-6",
	icon = "__xander-mod__/graphics/item/production/furnace/furnace-6.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "furnace-6"},
	dying_explosion = "medium-explosion",
	corpse = "big-remnants",
	max_health = 1000,
	--light = {intensity = 1, size = 10}, (?)
	resistances =
	{
		{
			type = "fire",
			percent = 80
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
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type="input", position = {0, -2}}},
			secondary_draw_orders = {north = -1}
		},
		{
			production_type = "output",
			pipe_picture =
			{
				north =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{type = "output", position = {0, 2}}},
			secondary_draw_orders = { north = -1 }
		},
		off_when_no_fluid_recipe = true
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "furnace",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/furnace-6/6.png",
				priority = "high",
				width = 129,
				height = 100,
				frame_count = 1,
				shift = {0.421875, 0},
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/furnace-6/hr-6.png",
					priority = "high",
					width = 239,
					height = 219,
					frame_count = 1,
					shift = util.by_pixel(0.75, 5.75),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
				priority = "high",
				width = 129,
				height = 100,
				frame_count = 1,
				shift = {0.421875, 0},
				draw_as_shadow = true,
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
					priority = "high",
					width = 227,
					height = 171,
					frame_count = 1,
					draw_as_shadow = true,
					shift = util.by_pixel(11.25, 7.75),
					scale = 0.5
				}
			}
		}
	},
	working_visualisations =
	{
		{
			animation =
			{
				filename = "__xander-mod__/graphics/entity/production/furnace-6/heater.png",
				priority = "high",
				width = 25,
				height = 15,
				frame_count = 12,
				animation_speed = 0.5,
				shift = {0.015625, 0.890625},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
					priority = "high",
					width = 60,
					height = 56,
					frame_count = 12,
					animation_speed = 0.5,
					shift = util.by_pixel(1.75, 32.75),
					scale = 0.5
				}
			},
			light = {intensity = 1, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
		},
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
				priority = "high",
				width = 19,
				height = 13,
				frame_count = 4,
				animation_speed = 0.5,
				shift = {-0.671875, -0.640625},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
					priority = "high",
					width = 37,
					height = 25,
					frame_count = 4,
					animation_speed = 0.5,
					shift = util.by_pixel(-20.5, -18.5),
					scale = 0.5
				}
			}
		},
		{
			animation =
			{
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
				priority = "high",
				width = 12,
				height = 9,
				frame_count = 4,
				animation_speed = 0.5,
				shift = {0.0625, -1.234375},
				hr_version =
				{
					filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
					priority = "high",
					width = 23,
					height = 15,
					frame_count = 4,
					animation_speed = 0.5,
					shift = util.by_pixel(3.5, -38),
					scale = 0.5
				}
			}
		}
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound =
		{
			{filename = "__base__/sound/electric-furnace.ogg", volume = 0.7}
		}
	},
	crafting_categories = {"refining", "forge"},
	crafting_speed = 4,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.0008
	},
	energy_usage = "2MW",
	ingredient_count = 8,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"}
}

}
)
