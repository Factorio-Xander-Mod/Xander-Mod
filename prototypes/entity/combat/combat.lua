local xmutil = require("xmutil")

--Base Overrides

--Base "stone-wall"
data.raw.wall["stone-wall"].max_health = 200
--Base "gate"
data.raw.gate["gate"].max_health = 200

--Base "gun-turret"
--Base "flamethrower-turret"

--Base "laser-turret"
data.raw["electric-turret"]["laser-turret"].rotation_speed = 0.005
data.raw["electric-turret"]["laser-turret"].energy_source =
{
	type = "electric",
	buffer_capacity = "1MJ",
	input_flow_limit = "12MW",
	drain = "30kW",
	usage_priority = "primary-input"
}

--Base "radar"
data.raw.radar["radar"].max_health = 200
data.raw.radar["radar"].max_distance_of_sector_revealed = 10
data.raw.radar["radar"].max_distance_of_nearby_sector_revealed = 2
data.raw.radar["radar"].energy_per_nearby_scan = "200kJ"

--Base "car"
--Base "tank"
data.raw.car["tank"].consumption = "500kW"
data.raw.car["tank"].turret_rotation_speed = 0.005


data:extend(
{

--Base "stone-wall" placeholder
--Brick Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/stone-wall/wall-",
			"__xander-mod__/graphics/entity/combat/wall-2/",
		},
	},
	{
		name = "wall-2",
		icon = "__xander-mod__/graphics/item/combat/structure/wall-2.png",
		minable = {mining_time = 0.5, result = "wall-2"},
		max_health = 100,
	}
),
--Concrete Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/stone-wall/wall-",
			"__xander-mod__/graphics/entity/combat/wall-3/",
		},
	},
	{
		name = "wall-3",
		icon = "__xander-mod__/graphics/item/combat/structure/wall-3.png",
		minable = {mining_time = 0.5, result = "wall-3"},
		max_health = 400,
	}
),
--Armored Basalt Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/stone-wall/wall-",
			"__xander-mod__/graphics/entity/combat/wall-4/",
		},
	},
	{
		name = "wall-4",
		icon = "__xander-mod__/graphics/item/combat/structure/wall-4.png",
		minable = {mining_time = 0.5, result = "wall-4"},
		max_health = 600,
	}
),
--Impervious Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/stone-wall/wall-",
			"__xander-mod__/graphics/entity/combat/wall-5/",
		},
	},
	{
		name = "wall-5",
		icon = "__xander-mod__/graphics/item/combat/structure/wall-5.png",
		minable = {mining_time = 0.5, result = "wall-4"},
		max_health = 1000,
	}
),
--Base "gate" placeholder
--Armored Gate
xmutil.clone("gate", "gate",
	{
		{
			"__base__/graphics/entity/gate/gate-",
			"__xander-mod__/graphics/entity/combat/gate-2/",
		},
	},
	{
		name = "gate-2",
		icon = "__xander-mod__/graphics/item/combat/structure/gate-2.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "gate-2"},
		max_health = 600,
		opening_speed = 0.08,
	}
),
--Impervious Gate
xmutil.clone("gate", "gate",
	{
		{
			"__base__/graphics/entity/gate/gate-",
			"__xander-mod__/graphics/entity/combat/gate-3/",
		},
	},
	{
		name = "gate-3",
		icon = "__xander-mod__/graphics/item/combat/structure/gate-3.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "gate-3"},
		max_health = 600,
		opening_speed = 0.08,
	}
),

--Base "gun-turret" placeholder
--Base "flamethrower-turret" placeholder

