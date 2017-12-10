
--Base Overrides

--Base "assembling-machine-1"
data.raw["assembling-machine"]["assembling-machine-1"].icon = "__xander-mod__/graphics/item/production/production/assembling-machine-1.png"
data.raw["assembling-machine"]["assembling-machine-1"].max_health = 100
data.raw["assembling-machine"]["assembling-machine-1"].animation =
{
	layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/assembling-machine-1/1.png",
			priority = "high",
			width = 108,
			height = 114,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, 2),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-1/hr-1.png",
				priority="high",
				width = 214,
				height = 226,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 2),
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
			priority = "high",
			width = 95,
			height = 83,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(8.5, 5.5),
			hr_version =
			{
				filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
				priority="high",
				width = 190,
				height = 165,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(8.5, 5),
				scale = 0.5
			}
		},
	},
}
data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories = {"basic-crafting", "crafting", "machine-crafting"}
data.raw["assembling-machine"]["assembling-machine-1"].energy_source.emissions = 0.01
data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "50kW"
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 4

--Base "assembling-machine-2"
data.raw["assembling-machine"]["assembling-machine-2"].icon = "__xander-mod__/graphics/item/production/production/assembling-machine-2.png"
data.raw["assembling-machine"]["assembling-machine-2"].max_health = 200
data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes =
{
	{
		production_type = "input",
		pipe_picture = assembler2pipepictures(),
		pipe_picture =
		{
			north =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-N.png",
				priority = "extra-high",
				width = 35,
				height = 18,
				shift = util.by_pixel(2.5, 14),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-N.png",
					priority = "extra-high",
					width = 71,
					height = 38,
					shift = util.by_pixel(2.25, 13.5),
					scale = 0.5,
				}
			},
			east =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-E.png",
				priority = "extra-high",
				width = 20,
				height = 38,
				shift = util.by_pixel(-25, 1),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-E.png",
					priority = "extra-high",
					width = 42,
					height = 76,
					shift = util.by_pixel(-24.5, 1),
					scale = 0.5,
				}
			},
			south =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-S.png",
				priority = "extra-high",
				width = 44,
				height = 31,
				shift = util.by_pixel(0, -31.5),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-S.png",
					priority = "extra-high",
					width = 88,
					height = 61,
					shift = util.by_pixel(0, -31.25),
					scale = 0.5,
				}
			},
			west =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-W.png",
				priority = "extra-high",
				width = 19,
				height = 37,
				shift = util.by_pixel(25.5, 1.5),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-W.png",
					priority = "extra-high",
					width = 39,
					height = 73,
					shift = util.by_pixel(25.75, 1.25),
					scale = 0.5,
				}
			}
		},
		base_area = 10,
		base_level = -1,
		pipe_connections = {{ type="input", position = {0, -2} }},
		secondary_draw_orders = { north = -1 }
	},
	{
		production_type = "output",
		pipe_picture =
		{
			north =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-N.png",
				priority = "extra-high",
				width = 35,
				height = 18,
				shift = util.by_pixel(2.5, 14),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-N.png",
					priority = "extra-high",
					width = 71,
					height = 38,
					shift = util.by_pixel(2.25, 13.5),
					scale = 0.5,
				}
			},
			east =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-E.png",
				priority = "extra-high",
				width = 20,
				height = 38,
				shift = util.by_pixel(-25, 1),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-E.png",
					priority = "extra-high",
					width = 42,
					height = 76,
					shift = util.by_pixel(-24.5, 1),
					scale = 0.5,
				}
			},
			south =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-S.png",
				priority = "extra-high",
				width = 44,
				height = 31,
				shift = util.by_pixel(0, -31.5),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-S.png",
					priority = "extra-high",
					width = 88,
					height = 61,
					shift = util.by_pixel(0, -31.25),
					scale = 0.5,
				}
			},
			west =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/pipe-W.png",
				priority = "extra-high",
				width = 19,
				height = 37,
				shift = util.by_pixel(25.5, 1.5),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-pipe-W.png",
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
}
data.raw["assembling-machine"]["assembling-machine-2"].animation =
{
	layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/2.png",
			priority = "high",
			width = 108,
			height = 110,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, 4),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-2/hr-2.png",
				priority = "high",
				width = 214,
				height = 218,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 4),
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
			priority = "high",
			width = 98,
			height = 82,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(12, 5),
			hr_version =
			{
				filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
				priority = "high",
				width = 196,
				height = 163,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(12, 4.75),
				scale = 0.5
			}
		},
	},
}
data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories = {"crafting", "crafting-with-fluid", "machine-crafting"}
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 1
data.raw["assembling-machine"]["assembling-machine-2"].energy_source.emissions = 0.008
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "100kW"
data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 6

