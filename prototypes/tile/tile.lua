
--Base Overrides
data.raw.tile["concrete"].decorative_removal_probability = 1
data.raw.tile["hazard-concrete-right"].decorative_removal_probability = 1
data.raw.tile["hazard-concrete-left"].decorative_removal_probability = 1


data:extend(
{

--Gravel (Terrain)
{
	type = "tile",
	name = "gravel",
	collision_mask = {"ground-tile"},
	layer = 37,
	variants =
	{
		main =
		{
			{
				picture = "__xander-mod__/graphics/tile/gravel/1.png",
				count = 16,
				size = 1
			},
			{
				picture = "__xander-mod__/graphics/tile/gravel/2.png",
				count = 16,
				size = 2,
				probability = 0.39,
				weights = {0.025, 0.010, 0.013, 0.025, 0.025, 0.100, 0.100, 0.005, 0.010, 0.010, 0.005, 0.005, 0.001, 0.015, 0.020, 0.020}
			},
			{
				picture = "__xander-mod__/graphics/tile/gravel/4.png",
				count = 16,
				line_length = 8,
				size = 4,
				probability = 1,
				weights = {0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.100, 0.010, 0.020, 0.020, 0.010, 0.100, 0.025, 0.100}
			},
		},
		inner_corner =
		{
			picture = "__xander-mod__/graphics/tile/gravel/inner-corner.png",
			count = 8
		},
		outer_corner =
		{
			picture = "__xander-mod__/graphics/tile/gravel/outer-corner.png",
			count = 8
		},
		side =
		{
			picture = "__xander-mod__/graphics/tile/gravel/side.png",
			count = 8
		}
	},
	walking_sound =
	{
		{
			filename = "__base__/sound/walking/sand-01.ogg",
			volume = 0.8
		},
		{
			filename = "__base__/sound/walking/sand-02.ogg",
			volume = 0.8
		},
		{
			filename = "__base__/sound/walking/sand-03.ogg",
			volume = 0.8
		},
		{
			filename = "__base__/sound/walking/sand-04.ogg",
			volume = 0.8
		}
	},
	map_color = {r = 160, g = 126, b = 115},
	ageing = 0.00025,
	vehicle_friction_modifier = sand_vehicle_speed_modifier
},
--Clay Brick
{
	type = "tile",
	name = "brick",
	needs_correction = false,
	minable = {hardness = 0.2, mining_time = 0.5, result = "brick-clay"},
	mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
	collision_mask = {"ground-tile"},
	walking_speed_modifier = 1.3,
	layer = 60,
	decorative_removal_probability = 0.6,
	variants =
	{
		main =
		{
			{
				picture = "__xander-mod__/graphics/tile/brick/1.png",
				count = 16,
				size = 1
			},
			{
				picture = "__xander-mod__/graphics/tile/brick/2.png",
				count = 4,
				size = 2,
				probability = 0.39,
			},
			{
				picture = "__xander-mod__/graphics/tile/brick/4.png",
				count = 4,
				size = 4,
				probability = 1,
			},
		},
		inner_corner =
		{
			picture = "__xander-mod__/graphics/tile/brick/inner-corner.png",
			count = 8
		},
		outer_corner =
		{
			picture = "__xander-mod__/graphics/tile/brick/outer-corner.png",
			count = 1
		},
		side =
		{
			picture = "__xander-mod__/graphics/tile/brick/side.png",
			count = 10
		},
		u_transition =
		{
			picture = "__xander-mod__/graphics/tile/brick/u.png",
			count = 10
		},
		o_transition =
		{
			picture = "__xander-mod__/graphics/tile/brick/o.png",
			count = 10
		}
	},
	walking_sound =
	{
		{
			filename = "__base__/sound/walking/concrete-01.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-02.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-03.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-04.ogg",
			volume = 1.2
		}
	},
	map_color = {r=50, g=50, b=50},
	ageing = 0,
	vehicle_friction_modifier = stone_path_vehicle_speed_modifier
},
--Fused Basalt
{
	type = "tile",
	name = "basalt",
	needs_correction = false,
	minable = {hardness = 0.2, mining_time = 1, result = "fused-basalt"},
	mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
	collision_mask = {"ground-tile"},
	walking_speed_modifier = 1.5,
	layer = 62,
	decorative_removal_probability = 1,
	variants =
	{
		main =
		{
			{
				picture = "__xander-mod__/graphics/tile/basalt/1.png",
				count = 1,
				size = 1
			},
			{
				picture = "__xander-mod__/graphics/tile/basalt/2.png",
				count = 1,
				size = 2,
				probability = 0.39,
			},
			{
				picture = "__xander-mod__/graphics/tile/basalt/4.png",
				count = 1,
				size = 4,
				probability = 1,
			},
		},
		inner_corner =
		{
			picture = "__xander-mod__/graphics/tile/basalt/inner-corner.png",
			count = 1
		},
		outer_corner =
		{
			picture = "__xander-mod__/graphics/tile/basalt/outer-corner.png",
			count = 1
		},
		side =
		{
			picture = "__xander-mod__/graphics/tile/basalt/side.png",
			count = 1
		},
		u_transition =
		{
			picture = "__xander-mod__/graphics/tile/basalt/u.png",
			count = 1
		},
		o_transition =
		{
			picture = "__xander-mod__/graphics/tile/basalt/o.png",
			count = 1
		}
	},
	walking_sound =
	{
		{
			filename = "__base__/sound/walking/concrete-01.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-02.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-03.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-04.ogg",
			volume = 1.2
		}
	},
	map_color={r=50, g=50, b=50},
	ageing=0,
	vehicle_friction_modifier = concrete_vehicle_speed_modifier
},
--Fused Quartz
{
	type = "tile",
	name = "quartz",
	needs_correction = false,
	minable = {hardness = 0.2, mining_time = 1, result = "fused-quartz"},
	mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
	collision_mask = {"ground-tile"},
	walking_speed_modifier = 1.5,
	layer = 63,
	decorative_removal_probability = 1,
	variants =
	{
		main =
		{
			{
				picture = "__xander-mod__/graphics/tile/quartz/1.png",
				count = 1,
				size = 1
			},
			{
				picture = "__xander-mod__/graphics/tile/quartz/2.png",
				count = 1,
				size = 2,
				probability = 0.39,
			},
			{
				picture = "__xander-mod__/graphics/tile/quartz/4.png",
				count = 1,
				size = 4,
				probability = 1,
			},
		},
		inner_corner =
		{
			picture = "__xander-mod__/graphics/tile/quartz/inner-corner.png",
			count = 1
		},
		outer_corner =
		{
			picture = "__xander-mod__/graphics/tile/quartz/outer-corner.png",
			count = 1
		},
		side =
		{
			picture = "__xander-mod__/graphics/tile/quartz/side.png",
			count = 1
		},
		u_transition =
		{
			picture = "__xander-mod__/graphics/tile/quartz/u.png",
			count = 1
		},
		o_transition =
		{
			picture = "__xander-mod__/graphics/tile/quartz/o.png",
			count = 1
		}
	},
	walking_sound =
	{
		{
			filename = "__base__/sound/walking/concrete-01.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-02.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-03.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-04.ogg",
			volume = 1.2
		}
	},
	map_color = {r=50, g=50, b=50},
	ageing = 0,
	vehicle_friction_modifier = concrete_vehicle_speed_modifier
},
--Steel Plate
{
	type = "tile",
	name = "steel",
	needs_correction = false,
	minable = {hardness = 0.2, mining_time = 1, result = "steel-plate"},
	mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
	collision_mask = {"ground-tile"},
	walking_speed_modifier = 1.5,
	layer = 64,
	decorative_removal_probability = 1,
	variants =
	{
		main =
		{
			{
				picture = "__xander-mod__/graphics/tile/steel/1.png",
				count = 1,
				size = 1
			},
			{
				picture = "__xander-mod__/graphics/tile/steel/2.png",
				count = 1,
				size = 2,
				probability = 0.39,
			},
			{
				picture = "__xander-mod__/graphics/tile/steel/4.png",
				count = 1,
				size = 4,
				probability = 1,
			},
		},
		inner_corner =
		{
			picture = "__xander-mod__/graphics/tile/steel/inner-corner.png",
			count = 1
		},
		outer_corner =
		{
			picture = "__xander-mod__/graphics/tile/steel/outer-corner.png",
			count = 1
		},
		side =
		{
			picture = "__xander-mod__/graphics/tile/steel/side.png",
			count = 1
		},
		u_transition =
		{
			picture = "__xander-mod__/graphics/tile/steel/u.png",
			count = 1
		},
		o_transition =
		{
			picture = "__xander-mod__/graphics/tile/steel/o.png",
			count = 1
		}
	},
	walking_sound =
	{
		{
			filename = "__base__/sound/walking/concrete-01.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-02.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-03.ogg",
			volume = 1.2
		},
		{
			filename = "__base__/sound/walking/concrete-04.ogg",
			volume = 1.2
		}
	},
	map_color = {r=50, g=50, b=50},
	ageing = 0,
	vehicle_friction_modifier = concrete_vehicle_speed_modifier
}

}
)
