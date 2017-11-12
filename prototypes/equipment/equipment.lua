
--Base Overrides

--Base "solar-panel-equipment"
data.raw["solar-panel-equipment"]["solar-panel-equipment"].sprite.filename = "__xander-mod__/graphics/equipment/solar-panel-equipment-1.png"

--Personal Roboport Mark 2
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.filename = "__xander-mod__/graphics/equipment/personal-roboport-mk2-equipment.png"


data:extend(
{

--Efficient Solar panel Equipment
{
	type = "solar-panel-equipment",
	name = "solar-panel-equipment-2",
	sprite =
	{
		filename = "__base__/graphics/equipment/solar-panel-equipment.png",
		width = 32,
		height = 32,
		priority = "medium"
	},
	shape =
	{
		width = 1,
		height = 1,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "primary-output"
	},
	power = "20kW",
	categories = {"armor"}
},
--Portable Fission Reactor
{
	type = "generator-equipment",
	name = "fission-reactor-equipment",
	sprite =
	{
		filename = "__xander-mod__/graphics/equipment/fission-reactor-equipment.png",
		width = 128,
		height = 128,
		priority = "medium"
	},
	shape =
	{
		width = 4,
		height = 4,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "primary-output"
	},
	power = "500kW",
	categories = {"armor"}
},
--Energy Shield Mark 3
{
	type = "energy-shield-equipment",
	name = "energy-shield-mk3-equipment",
	sprite =
	{
		filename = "__xander-mod__/graphics/equipment/energy-shield-mk3-equipment.png",
		width = 64,
		height = 64,
		priority = "medium"
	},
	shape =
	{
		width = 2,
		height = 2,
		type = "full"
	},
	max_shield_value = 300,
	energy_source =
	{
		type = "electric",
		buffer_capacity = "240kJ",
		input_flow_limit = "480kW",
		usage_priority = "primary-input"
	},
	energy_per_shield = "40kJ",
	categories = {"armor"}
},
--Energy Shield Mark 4
{
	type = "energy-shield-equipment",
	name = "energy-shield-mk4-equipment",
	sprite =
	{
		filename = "__xander-mod__/graphics/equipment/energy-shield-mk4-equipment.png",
		width = 64,
		height = 64,
		priority = "medium"
	},
	shape =
	{
		width = 2,
		height = 2,
		type = "full"
	},
	max_shield_value = 400,
	energy_source =
	{
		type = "electric",
		buffer_capacity = "360kJ",
		input_flow_limit = "600kW",
		usage_priority = "primary-input"
	},
	energy_per_shield = "50kJ",
	categories = {"armor"}
},
--Battery Mark 3
{
	type = "battery-equipment",
	name = "battery-mk3-equipment",
	sprite =
	{
		filename = "__xander-mod__/graphics/equipment/battery-mk3-equipment.png",
		width = 32,
		height = 64,
		priority = "medium"
	},
	shape =
	{
		width = 1,
		height = 2,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		buffer_capacity = "500MJ",
		input_flow_limit = "5GW",
		output_flow_limit = "5GW",
		usage_priority = "terciary"
	},
	categories = {"armor"}
},
--Personal Laser Defense Mark 2
{
	type = "active-defense-equipment",
	name = "personal-laser-defense-mk2-equipment",
	sprite =
	{
		filename = "__xander-mod__/graphics/equipment/personal-laser-defense-mk2-equipment.png",
		width = 64,
		height = 64,
		priority = "medium"
	},
	shape =
	{
		width = 2,
		height = 2,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		buffer_capacity = "550kJ"
	},
	attack_parameters =
	{
		type = "projectile",
		ammo_category = "electric",
		cooldown = 15,
		damage_modifier = 30,
		projectile_center = {0, 0},
		projectile_creation_distance = 0.6,
		range = 20,
		sound = make_laser_sounds(),
		ammo_type =
		{
			type = "projectile",
			category = "electric",
			energy_consumption = "500kJ",
			projectile = "laser",
			speed = 1,
			action =
			{
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "projectile",
							projectile = "laser",
							starting_speed = 0.28
						}
					}
				}
			}
		}
	},
	automatic = true,
	categories = {"armor"}
},
--Personal Laser Defense Mark 3
{
	type = "active-defense-equipment",
	name = "personal-laser-defense-mk3-equipment",
	sprite =
	{
		filename = "__xander-mod__/graphics/equipment/personal-laser-defense-mk3-equipment.png",
		width = 64,
		height = 64,
		priority = "medium"
	},
	shape =
	{
		width = 2,
		height = 2,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		buffer_capacity = "1100kJ"
	},
	attack_parameters =
	{
		type = "projectile",
		ammo_category = "electric",
		cooldown = 10,
		damage_modifier = 45,
		projectile_center = {0, 0},
		projectile_creation_distance = 0.6,
		range = 25,
		sound = make_laser_sounds(),
		ammo_type =
		{
			type = "projectile",
			category = "electric",
			energy_consumption = "1000kJ",
			projectile = "laser",
			speed = 1,
			action =
			{
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "projectile",
							projectile = "laser",
							starting_speed = 0.28
						}
					}
				}
			}
		}
	},
	automatic = true,
	categories = {"armor"}
},
--Exoskeleton Equipment Mark 2
{
	type = "movement-bonus-equipment",
	name = "exoskeleton-mk2-equipment",
	sprite =
	{
		filename = "__xander-mod__/graphics/equipment/exoskeleton-mk2-equipment.png",
		width = 64,
		height = 128,
		priority = "medium"
	},
	shape =
	{
		width = 2,
		height = 4,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input"
	},
	energy_consumption = "400kW",
	movement_bonus = 0.5,
	categories = {"armor"}
},
--Personal Roboport Mark 3
{
	type = "roboport-equipment",
	name = "personal-roboport-mk3-equipment",
	take_result = "personal-roboport-equipment",
	sprite =
	{
		filename = "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",
		width = 64,
		height = 64,
		priority = "medium"
	},
	shape =
	{
		width = 2,
		height = 2,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		buffer_capacity = "50MJ",
		input_flow_limit = "5000KW",
		usage_priority = "secondary-input"
	},
	charging_energy = "1000kW",

	robot_limit = 50,
	construction_radius = 40,
	spawn_and_station_height = 0.4,
	charge_approach_distance = 2.6,

	recharging_animation =
	{
		filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
		priority = "high",
		width = 37,
		height = 35,
		frame_count = 16,
		scale = 1.5,
		animation_speed = 0.5
	},
	recharging_light = {intensity = 0.4, size = 5},
	stationing_offset = {0, -0.6},
	charging_station_shift = {0, 0.5},
	charging_station_count = 6,
	charging_distance = 1.6,
	charging_threshold_distance = 5,
	categories = {"armor"}
}

}
)