--Base "assembling-machine-3"
data.raw["assembling-machine"]["assembling-machine-3"].icon = "__xander-mod__/graphics/item/production/production/assembling-machine-3.png"
data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes =
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
		base_area = 10,
		base_level = -1,
		pipe_connections = {{ type="input", position = {0, -2} }},
		secondary_draw_orders = { north = -1 }
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
}
data.raw["assembling-machine"]["assembling-machine-3"].animation =
{
	layers =
	{
		{
			filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/3.png",
			priority = "high",
			width = 108,
			height = 119,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, -0.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-3/hr-3.png",
				priority = "high",
				width = 214,
				height = 237,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, -0.75),
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
			priority = "high",
			width = 130,
			height = 82,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(28, 4),
			hr_version =
			{
				filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
				priority = "high",
				width = 260,
				height = 162,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(28, 4),
				scale = 0.5
			}
		},
	},
}
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 2
data.raw["assembling-machine"]["assembling-machine-3"].energy_source.emissions = 0.004
data.raw["assembling-machine"]["assembling-machine-3"].energy_usage = "200kW"
data.raw["assembling-machine"]["assembling-machine-3"].module_specification.module_slots = 3
data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid", "machine-crafting"}

--Base "lab"
data.raw.lab["lab"].max_health = 200
data.raw.lab["lab"].light = {intensity = 1, size = 10, color = {r = 1.0, g = 1.0, b = 1.0}}
data.raw.lab["lab"].energy_usage = "50kW"

--Base "beacon"
data.raw.beacon["beacon"].energy_usage = "500kW"

--Base "rocket-silo"
data.raw["rocket-silo"]["rocket-silo"].ingredient_count = 5
data.raw["rocket-silo"]["rocket-silo"].energy_usage = "2MW"
data.raw["rocket-silo"]["rocket-silo"].idle_energy_usage = "30kW"
data.raw["rocket-silo"]["rocket-silo"].lamp_energy_usage = "20kW"
data.raw["rocket-silo"]["rocket-silo"].active_energy_usage = "4MW"

