local xmutil = require("xmutil")

--Base Overrides

--Base "logistic-robot"
data.raw["logistic-robot"]["logistic-robot"].max_energy = "2MJ"

--Base "construction-robot"
data.raw["construction-robot"]["construction-robot"].max_health = 200
data.raw["construction-robot"]["construction-robot"].speed = 0.05
data.raw["construction-robot"]["construction-robot"].max_energy = "2MJ"

--Base "roboport"
--Base "wooden-chest"
--Base "iron-chest"
--Base "steel-chest"


data:extend(
{

--Base "logistic-robot" placeholder
--Fast Logistic Robot
xmutil.clone("logistic-robot", "logistic-robot",
	{
	},
	{
		name = "logistic-robot-2",
		icon = "__xander-mod__/graphics/item/logistic/robot/logistic-robot-2.png",
		minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot-2"},
		max_health = 150,
		max_payload_size = 4,
		speed = 0.2,
		max_energy = "5MJ",
		energy_per_tick = "0.02kJ",
		energy_per_move = "10kJ",
		idle = {
			filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
			hr_version = xmutil.NIL,
		},
		idle_with_cargo = {
			filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
			hr_version = xmutil.NIL,
		},
		in_motion = {
			filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
			hr_version = xmutil.NIL,
		},
		in_motion_with_cargo = {
			filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
			hr_version = xmutil.NIL,
		},
	}
),
--Base "construction-robot" placeholder
--Durable Construction Robot
xmutil.clone("construction-robot", "construction-robot",
	{},
	{
		name = "construction-robot-2",
		icon = "__xander-mod__/graphics/item/logistic/robot/construction-robot-2.png",
		minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-2"},
		max_health = 400,
		max_payload_size = 2,
		speed = 0.1,
		max_energy = "5MJ",
		energy_per_tick = "0.05kJ",
		energy_per_move = "10kJ",
		idle = {
			filename = "__xander-mod__/graphics/entity/logistic/construction-robot-2/2.png",
			hr_version = xmutil.NIL,
		},
		in_motion = {
			filename = "__xander-mod__/graphics/entity/logistic/construction-robot-2/2.png",
			hr_version = xmutil.NIL,
		},
		working = {
			filename = "__xander-mod__/graphics/entity/logistic/construction-robot-2/working.png",
			hr_version = xmutil.NIL,
		},
	}
),
--Base "roboport" placeholder
--Long-Range Roboport
xmutil.clone("roboport", "roboport",
{},
{
	name = "roboport-2",
	icon = "__xander-mod__/graphics/item/logistic/robot/roboport-2.png",
	minable = {hardness = 0.2, mining_time = 0.5, result = "roboport-2"},
	max_health = 1000,
	energy_source = {
		input_flow_limit = "10MW",
		buffer_capacity = "200MJ"
	},
	energy_usage = "100kW",
	charging_energy = "2MW",
	logistics_radius = 50,
	construction_radius = 110,
	robot_slots_count = 10,
	material_slots_count = 10,
	base = {
		layers = {
			{
				filename = "__xander-mod__/graphics/entity/logistic/roboport-2/base.png",
				hr_version = xmutil.NIL,
			},
		},
	},
	base_patch = {
		filename = "__xander-mod__/graphics/entity/logistic/roboport-2/base-patch.png",
		hr_version = xmutil.NIL,
	},
	base_animation = {
		filename = "__xander-mod__/graphics/entity/logistic/roboport-2/base-animation.png",
		hr_version = xmutil.NIL,
	},
	door_animation_up = {
		filename = "__xander-mod__/graphics/entity/logistic/roboport-2/door-up.png",
		hr_version = xmutil.NIL,
	},
	door_animation_down = {
		filename = "__xander-mod__/graphics/entity/logistic/roboport-2/door-down.png",
		hr_version = xmutil.NIL,
	},
}
),
--Base "wooden-chest" placeholder
--Base "iron-chest" placeholder
--Base "steel-chest" placeholder
--Base "logistic-chest-passive-provider" placeholder
--Base "logistic-chest-active-provider" placeholder
--Base "logistic-chest-storage" placeholder
--Base "logistic-chest-requester" placeholder

}
)