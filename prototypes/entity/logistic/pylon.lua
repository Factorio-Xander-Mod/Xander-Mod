
--Base Overrides

--Base "small-electric-pole"
data.raw["electric-pole"]["small-electric-pole"].max_health = 50

--Base "medium-electric-pole"

--Base "big-electric-pole" placeholder
data.raw["electric-pole"]["big-electric-pole"].max_health = 200

--Base "substation" placeholder


data:extend(
{

--Base "small-electric-pole" placeholder
--Base "medium-electric-pole" placeholder
--High-Tension Medium Electric Pole
{
	type = "electric-pole",
	name = "medium-electric-pole-2",
	icon = "__xander-mod__/graphics/item/logistic/pylon/medium-electric-pole-2.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "medium-electric-pole-2"},
	max_health = 200,
	corpse = "small-remnants",
	track_coverage_during_build_by_moving = true,
	resistances =
	{
		{
			type = "fire",
			percent = 100
		}
	},
	collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
	maximum_wire_distance = 15,
	supply_area_distance = 6.5,
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	pictures =
	{
		filename = "__xander-mod__/graphics/entity/logistic/pylon/medium-2.png",
		priority = "high",
		width = 136,
		height = 122,
		direction_count = 4,
		shift = {1.4, -1.0}
	},
	connection_points =
	{
		{
			shadow =
			{
				copper = {2.55, 0.4},
				green = {2.0, 0.4},
				red = {3.05, 0.4}
			},
			wire =
			{
				copper = {-0.03125, -2.46875},
				green = {-0.34375, -2.46875},
				red = {0.25, -2.46875}
			}
		},
		{
			shadow =
			{
				copper = {2.9, 0.1},
				green = {2.6, -0.15},
				red = {3.25, 0.35}
			},
			wire =
			{
				copper = {0.0625, -2.65625},
				green = {-0.15625, -2.84375},
				red = {0.28125, -2.5}
			}
		},
		{
			shadow =
			{
				copper = {1.5, -0.2},
				green = {1.5, -0.55},
				red = {1.5, 0.1}
			},
			wire =
			{
				copper = {-0.4375, -2.28125},
				green = {-0.4375, -2.5625},
				red = {-0.4375, -2.0625}
			}
		},
		{
			shadow =
			{
				copper = {2.88, 0.2},
				green = {3.2, -0.1},
				red = {2.45, 0.4}
			},
			wire =
			{
				copper = {-0.0625, -2.5625},
				green = {0.15625, -2.75},
				red = {-0.28125, -2.4375}
			}
		}
	},
	radius_visualisation_picture =
	{
		filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
		width = 12,
		height = 12,
		priority = "extra-high-no-scale"
	}
},
--Base "big-electric-pole" placeholder
--High-Tension Big Electric Pole
{
	type = "electric-pole",
	name = "big-electric-pole-2",
	icon = "__xander-mod__/graphics/item/logistic/pylon/big-electric-pole-2.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "big-electric-pole-2"},
	max_health = 400,
	corpse = "medium-remnants",
	resistances =
	{
		{
			type = "fire",
			percent = 100
		}
	},
	collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
	selection_box = {{-1, -1}, {1, 1}},
	drawing_box = {{-1, -3}, {1, 0.5}},
	maximum_wire_distance = 60,
	supply_area_distance = 2,
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	pictures =
	{
		filename = "__xander-mod__/graphics/entity/logistic/pylon/big-2.png",
		priority = "high",
		width = 168,
		height = 165,
		direction_count = 4,
		shift = {1.6, -1.1}
	},
	connection_points =
	{
		{
			shadow =
			{
				copper = {2.7, 0},
				green = {1.8, 0},
				red = {3.6, 0}
			},
			wire =
			{
				copper = {0, -3.125},
				green = {-0.59375, -3.125},
				red = {0.625, -3.125}
			}
		},
		{
			shadow =
			{
				copper = {3.1, 0.2},
				green = {2.3, -0.3},
				red = {3.8, 0.6}
			},
			wire =
			{
				copper = {-0.0625, -3.125},
				green = {-0.5, -3.4375},
				red = {0.34375, -2.8125}
			}
		},
		{
			shadow =
			{
				copper = {2.9, 0.06},
				green = {3.0, -0.6},
				red = {3.0, 0.8}
			},
			wire =
			{
				copper = {-0.09375, -3.09375},
				green = {-0.09375, -3.53125},
				red = {-0.09375, -2.65625}
			}
		},
		{
			shadow =
			{
				copper = {3.1, 0.2},
				green = {3.8, -0.3},
				red = {2.35, 0.6}
			},
			wire =
			{
				copper = {-0.0625, -3.1875},
				green = {0.375, -3.5},
				red = {-0.46875, -2.90625}
			}
		}
	},
	radius_visualisation_picture =
	{
		filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
		width = 12,
		height = 12,
		priority = "extra-high-no-scale"
	}
},
--Base "substation" placeholder
--High-Tension Substation
{
	type = "electric-pole",
	name = "substation-2",
	icon = "__xander-mod__/graphics/item/logistic/pylon/substation-2.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "substation-2"},
	max_health = 400,
	corpse = "medium-remnants",
	track_coverage_during_build_by_moving = true,
	resistances =
	{
		{
			type = "fire",
			percent = 90
		}
	},
	collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
	selection_box = {{-1, -1}, {1, 1}},
	drawing_box = {{-1, -3}, {1, 1}},
	maximum_wire_distance = 30,
	supply_area_distance = 15,
	pictures =
	{
		filename = "__xander-mod__/graphics/entity/logistic/pylon/substation-2.png",
		priority = "high",
		width = 132,
		height = 144,
		direction_count = 4,
		shift = {0.9, -1}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/substation.ogg"},
		apparent_volume = 1.5,
		audible_distance_modifier = 0.5,
		probability = 1 / (3 * 60)
	},
	connection_points =
	{
		{
			shadow =
			{
				copper = {1.9, -0.6},
				green = {1.3, -0.6},
				red = {2.65, -0.6}
			},
			wire =
			{
				copper = {-0.25, -2.71875},
				green = {-0.84375, -2.71875},
				red = {0.34375, -2.71875}
			}
		},
		{
			shadow =
			{
				copper = {1.9, -0.6},
				green = {1.2, -0.8},
				red = {2.5, -0.35}
			},
			wire =
			{
				copper = {-0.21875, -2.71875},
				green = {-0.65625, -3.03125},
				red = {0.1875, -2.4375}
			}
		},
		{
			shadow =
			{
				copper = {1.9, -0.6},
				green = {1.9, -0.9},
				red = {1.9, -0.3}
			},
			wire =
			{
				copper = {-0.21875, -2.71875},
				green = {-0.21875, -3.15625},
				red = {-0.21875, -2.34375}
			}
		},
		{
			shadow =
			{
				copper = {1.8, -0.7},
				green = {1.3, -0.6},
				red = {2.4, -1.15}
			},
			wire =
			{
				copper = {-0.21875, -2.75},
				green = {-0.65625, -2.4375},
				red = {0.1875, -3.03125}
			}
		}
	},
	radius_visualisation_picture =
	{
		filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
		width = 12,
		height = 12,
		priority = "extra-high-no-scale"
	}
}

}
)