data:extend(
{

--Burner Machine Tool (Crude)
{
	type = "assembling-machine",
	name = "machine-tool-0",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-0.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "machine-tool-0"},
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
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/machine-tool-0/0.png",
				priority = "high",
				width = 108,
				height = 114,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 2),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-0/hr-0.png",
					priority = "high",
					width = 214,
					height = 226,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, 2),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
				priority = "high",
				width = 95,
				height = 83,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(8.5, 5.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
					priority = "high",
					width = 190,
					height = 165,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(8.5, 5),
					scale = 0.5
				}
			}
		}
	},
	crafting_categories = {"basic-machine", "machine"},
	crafting_speed = 0.5,
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
	energy_usage = "200kW",
	ingredient_count = 4,
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
--Basic Lathe Mill
{
	type = "assembling-machine",
	name = "machine-tool-1",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-1.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "machine-tool-1"},
	max_health = 100,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	resistances =
	{
		{
			type = "fire",
			percent = 70
		}
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/machine-tool-1/1.png",
				priority = "high",
				width = 108,
				height = 114,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 2),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-1/hr-1.png",
					priority = "high",
					width = 214,
					height = 226,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, 2),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
				priority = "high",
				width = 95,
				height = 83,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(8.5, 5.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
					priority = "high",
					width = 190,
					height = 165,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(8.5, 5),
					scale = 0.5
				}
			}
		}
	},
	crafting_categories = {"basic-machine", "machine"},
	crafting_speed = 1,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.01
	},
	energy_usage = "100kW",
	ingredient_count = 4,
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
--Universal Machine Tool
{
	type = "assembling-machine",
	name = "machine-tool-2",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-2.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "machine-tool-2"},
	max_health = 200,
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
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-W.png",
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
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-pipe-W.png",
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
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/machine-tool-2/2.png",
				priority = "high",
				width = 108,
				height = 110,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 4),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-2/hr-2.png",
					priority = "high",
					width = 214,
					height = 218,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, 4),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
				priority = "high",
				width = 98,
				height = 82,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(12, 5),
				hr_version =
				{
					filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
					priority = "high",
					width = 196,
					height = 163,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(12, 4.75),
					scale = 0.5
				}
			},
		},
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = 
		{
			{filename = "__base__/sound/assembling-machine-t2-1.ogg", volume = 0.8},
			{filename = "__base__/sound/assembling-machine-t2-2.ogg", volume = 0.8}
		},
		idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
		apparent_volume = 1.5
	},
	crafting_categories = {"machine", "advanced-machine"},
	crafting_speed = 2,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.004
	},
	energy_usage = "200kW",
	ingredient_count = 4,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"}
},
--CNC Machine Tool
{
	type = "assembling-machine",
	name = "machine-tool-3",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-3.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "machine-tool-3"},
	max_health = 500,
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
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-W.png",
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
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/machine-tool-3/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-pipe-W.png",
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
			secondary_draw_orders = {north = -1}
		},
		off_when_no_fluid_recipe = true
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound =
		{
			{filename = "__base__/sound/assembling-machine-t3-1.ogg", volume = 0.8},
			{filename = "__base__/sound/assembling-machine-t3-2.ogg", volume = 0.8}
		},
		idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
		apparent_volume = 1.5,
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/machine-tool-3/3.png",
				priority = "high",
				width = 108,
				height = 119,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, -0.5),
				hr_version = {
				filename = "__xander-mod__/graphics/entity/production/machine-tool-3/hr-3.png",
				priority = "high",
				width = 214,
				height = 237,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, -0.75),
				scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
				priority = "high",
				width = 130,
				height = 82,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(28, 4),
				hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
				priority = "high",
				width = 260,
				height = 162,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(28, 4),
				scale = 0.5
				}
			},
		},
	},
	crafting_categories = {"machine", "advanced-machine"},
	crafting_speed = 4,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.002
	},
	energy_usage = "400kW",
	ingredient_count = 8,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"}
},
--Burner Assembling Machine (tier 0)
{
	type = "assembling-machine",
	name = "assembling-machine-0",
	icon = "__base__/graphics/icons/assembling-machine-1.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-0"},
	max_health = 100,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	resistances =
	{
		{
			type = "fire",
			percent = 70
		}
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		layers =
		{
			{
				filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
				priority="high",
				width = 108,
				height = 114,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 2),
				hr_version =
				{
					filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
					priority="high",
					width = 214,
					height = 226,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, 2),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
				priority="high",
				width = 95,
				height = 83,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(8.5, 5.5),
				hr_version =
				{
					filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
					priority="high",
					width = 190,
					height = 165,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(8.5, 5),
					scale = 0.5
				}
			}
		},
	},
	crafting_categories = {"basic-crafting", "crafting", "machine-crafting"},
	crafting_speed = 0.5,
	energy_source =
	{
		type = "burner",
		fuel_category = "chemical",
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions = 0.02,
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
	energy_usage = "100kW",
	ingredient_count = 4,
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
		apparent_volume = 1.5
	}
},
--Base "assembling-machine-1" placeholder
--Base "assembling-machine-2" placeholder
--Base "assembling-machine-3" placeholder
--Assembling Machine 4
{
	type = "assembling-machine",
	name = "assembling-machine-4",
	icon = "__xander-mod__/graphics/item/production/production/assembling-machine-4.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-4"},
	max_health = 500,
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
			secondary_draw_orders = {north = -1}
		},
		off_when_no_fluid_recipe = true
	},
	open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
	close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound =
		{
			{filename = "__base__/sound/assembling-machine-t3-1.ogg", volume = 0.8},
			{filename = "__base__/sound/assembling-machine-t3-2.ogg", volume = 0.8}
		},
		idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
		apparent_volume = 1.5,
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/4.png",
				priority = "high",
				width = 108,
				height = 119,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, -0.5),
				hr_version =
				{
					filename = "__xander-mod__/graphics/entity/production/assembling-machine-4/hr-4.png",
					priority = "high",
					width = 214,
					height = 237,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, -0.75),
					scale = 0.5
				}
			},
			{
				filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
				priority = "high",
				width = 130,
				height = 82,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(28, 4),
				hr_version =
				{
					filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
					priority = "high",
					width = 260,
					height = 162,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(28, 4),
					scale = 0.5
				}
			},
		},
	},
	crafting_categories = {"crafting", "crafting-with-fluid", "advanced-crafting", "machine-crafting"},
	crafting_speed = 4,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.002
	},
	energy_usage = "400kW",
	ingredient_count = 8,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"}
},
--Burner Lab
{
	type = "lab",
	name = "lab-1",
	icon = "__xander-mod__/graphics/item/production/production/lab-1.png",
	flags = {"placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "lab-1"},
	max_health = 100,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
	on_animation =
	{
		filename = "__xander-mod__/graphics/entity/production/lab-1/1.png",
		width = 113,
		height = 91,
		frame_count = 33,
		line_length = 11,
		animation_speed = 1 / 3,
		shift = {0.2, 0.15}
	},
	off_animation =
	{
		filename = "__xander-mod__/graphics/entity/production/lab-1/1.png",
		width = 113,
		height = 91,
		frame_count = 1,
		shift = {0.2, 0.15}
	},
	working_sound =
	{
		sound = {filename = "__base__/sound/lab.ogg", volume = 0.7},
		apparent_volume = 1
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
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
	energy_usage = "100kW",
	researching_speed = 0.5,
	inputs =
	{
		"science-pack-0",
		"science-pack-1",
		"science-pack-2"
	}
},
--Base "lab" placeholder
--Base "beacon" placeholder
--Base "rocket-silo" placeholder

}
)