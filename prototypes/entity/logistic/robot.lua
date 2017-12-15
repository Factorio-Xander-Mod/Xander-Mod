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
{
	type = "logistic-robot",
	name = "logistic-robot-2",
	icon = "__xander-mod__/graphics/item/logistic/robot/logistic-robot-2.png",
	flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
	minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot-2"},
	resistances = {{type = "fire", percent = 85}},
	max_health = 150,
	collision_box = {{0, 0}, {0, 0}},
	selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
	max_payload_size = 4,
	speed = 0.2,
	transfer_distance = 0.5,
	max_energy = "5MJ",
	energy_per_tick = "0.02kJ",
	speed_multiplier_when_out_of_energy = 0.2,
	energy_per_move = "10kJ",
	min_to_charge = 0.2,
	max_to_charge = 0.95,
	idle =
	{
		filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
		priority = "high",
		line_length = 16,
		width = 41,
		height = 42,
		frame_count = 1,
		shift = {0.015625, -0.09375},
		direction_count = 16,
		y = 42
	},
	idle_with_cargo =
	{
		filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
		priority = "high",
		line_length = 16,
		width = 41,
		height = 42,
		frame_count = 1,
		shift = {0.015625, -0.09375},
		direction_count = 16
	},
	in_motion =
	{
		filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
		priority = "high",
		line_length = 16,
		width = 41,
		height = 42,
		frame_count = 1,
		shift = {0.015625, -0.09375},
		direction_count = 16,
		y = 126
	},
	in_motion_with_cargo =
	{
		filename = "__xander-mod__/graphics/entity/logistic/logistic-robot-2/2.png",
		priority = "high",
		line_length = 16,
		width = 41,
		height = 42,
		frame_count = 1,
		shift = {0.015625, -0.09375},
		direction_count = 16,
		y = 84
	},
	shadow_idle =
	{
		filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 59,
		height = 23,
		frame_count = 1,
		shift = {0.96875, 0.609375},
		direction_count = 16,
		y = 23
	},
	shadow_idle_with_cargo =
	{
		filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 59,
		height = 23,
		frame_count = 1,
		shift = {0.96875, 0.609375},
		direction_count = 16
	},
	shadow_in_motion =
	{
		filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 59,
		height = 23,
		frame_count = 1,
		shift = {0.96875, 0.609375},
		direction_count = 16,
		y = 23
	},
	shadow_in_motion_with_cargo =
	{
		filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 59,
		height = 23,
		frame_count = 1,
		shift = {0.96875, 0.609375},
		direction_count = 16
	},
	working_sound = flying_robot_sounds(),
	cargo_centered = {0.0, 0.2},
},
--Base "construction-robot" placeholder
--Durable Construction Robot
{
	type = "construction-robot",
	name = "construction-robot-2",
	icon = "__xander-mod__/graphics/item/logistic/robot/construction-robot-2.png",
	flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
	minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-2"},
	resistances = {{type = "fire", percent = 85}},
	max_health = 400,
	collision_box = {{0, 0}, {0, 0}},
	selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
	max_payload_size = 2,
	speed = 0.1,
	transfer_distance = 0.5,
	max_energy = "5MJ",
	energy_per_tick = "0.05kJ",
	speed_multiplier_when_out_of_energy = 0.2,
	energy_per_move = "10kJ",
	min_to_charge = 0.2,
	max_to_charge = 0.95,
	working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
	idle =
	{
		filename = "__xander-mod__/graphics/entity/logistic/construction-robot-2/2.png",
		priority = "high",
		line_length = 16,
		width = 32,
		height = 36,
		frame_count = 1,
		shift = {0, -0.15625},
		direction_count = 16
	},
	in_motion =
	{
		filename = "__xander-mod__/graphics/entity/logistic/construction-robot-2/2.png",
		priority = "high",
		line_length = 16,
		width = 32,
		height = 36,
		frame_count = 1,
		shift = {0, -0.15625},
		direction_count = 16,
		y = 36
	},
	shadow_idle =
	{
		filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 50,
		height = 24,
		frame_count = 1,
		shift = {1.09375, 0.59375},
		direction_count = 16
	},
	shadow_in_motion =
	{
		filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
		priority = "high",
		line_length = 16,
		width = 50,
		height = 24,
		frame_count = 1,
		shift = {1.09375, 0.59375},
		direction_count = 16
	},
	working =
	{
		filename = "__xander-mod__/graphics/entity/logistic/construction-robot-2/working.png",
		priority = "high",
		line_length = 2,
		width = 28,
		height = 36,
		frame_count = 2,
		shift = {0, -0.15625},
		direction_count = 16,
		animation_speed = 0.3,
	},
	shadow_working =
	{
		stripes = util.multiplystripes(2,
		{
			{
				filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
				width_in_frames = 16,
				height_in_frames = 1,
			}
		}),
		priority = "high",
		width = 50,
		height = 24,
		frame_count = 2,
		shift = {1.09375, 0.59375},
		direction_count = 16
	},
	smoke =
	{
		filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
		width = 39,
		height = 32,
		frame_count = 19,
		line_length = 19,
		shift = {0.078125, -0.15625},
		animation_speed = 0.3,
	},
	sparks =
	{
		{
			filename = "__base__/graphics/entity/sparks/sparks-01.png",
			width = 39,
			height = 34,
			frame_count = 19,
			line_length = 19,
			shift = {-0.109375, 0.3125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-02.png",
			width = 36,
			height = 32,
			frame_count = 19,
			line_length = 19,
			shift = {0.03125, 0.125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-03.png",
			width = 42,
			height = 29,
			frame_count = 19,
			line_length = 19,
			shift = {-0.0625, 0.203125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-04.png",
			width = 40,
			height = 35,
			frame_count = 19,
			line_length = 19,
			shift = {-0.0625, 0.234375},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-05.png",
			width = 39,
			height = 29,
			frame_count = 19,
			line_length = 19,
			shift = {-0.109375, 0.171875},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3
		},
		{
			filename = "__base__/graphics/entity/sparks/sparks-06.png",
			width = 44,
			height = 36,
			frame_count = 19,
			line_length = 19,
			shift = {0.03125, 0.3125},
			tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
			animation_speed = 0.3
		},
	},
	working_sound = flying_robot_sounds(),
	cargo_centered = {0.0, 0.2},
	construction_vector = {0.30, 0.22},
},
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