--Base "laser-turret" placeholder
--CO2 Laser Turret
{
	type = "electric-turret",
	name = "laser-turret-2",
	icon = "__xander-mod__/graphics/item/combat/structure/laser-turret-2.png",
	icon_size = 32,
	flags = {"placeable-player", "placeable-enemy", "player-creation"},
	minable = {mining_time = 0.5, result = "laser-turret-2"},
	max_health = 2000,
	corpse = "medium-remnants",
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-1, -1}, {1, 1}},
	rotation_speed = 0.01,
	preparing_speed = 0.1,
	dying_explosion = "medium-explosion",
	folding_speed = 0.1,
	energy_source =
	{
		type = "electric",
		buffer_capacity = "2MJ",
		input_flow_limit = "24MW",
		drain = "60kW",
		usage_priority = "primary-input"
	},
	folded_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-2/gun-start.png",
				priority = "medium",
				width = 66,
				height = 67,
				frame_count = 1,
				line_length = 1,
				run_mode = "forward",
				axially_symmetrical = false,
				direction_count = 4,
				shift = {-0.03125, -0.984375}
			},
			laser_turret_extension_shadow{frame_count=1, line_length=1},
			laser_turret_extension_mask{frame_count=1, line_length=1}
		}
	},
	preparing_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-2/gun-start.png",
				priority = "medium",
				width = 66,
				height = 67,
				frame_count = 15,
				line_length = 0,
				run_mode = "forward",
				axially_symmetrical = false,
				direction_count = 4,
				shift = {-0.03125, -0.984375}
			},
			laser_turret_extension_shadow{},
			laser_turret_extension_mask{}
		}
	},
	prepared_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-2/gun.png",
				line_length = 8,
				width = 68,
				height = 68,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 64,
				shift = {-0.03125, -1}
			},
			{
				filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
				flags = { "mask" },
				line_length = 8,
				width = 54,
				height = 44,
				frame_count = 1,
				axially_symmetrical = false,
				apply_runtime_tint = true,
				direction_count = 64,
				shift = {-0.03125, -1.3125},
			},
			{
				filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
				line_length = 8,
				width = 88,
				height = 52,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 64,
				draw_as_shadow = true,
				shift = {1.5, 0}
			}
		}
	},
	folding_animation = 
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-2/gun-start.png",
				priority = "medium",
				width = 66,
				height = 67,
				frame_count = 15,
				line_length = 0,
				run_mode = "backward",
				axially_symmetrical = false,
				direction_count = 4,
				shift = {-0.03125, -0.984375}
			},
			laser_turret_extension_shadow{run_mode = "backward"},
			laser_turret_extension_mask{run_mode = "backward"}
		}
	},
	base_picture =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-2/base.png",
				priority = "high",
				width = 98,
				height = 82,
				axially_symmetrical = false,
				direction_count = 1,
				frame_count = 1,
				shift = {0.015625, 0.03125}
			},
			{
				filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
				flags = { "mask" },
				line_length = 1,
				width = 54,
				height = 46,
				axially_symmetrical = false,
				apply_runtime_tint = true,
				direction_count = 1,
				frame_count = 1,
				shift = {-0.046875, -0.109375},
			},
		}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	attack_parameters =
	{
		type = "projectile",
		ammo_category = "electric",
		cooldown = 15,
		projectile_center = {-0.09375, -0.2},
		projectile_creation_distance = 1.4,
		range = 30,
		damage_modifier = 6,
		ammo_type =
		{
			type = "projectile",
			category = "laser-turret",
			energy_consumption = "1.5MJ",
			action =
			{
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "projectile",
							projectile = "laser",
							starting_speed = 0.35
						}
					}
				}
			}
		},
		sound = make_laser_sounds()
	},
	call_for_help_radius = 40
},
--Nd:YAG Laser Turret
{
	type = "electric-turret",
	name = "laser-turret-3",
	icon = "__xander-mod__/graphics/item/combat/structure/laser-turret-3.png",
	icon_size = 32,
	flags = {"placeable-player", "placeable-enemy", "player-creation"},
	minable = {mining_time = 0.5, result = "laser-turret-3"},
	max_health = 4000,
	corpse = "medium-remnants",
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-1, -1}, {1, 1}},
	rotation_speed = 0.02,
	preparing_speed = 0.2,
	dying_explosion = "medium-explosion",
	folding_speed = 0.2,
	energy_source =
	{
		type = "electric",
		buffer_capacity = "3MJ",
		input_flow_limit = "48MW",
		drain = "120kW",
		usage_priority = "primary-input"
	},
	folded_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-3/gun-start.png",
				priority = "medium",
				width = 66,
				height = 67,
				frame_count = 1,
				line_length = 1,
				run_mode = "forward",
				axially_symmetrical = false,
				direction_count = 4,
				shift = {-0.03125, -0.984375}
			},
			laser_turret_extension_shadow{frame_count=1, line_length=1},
			laser_turret_extension_mask{frame_count=1, line_length=1}
		}
	},
	preparing_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-3/gun-start.png",
				priority = "medium",
				width = 66,
				height = 67,
				frame_count = 15,
				line_length = 0,
				run_mode = "forward",
				axially_symmetrical = false,
				direction_count = 4,
				shift = {-0.03125, -0.984375}
			},
			laser_turret_extension_shadow{},
			laser_turret_extension_mask{}
		}
	},
	prepared_animation =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-3/gun.png",
				line_length = 8,
				width = 68,
				height = 68,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 64,
				shift = {-0.03125, -1}
			},
			{
				filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
				flags = { "mask" },
				line_length = 8,
				width = 54,
				height = 44,
				frame_count = 1,
				axially_symmetrical = false,
				apply_runtime_tint = true,
				direction_count = 64,
				shift = {-0.03125, -1.3125},
			},
			{
				filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
				line_length = 8,
				width = 88,
				height = 52,
				frame_count = 1,
				axially_symmetrical = false,
				direction_count = 64,
				draw_as_shadow = true,
				shift = {1.5, 0}
			}
		}
	},
	folding_animation = 
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-3/gun-start.png",
				priority = "medium",
				width = 66,
				height = 67,
				frame_count = 15,
				line_length = 0,
				run_mode = "backward",
				axially_symmetrical = false,
				direction_count = 4,
				shift = {-0.03125, -0.984375}
			},
			laser_turret_extension_shadow{run_mode = "backward"},
			laser_turret_extension_mask{run_mode = "backward"}
		}
	},
	base_picture =
	{
		layers =
		{
			{
				filename = "__xander-mod__/graphics/entity/combat/laser-turret-3/base.png",
				priority = "high",
				width = 98,
				height = 82,
				axially_symmetrical = false,
				direction_count = 1,
				frame_count = 1,
				shift = {0.015625, 0.03125}
			},
			{
				filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
				flags = { "mask" },
				line_length = 1,
				width = 54,
				height = 46,
				axially_symmetrical = false,
				apply_runtime_tint = true,
				direction_count = 1,
				frame_count = 1,
				shift = {-0.046875, -0.109375},
			},
		}
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	attack_parameters =
	{
		type = "projectile",
		ammo_category = "electric",
		cooldown = 10,
		projectile_center = {-0.09375, -0.2},
		projectile_creation_distance = 1.4,
		range = 40,
		damage_modifier = 8,
		ammo_type =
		{
			type = "projectile",
			category = "laser-turret",
			energy_consumption = "2MJ",
			action =
			{
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "projectile",
							projectile = "laser",
							starting_speed = 0.35
						}
					}
				}
			}
		},
		sound = make_laser_sounds()
	},
	call_for_help_radius = 40
},

