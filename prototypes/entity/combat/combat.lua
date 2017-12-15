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
{
	type = "radar",
	name = "radar-2",
	icon = "__xander-mod__/graphics/item/combat/structure/radar-2.png",
	flags = {"placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "radar-2"},
	max_health = 300,
	corpse = "big-remnants",
	resistances =
	{
		{
			type = "fire",
			percent = 70
		},
		{
			type = "impact",
			percent = 30
		}
	},
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	energy_per_sector = "20MJ",
	max_distance_of_sector_revealed = 31,
	max_distance_of_nearby_sector_revealed = 1,
	energy_per_nearby_scan = "200kJ",
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input"
	},
	energy_usage = "500kW",
	pictures =
	{
		filename = "__base__/graphics/entity/radar/radar.png",
		priority = "low",
		width = 153,
		height = 131,
		apply_projection = false,
		direction_count = 64,
		line_length = 8,
		shift = util.by_pixel(27.5,-12.5)
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound =
		{
			{
				filename = "__base__/sound/radar.ogg"
			}
		},
		apparent_volume = 2,
	},
	radius_minimap_visualisation_color = {r = 0.059, g = 0.092, b = 0.235, a = 0.275},
},
--LIDAR Scanning Array
{
	type = "radar",
	name = "radar-3",
	icon = "__xander-mod__/graphics/item/combat/structure/radar-3.png",
	flags = {"placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "radar-3"},
	max_health = 500,
	corpse = "big-remnants",
	resistances =
	{
		{
			type = "fire",
			percent = 70
		},
		{
			type = "impact",
			percent = 30
		}
	},
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	energy_per_sector = "10MJ",
	max_distance_of_sector_revealed = 8,
	max_distance_of_nearby_sector_revealed = 7,
	energy_per_nearby_scan = "1MJ",
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input"
	},
	energy_usage = "1MW",
	pictures =
	{
		filename = "__base__/graphics/entity/radar/radar.png",
		priority = "low",
		width = 153,
		height = 131,
		apply_projection = false,
		direction_count = 64,
		line_length = 8,
		shift = util.by_pixel(27.5,-12.5)
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound =
		{
			{
				filename = "__base__/sound/radar.ogg"
			}
		},
		apparent_volume = 2,
	},
	radius_minimap_visualisation_color = {r = 0.059, g = 0.092, b = 0.235, a = 0.275},
},

