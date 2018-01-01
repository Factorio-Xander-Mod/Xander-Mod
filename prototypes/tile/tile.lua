local xmutil = require("xmutil")

--Base Overrides
data.raw.tile["concrete"].decorative_removal_probability = 1
data.raw.tile["hazard-concrete-right"].decorative_removal_probability = 1
data.raw.tile["hazard-concrete-left"].decorative_removal_probability = 1

local gravel_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/gravel/gravel.png",
      "__xander-mod__/graphics/tile/gravel/hr-gravel.png",
      {
        o_transition_tall = false,
        u_transition_count = 2,
        o_transition_count = 4,
        side_count = 8,
        outer_corner_count = 8,
        inner_corner_count = 8,
      }
  ),
}

local gravel_transitions_between_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/gravel/gravel-transition.png",
      "__xander-mod__/graphics/tile/gravel/hr-gravel-transition.png",
      {
        o_transition_tall = false,
        inner_corner_count = 3,
        outer_corner_count = 3,
        side_count = 3,
        u_transition_count = 1,
        o_transition_count = 0,
      }
  ),
}

local brick_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/brick/brick.png",
      "__xander-mod__/graphics/tile/brick/hr-brick.png",
      {
        o_transition_tall = false,
        u_transition_count = 4,
        o_transition_count = 4,
        side_count = 8,
        outer_corner_count = 8,
        inner_corner_count = 8,
      }
  ),
}

local brick_transitions_between_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/brick/brick-transitions.png",
      "__xander-mod__/graphics/tile/brick/hr-brick-transitions.png",
      {
        inner_corner_tall = true,
        inner_corner_count = 3,
        outer_corner_count = 3,
        side_count = 3,
        u_transition_count = 1,
        o_transition_count = 0,
      }
  ),
}

local basalt_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/basalt/basalt.png",
      "__xander-mod__/graphics/tile/basalt/hr-basalt.png",
      {
        o_transition_tall = false,
        u_transition_count = 4,
        o_transition_count = 4,
        side_count = 8,
        outer_corner_count = 8,
        inner_corner_count = 8,
      }
  ),
}

local basalt_transitions_between_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/basalt/basalt-transitions.png",
      "__xander-mod__/graphics/tile/basalt/hr-basalt-transitions.png",
      {
        inner_corner_tall = true,
        inner_corner_count = 3,
        outer_corner_count = 3,
        side_count = 3,
        u_transition_count = 1,
        o_transition_count = 0,
      }
  ),
}

local quartz_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/quartz/quartz.png",
      "__xander-mod__/graphics/tile/quartz/hr-quartz.png",
      {
        o_transition_tall = false,
        u_transition_count = 4,
        o_transition_count = 4,
        side_count = 8,
        outer_corner_count = 8,
        inner_corner_count = 8,
      }
  ),
}

local quartz_transitions_between_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/quartz/quartz-transitions.png",
      "__xander-mod__/graphics/tile/quartz/hr-quartz-transitions.png",
      {
        inner_corner_tall = true,
        inner_corner_count = 3,
        outer_corner_count = 3,
        side_count = 3,
        u_transition_count = 1,
        o_transition_count = 0,
      }
  ),
}

local steel_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/steel/steel.png",
      "__xander-mod__/graphics/tile/steel/hr-steel.png",
      {
        o_transition_tall = false,
        u_transition_count = 4,
        o_transition_count = 4,
        side_count = 8,
        outer_corner_count = 8,
        inner_corner_count = 8,
      }
  ),
}

local steel_transitions_between_transitions =
{
  water_transition_template
  (
      water_tile_type_names,
      "__xander-mod__/graphics/tile/steel/steel-transitions.png",
      "__xander-mod__/graphics/tile/steel/hr-steel-transitions.png",
      {
        inner_corner_tall = true,
        inner_corner_count = 3,
        outer_corner_count = 3,
        side_count = 3,
        u_transition_count = 1,
        o_transition_count = 0,
      }
  ),
}