--Base "radar" placeholder
--Doppler Radar
xmutil.clone("radar", "radar",
{},
{
	name = "radar-2",
	icon = "__xander-mod__/graphics/item/combat/structure/radar-2.png",
	minable = {hardness = 0.2, mining_time = 0.5, result = "radar-2"},
	max_health = 300,
	energy_per_sector = "20MJ",
	max_distance_of_sector_revealed = 31,
	max_distance_of_nearby_sector_revealed = 1,
	energy_per_nearby_scan = "200kJ",
	energy_usage = "500kW",
}
),
--LIDAR Scanning Array
xmutil.clone("radar", "radar",
{},
{
	name = "radar-3",
	icon = "__xander-mod__/graphics/item/combat/structure/radar-3.png",
	minable = {hardness = 0.2, mining_time = 0.5, result = "radar-3"},
	max_health = 500,
	energy_per_sector = "10MJ",
	max_distance_of_sector_revealed = 8,
	max_distance_of_nearby_sector_revealed = 7,
	energy_per_nearby_scan = "1MJ",
	energy_usage = "1MW",
}
),

--Base "car" placeholder
--Base "tank" placeholder
--Artillery Crawler
xmutil.clone("car", "tank",
	{},
	{
		name = "artillery-crawler",
		icon = "__xander-mod__/graphics/item/combat/structure/artillery-crawler.png",
		minable = {mining_time = 1, result = "artillery-crawler"},
		braking_power = "500kW",
		consumption = "1MW",
		turret_rotation_speed = 0.005,
		guns = {"artillery-cannon", "tank-machine-gun", xmutil.NIL},
	}
),
--Tank Mark 2
xmutil.clone("car", "tank",
	{},
	{
		name = "tank-2",
		icon = "__xander-mod__/graphics/item/combat/structure/tank-2.png",
		minable = {mining_time = 1, result = "tank-2"},
		max_health = 6000,
		braking_power = "2MW",
		consumption = "2MW",
		terrain_friction_modifier = 0.1,
		turret_rotation_speed = 0.02,
		weight = 40000,
		inventory_size = 50,
		guns = {"tank-railgun", "tank-machine-gun", "tank-flamethrower"},
	}
),

}
)