--Base "car" placeholder
--Base "tank" placeholder
--Artillery Crawler
{
	type = "car",
	name = "artillery-crawler",
	icon = "__xander-mod__/graphics/item/combat/structure/artillery-crawler.png",
	flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
	minable = {mining_time = 1, result = "artillery-crawler"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	energy_per_hit_point = 0.5,
	resistances =
	{
		{
			type = "fire",
			decrease = 15,
			percent = 60
		},
		{
			type = "physical",
			decrease = 15,
			percent = 60
		},
		{
			type = "impact",
			decrease = 50,
			percent = 80
		},
		{
			type = "explosion",
			decrease = 15,
			percent = 70
		},
		{
			type = "acid",
			decrease = 15,
			percent = 50
		}
	},
	collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
	selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
	effectivity = 0.6,
	braking_power = "500kW",
	burner =
	{
		fuel_category = "chemical",
		effectivity = 0.75,
		fuel_inventory_size = 2,
		smoke =
		{
			{
				name = "tank-smoke",
				deviation = {0.25, 0.25},
				frequency = 50,
				position = {0, 1.5},
				starting_frame = 0,
				starting_frame_deviation = 60
			}
		}
	},
	consumption = "1MW",
	terrain_friction_modifier = 0.2,
	friction = 0.002,
	light =
	{
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "extra-high",
				flags = {"light"},
				scale = 2,
				width = 200,
				height = 200,
			},
			shift = {-0.6, -14},
			size = 2,
			intensity = 0.6,
			color = {r = 0.9, g = 1.0, b = 1.0}
		},
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "extra-high",
				flags = {"light"},
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {0.6, -14},
			size = 2,
			intensity = 0.6,
			color = {r = 0.9, g = 1.0, b = 1.0}
		}
	},
	animation =
	{
		layers =
		{
			{
				priority = "low",
				width = 139,
				height = 110,
				frame_count = 2,
				direction_count = 64,
				shift = {-0.140625, -0.28125},
				animation_speed = 8,
				max_advance = 1,
				stripes =
				{
					{
						filename = "__base__/graphics/entity/tank/base-1.png",
						width_in_frames = 2,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-2.png",
						width_in_frames = 2,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-3.png",
						width_in_frames = 2,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-4.png",
						width_in_frames = 2,
						height_in_frames = 16,
					}
				}
			},
			{
				priority = "low",
				width = 109,
				height = 88,
				frame_count = 2,
				apply_runtime_tint = true,
				direction_count = 64,
				shift = {-0.140625, -0.65625},
				max_advance = 1,
				line_length = 2,
				stripes = util.multiplystripes(2,
				{
					{
						filename = "__base__/graphics/entity/tank/base-mask-1.png",
						width_in_frames = 1,
						height_in_frames = 22,
					},
					{
						filename = "__base__/graphics/entity/tank/base-mask-2.png",
						width_in_frames = 1,
						height_in_frames = 22,
					},
					{
						filename = "__base__/graphics/entity/tank/base-mask-3.png",
						width_in_frames = 1,
						height_in_frames = 20,
					},
				})
			},
			{
				priority = "low",
				width = 154,
				height = 99,
				frame_count = 2,
				draw_as_shadow = true,
				direction_count = 64,
				shift = {0.59375, 0.328125},
				max_advance = 1,
				stripes = util.multiplystripes(2,
				{
					{
						filename = "__base__/graphics/entity/tank/base-shadow-1.png",
						width_in_frames = 1,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-shadow-2.png",
						width_in_frames = 1,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-shadow-3.png",
						width_in_frames = 1,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-shadow-4.png",
						width_in_frames = 1,
						height_in_frames = 16,
					}
				})
			}
		}
	},
	turret_animation =
	{
		layers =
		{
			{
				filename = "__base__/graphics/entity/tank/turret.png",
				priority = "low",
				line_length = 8,
				width = 92,
				height = 69,
				frame_count = 1,
				direction_count = 64,
				shift = {-0.15625, -1.07812},
				animation_speed = 8,
			},
			{
				filename = "__base__/graphics/entity/tank/turret-mask.png",
				priority = "low",
				line_length = 8,
				width = 38,
				height = 29,
				frame_count = 1,
				apply_runtime_tint = true,
				direction_count = 64,
				shift = {-0.15625, -1.23438},
			},
			{
				filename = "__base__/graphics/entity/tank/turret-shadow.png",
				priority = "low",
				line_length = 8,
				width = 95,
				height = 67,
				frame_count = 1,
				draw_as_shadow = true,
				direction_count = 64,
				shift = {1.70312, 0.640625},
			}
		}
	},
	turret_rotation_speed = 0.005,
	turret_return_timeout = 300,
	stop_trigger_speed = 0.2,
	sound_no_fuel = {filename = "__base__/sound/fight/tank-no-fuel-1.ogg", volume = 0.6},
	stop_trigger =
	{
		{
			type = "play-sound",
			sound = {filename = "__base__/sound/car-breaks.ogg", volume = 0.6}
		},
	},
	sound_minimum_speed = 0.15;
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/fight/tank-engine.ogg", volume = 0.6},
		activate_sound = {filename = "__base__/sound/fight/tank-engine-start.ogg", volume = 0.6},
		deactivate_sound = {filename = "__base__/sound/fight/tank-engine-stop.ogg", volume = 0.6},
		match_speed_to_activity = true,
	},
	open_sound = {filename = "__base__/sound/car-door-open.ogg", volume=0.7},
	close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
	rotation_speed = 0.0035,
	tank_driving = true,
	weight = 20000,
	inventory_size = 80,
	guns = {"artillery-cannon", "tank-machine-gun"},
},
--Tank Mark 2
{
	type = "car",
	name = "tank-2",
	icon = "__xander-mod__/graphics/item/combat/structure/tank-2.png",
	flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
	minable = {mining_time = 1, result = "tank-2"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 6000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	energy_per_hit_point = 0.5,
	resistances =
	{
		{
			type = "fire",
			decrease = 15,
			percent = 60
		},
		{
			type = "physical",
			decrease = 15,
			percent = 60
		},
		{
			type = "impact",
			decrease = 50,
			percent = 80
		},
		{
			type = "explosion",
			decrease = 15,
			percent = 70
		},
		{
			type = "acid",
			decrease = 15,
			percent = 50
		}
	},
	collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
	selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
	effectivity = 0.6,
	braking_power = "2MW",
	burner =
	{
		fuel_category = "chemical",
		effectivity = 0.75,
		fuel_inventory_size = 5,
		smoke =
		{
			{
				name = "tank-smoke",
				deviation = {0.25, 0.25},
				frequency = 50,
				position = {0, 1.5},
				starting_frame = 0,
				starting_frame_deviation = 60
			}
		}
	},
	consumption = "2MW",
	terrain_friction_modifier = 0.1,
	friction = 0.002,
	light =
	{
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "extra-high",
				flags = {"light"},
				scale = 2,
				width = 200,
				height = 200,
			},
			shift = {-0.6, -14},
			size = 2,
			intensity = 0.6,
			color = {r = 0.9, g = 1.0, b = 1.0}
		},
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "extra-high",
				flags = {"light"},
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {0.6, -14},
			size = 2,
			intensity = 0.6,
			color = {r = 0.9, g = 1.0, b = 1.0}
		}
	},
	animation =
	{
		layers =
		{
			{
				priority = "low",
				width = 139,
				height = 110,
				frame_count = 2,
				direction_count = 64,
				shift = {-0.140625, -0.28125},
				animation_speed = 8,
				max_advance = 1,
				stripes =
				{
					{
						filename = "__base__/graphics/entity/tank/base-1.png",
						width_in_frames = 2,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-2.png",
						width_in_frames = 2,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-3.png",
						width_in_frames = 2,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-4.png",
						width_in_frames = 2,
						height_in_frames = 16,
					}
				}
			},
			{
				priority = "low",
				width = 109,
				height = 88,
				frame_count = 2,
				apply_runtime_tint = true,
				direction_count = 64,
				shift = {-0.140625, -0.65625},
				max_advance = 1,
				line_length = 2,
				stripes = util.multiplystripes(2,
				{
					{
						filename = "__base__/graphics/entity/tank/base-mask-1.png",
						width_in_frames = 1,
						height_in_frames = 22,
					},
					{
						filename = "__base__/graphics/entity/tank/base-mask-2.png",
						width_in_frames = 1,
						height_in_frames = 22,
					},
					{
						filename = "__base__/graphics/entity/tank/base-mask-3.png",
						width_in_frames = 1,
						height_in_frames = 20,
					},
				})
			},
			{
				priority = "low",
				width = 154,
				height = 99,
				frame_count = 2,
				draw_as_shadow = true,
				direction_count = 64,
				shift = {0.59375, 0.328125},
				max_advance = 1,
				stripes = util.multiplystripes(2,
				{
					{
						filename = "__base__/graphics/entity/tank/base-shadow-1.png",
						width_in_frames = 1,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-shadow-2.png",
						width_in_frames = 1,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-shadow-3.png",
						width_in_frames = 1,
						height_in_frames = 16,
					},
					{
						filename = "__base__/graphics/entity/tank/base-shadow-4.png",
						width_in_frames = 1,
						height_in_frames = 16,
					}
				})
			}
		}
	},
	turret_animation =
	{
		layers =
		{
			{
				filename = "__base__/graphics/entity/tank/turret.png",
				priority = "low",
				line_length = 8,
				width = 92,
				height = 69,
				frame_count = 1,
				direction_count = 64,
				shift = {-0.15625, -1.07812},
				animation_speed = 8,
			},
			{
				filename = "__base__/graphics/entity/tank/turret-mask.png",
				priority = "low",
				line_length = 8,
				width = 38,
				height = 29,
				frame_count = 1,
				apply_runtime_tint = true,
				direction_count = 64,
				shift = {-0.15625, -1.23438},
			},
			{
				filename = "__base__/graphics/entity/tank/turret-shadow.png",
				priority = "low",
				line_length = 8,
				width = 95,
				height = 67,
				frame_count = 1,
				draw_as_shadow = true,
				direction_count = 64,
				shift = {1.70312, 0.640625},
			}
		}
	},
	turret_rotation_speed = 0.02,
	turret_return_timeout = 300,
	stop_trigger_speed = 0.2,
	sound_no_fuel = {filename = "__base__/sound/fight/tank-no-fuel-1.ogg", volume = 0.6},
	stop_trigger =
	{
		{
			type = "play-sound",
			sound = {filename = "__base__/sound/car-breaks.ogg", volume = 0.6}
		},
	},
	sound_minimum_speed = 0.15;
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {filename = "__base__/sound/fight/tank-engine.ogg", volume = 0.6},
		activate_sound = {filename = "__base__/sound/fight/tank-engine-start.ogg", volume = 0.6},
		deactivate_sound = {filename = "__base__/sound/fight/tank-engine-stop.ogg", volume = 0.6},
		match_speed_to_activity = true,
	},
	open_sound = {filename = "__base__/sound/car-door-open.ogg", volume=0.7},
	close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
	rotation_speed = 0.0035,
	tank_driving = true,
	weight = 40000,
	inventory_size = 50,
	guns = {"tank-railgun", "tank-machine-gun", "tank-flamethrower"},
}

}
)