data:extend(
{

--Gravel (Terrain)
xmutil.clone("tile", "dirt-6",
	{
		{
			"__base__/graphics/terrain/dirt-6.png",
			"__xander-mod__/graphics/tile/gravel/gravel-1.png"
		},
		{
			"__base__/graphics/terrain/hr-dirt-6.png",
			"__xander-mod__/graphics/tile/gravel/hr-gravel-1.png"
		}
	},
	{
		name = "gravel",
		autoplace = {},
		layer = 7,
		transitions = gravel_transitions,
		transitions_between_transitions = gravel_transitions_between_transitions,
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
		ageing = 0,
		vehicle_friction_modifier = dirt_vehicle_speed_modifier
	}
),

--Clay Brick
xmutil.clone("tile", "stone-path",
	{
		{
			"__base__/graphics/terrain/stone-path/stone-path-1.png",
			"__xander-mod__/graphics/tile/brick/brick-1.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-1.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-1.png"
		},
		{
			"__base__/graphics/terrain/stone-path/stone-path-2.png",
			"__xander-mod__/graphics/tile/brick/brick-2.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-2.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-2.png"
		},
		{
			"__base__/graphics/terrain/stone-path/stone-path-4.png",
			"__xander-mod__/graphics/tile/brick/brick-4.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-4.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-4.png"
		},
		{
			"__base__/graphics/terrain/stone-path/stone-path-inner-corner.png",
			"__xander-mod__/graphics/tile/brick/brick-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-inner-corner.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/stone-path/stone-path-outer-corner.png",
			"__xander-mod__/graphics/tile/brick/brick-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-outer-corner.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/stone-path/stone-path-side.png",
			"__xander-mod__/graphics/tile/brick/brick-side.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-side.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-side.png"
		},
		{
			"__base__/graphics/terrain/stone-path/stone-path-u.png",
			"__xander-mod__/graphics/tile/brick/brick-u.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-u.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-u.png"
		},
		{
			"__base__/graphics/terrain/stone-path/stone-path-o.png",
			"__xander-mod__/graphics/tile/brick/brick-o.png"
		},
		{
			"__base__/graphics/terrain/stone-path/hr-stone-path-o.png",
			"__xander-mod__/graphics/tile/brick/hr-brick-o.png"
		}
	},
	{
		name = "brick",
		minable = {hardness = 0.2, mining_time = 0.5, result = "brick-clay"},
		transitions = brick_transitions,
		transitions_between_transitions = brick_transitions_between_transitions,
		map_color = {r = 140, g = 38, b = 25}
	}
),

--Fused Basalt
xmutil.clone("tile", "concrete",
	{
		{
			"__base__/graphics/terrain/concrete/concrete.png",
			"__xander-mod__/graphics/tile/basalt/basalt-1.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete.png",
			"__xander-mod__/graphics/tile/basalt/hr-basalt-1.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-inner-corner.png",
			"__xander-mod__/graphics/tile/basalt/basalt-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-inner-corner.png",
			"__xander-mod__/graphics/tile/basalt/hr-basalt-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-outer-corner.png",
			"__xander-mod__/graphics/tile/basalt/basalt-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-outer-corner.png",
			"__xander-mod__/graphics/tile/basalt/hr-basalt-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-side.png",
			"__xander-mod__/graphics/tile/basalt/basalt-side.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-side.png",
			"__xander-mod__/graphics/tile/basalt/hr-basalt-side.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-u.png",
			"__xander-mod__/graphics/tile/basalt/basalt-u.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-u.png",
			"__xander-mod__/graphics/tile/basalt/hr-basalt-u.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-o.png",
			"__xander-mod__/graphics/tile/basalt/basalt-o.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-o.png",
			"__xander-mod__/graphics/tile/basalt/hr-basalt-o.png"
		}
	},
	{
		name = "basalt",
		minable = {hardness = 0.2, mining_time = 0.5, result = "fused-basalt"},
		walking_speed_modifier = 1.5,
		layer = 63,
		transitions = basalt_transitions,
		transitions_between_transitions = basalt_transitions_between_transitions,
		map_color = {r = 50, g = 50, b = 50},--*****
		vehicle_friction_modifier = 1.5
	}
),
--[[
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
]]--
--Fused Quartz
xmutil.clone("tile", "concrete",
	{
		{
			"__base__/graphics/terrain/concrete/concrete.png",
			"__xander-mod__/graphics/tile/quartz/quartz-1.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete.png",
			"__xander-mod__/graphics/tile/quartz/hr-quartz-1.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-inner-corner.png",
			"__xander-mod__/graphics/tile/quartz/quartz-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-inner-corner.png",
			"__xander-mod__/graphics/tile/quartz/hr-quartz-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-outer-corner.png",
			"__xander-mod__/graphics/tile/quartz/quartz-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-outer-corner.png",
			"__xander-mod__/graphics/tile/quartz/hr-quartz-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-side.png",
			"__xander-mod__/graphics/tile/quartz/quartz-side.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-side.png",
			"__xander-mod__/graphics/tile/quartz/hr-quartz-side.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-u.png",
			"__xander-mod__/graphics/tile/quartz/quartz-u.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-u.png",
			"__xander-mod__/graphics/tile/quartz/hr-quartz-u.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-o.png",
			"__xander-mod__/graphics/tile/quartz/quartz-o.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-o.png",
			"__xander-mod__/graphics/tile/quartz/hr-quartz-o.png"
		}
	},
	{
		name = "quartz",
		minable = {hardness = 0.2, mining_time = 0.5, result = "fused-quartz"},
		walking_speed_modifier = 1.5,
		layer = 63,
		transitions = quartz_transitions,
		transitions_between_transitions = quartz_transitions_between_transitions,
		map_color = {r = 50, g = 50, b = 50},--*****
		vehicle_friction_modifier = 1.5
	}
),
--Steel Plate
xmutil.clone("tile", "concrete",
	{
		{
			"__base__/graphics/terrain/concrete/concrete.png",
			"__xander-mod__/graphics/tile/steel/steel-1.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete.png",
			"__xander-mod__/graphics/tile/steel/hr-steel-1.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-inner-corner.png",
			"__xander-mod__/graphics/tile/steel/steel-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-inner-corner.png",
			"__xander-mod__/graphics/tile/steel/hr-steel-inner-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-outer-corner.png",
			"__xander-mod__/graphics/tile/steel/steel-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-outer-corner.png",
			"__xander-mod__/graphics/tile/steel/hr-steel-outer-corner.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-side.png",
			"__xander-mod__/graphics/tile/steel/steel-side.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-side.png",
			"__xander-mod__/graphics/tile/steel/hr-steel-side.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-u.png",
			"__xander-mod__/graphics/tile/steel/steel-u.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-u.png",
			"__xander-mod__/graphics/tile/steel/hr-steel-u.png"
		},
		{
			"__base__/graphics/terrain/concrete/concrete-o.png",
			"__xander-mod__/graphics/tile/steel/steel-o.png"
		},
		{
			"__base__/graphics/terrain/concrete/hr-concrete-o.png",
			"__xander-mod__/graphics/tile/steel/hr-steel-o.png"
		}
	},
	{
		name = "steel",
		minable = {hardness = 0.2, mining_time = 0.5, result = "steel-plate"},
		walking_speed_modifier = 1.5,
		layer = 64,
		transitions = steel_transitions,
		transitions_between_transitions = steel_transitions_between_transitions,
		map_color = {r = 50, g = 50, b = 50},--*****
		vehicle_friction_modifier = 1.5
	}
)
})