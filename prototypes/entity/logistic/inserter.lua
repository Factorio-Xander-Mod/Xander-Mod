
--Base Overrides

--Base "burner-inserter"
data.raw.inserter["burner-inserter"].max_health = 50
data.raw.inserter["burner-inserter"].energy_per_movement = 50000
data.raw.inserter["burner-inserter"].energy_per_rotation = 50000
data.raw.inserter["burner-inserter"].energy_source.fuel_category = "crude"

--Base "inserter"

--Base "long-handed-inserter"
data.raw.inserter["long-handed-inserter"].max_health = 150

--Base "fast-inserter"

--Base "filter-inserter"

--Base "stack-inserter"
data.raw.inserter["stack-inserter"].max_health = 200

--Base "stack-filter-inserter"
data.raw.inserter["stack-filter-inserter"].max_health = 200


data:extend(
{

--Base "burner-inserter" placeholder
--Chemical Fuel Burner Inserter
{
	type = "inserter",
	name = "inserter-chemical-burner",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-chemical-burner.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-chemical-burner"},
	max_health = 50,
	corpse = "small-remnants",
	allow_custom_vectors = false,
	resistances =
	{
		{
			type = "fire",
			percent = 90
		},
	},
	collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
	selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
	pickup_position = {0, -1},
	insert_position = {0, 1.2},
	energy_per_movement = 50000,
	energy_per_rotation = 50000,
	energy_source =
	{
		type = "burner",
		fuel_category = "chemical",
		effectivity = 1,
		fuel_inventory_size = 1,
		smoke =
		{
			{
				name = "smoke",
				deviation = {0.1, 0.1},
				frequency = 9
			}
		}
	},
	extension_speed = 0.0214,
	rotation_speed = 0.01,
	fast_replaceable_group = "inserter",
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		match_progress_to_activity = true,
		sound =
		{
			{filename = "__base__/sound/inserter-basic-1.ogg", volume = 0.75},
			{filename = "__base__/sound/inserter-basic-2.ogg", volume = 0.75},
			{filename = "__base__/sound/inserter-basic-3.ogg", volume = 0.75},
			{filename = "__base__/sound/inserter-basic-4.ogg", volume = 0.75},
			{filename = "__base__/sound/inserter-basic-5.ogg", volume = 0.75}
		}
	},
	hand_base_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/hand-base.png",
		priority = "extra-high",
		width = 8,
		height = 34,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/hr-hand-base.png",
			priority = "extra-high",
			width = 32,
			height = 136,
			scale = 0.25
		}
	},
	hand_closed_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/hand-closed.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/hr-hand-closed.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/hand-open.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/hr-hand-open.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_base_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
		priority = "extra-high",
		width = 8,
		height = 33,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 32,
			height = 132,
			scale = 0.25
		}
	},
	hand_closed_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	platform_picture =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/platform.png",
			priority = "extra-high",
			width = 46,
			height = 46,
			shift = {0.09375, 0},
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/hr-platform.png",
				priority = "extra-high",
				width = 105,
				height = 79,
				shift = util.by_pixel(1.5, 7.5-1),
				scale = 0.5
			}
		}
	},
	circuit_wire_connection_point = inserter_circuit_wire_connection_point,
	circuit_connector_sprites = inserter_circuit_connector_sprites,
	circuit_wire_max_distance = inserter_circuit_wire_max_distance,
	default_stack_control_input_signal = inserter_default_stack_control_input_signal
},
--Slow Electric Inserter
{
	type = "inserter",
	name = "inserter-slow",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-slow.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	allow_custom_vectors = false,
	minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-slow"},
	max_health = 50,
	corpse = "small-remnants",
	resistances =
	{
		{
			type = "fire",
			percent = 90
		}
	},
	collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
	selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
	pickup_position = {0, -1},
	insert_position = {0, 1.2},
	energy_per_movement = 20000,
	energy_per_rotation = 20000,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		drain = "1kW"
	},
	extension_speed = 0.0214,
	rotation_speed = 0.01,
	fast_replaceable_group = "inserter",
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		match_progress_to_activity = true,
		sound =
		{
			{
				filename = "__base__/sound/inserter-fast-1.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-2.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-3.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-4.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-5.ogg",
				volume = 0.75
			}
		}
	},
	hand_base_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/hand-base.png",
		priority = "extra-high",
		width = 8,
		height = 34,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/hr-hand-base.png",
			priority = "extra-high",
			width = 32,
			height = 136,
			scale = 0.25
		}
	},
	hand_closed_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/hand-closed.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/hr-hand-closed.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/hand-open.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/hr-hand-open.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_base_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
		priority = "extra-high",
		width = 8,
		height = 33,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 32,
			height = 132,
			scale = 0.25
		}
	},
	hand_closed_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	platform_picture =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/platform.png",
			priority = "extra-high",
			width = 46,
			height = 46,
			shift = {0.09375, 0},
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/logistic/inserter-slow/hr-platform.png",
				priority = "extra-high",
				width = 105,
				height = 79,
				shift = util.by_pixel(1.5, 7.5-1),
				scale = 0.5
			}
		}
	},
	circuit_wire_connection_point = inserter_circuit_wire_connection_point,
	circuit_connector_sprites = inserter_circuit_connector_sprites,
	circuit_wire_max_distance = inserter_circuit_wire_max_distance,
	default_stack_control_input_signal = inserter_default_stack_control_input_signal
},
--Base "inserter" placeholder
--Base "long-handed-inserter" placeholder
--Base "fast-inserter" placeholder
--Long Fast Inserter
{
	type = "inserter",
	name = "inserter-long-fast",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-long-fast.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	allow_custom_vectors = false,
	minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-long-fast"},
	max_health = 150,
	corpse = "small-remnants",
	resistances =
	{
		{
			type = "fire",
			percent = 90
		}
	},
	collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
	selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
	pickup_position = {0, -2},
	insert_position = {0, 2.2},
	energy_per_movement = 10000,
	energy_per_rotation = 10000,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		drain = "1kW"
	},
	extension_speed = 0.07,
	rotation_speed = 0.0457,
	fast_replaceable_group = "inserter",
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		match_progress_to_activity = true,
		sound =
		{
			{
				filename = "__base__/sound/inserter-fast-1.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-2.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-3.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-4.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-5.ogg",
				volume = 0.75
			}
		}
	},
	hand_base_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/hand-base.png",
		priority = "extra-high",
		width = 8,
		height = 34,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/hr-hand-base.png",
			priority = "extra-high",
			width = 32,
			height = 136,
			scale = 0.25
		}
	},
	hand_closed_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/hand-closed.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/hr-hand-closed.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/hand-open.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/hr-hand-open.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_base_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
		priority = "extra-high",
		width = 8,
		height = 33,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 32,
			height = 132,
			scale = 0.25
		}
	},
	hand_closed_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
		priority = "extra-high",
		width = 18,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 72,
			height = 164,
			scale = 0.25
		}
	},
	platform_picture =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/platform.png",
			priority = "extra-high",
			width = 46,
			height = 46,
			shift = {0.09375, 0},
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/logistic/inserter-long-fast/hr-platform.png",
				priority = "extra-high",
				width = 105,
				height = 79,
				shift = util.by_pixel(1.5, 7.5-1),
				scale = 0.5
			}
		}
	},
	circuit_wire_connection_point = inserter_circuit_wire_connection_point,
	circuit_connector_sprites = inserter_circuit_connector_sprites,
	circuit_wire_max_distance = inserter_circuit_wire_max_distance,
	default_stack_control_input_signal = inserter_default_stack_control_input_signal
},
--Base "filter-inserter" placeholder
--Base "stack-inserter" placeholder
--Long Stack Inserter
{
	type = "inserter",
	name = "inserter-long-stack",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-long-stack.png",
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	stack = true,
	allow_custom_vectors = false,
	minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-long-stack"},
	max_health = 200,
	corpse = "small-remnants",
	resistances =
	{
		{
			type = "fire",
			percent = 90
		}
	},
	collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
	selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
	pickup_position = {0, -2},
	insert_position = {0, 2.2},
	energy_per_movement = 40000,
	energy_per_rotation = 40000,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		drain = "2kW"
	},
	extension_speed = 0.07,
	rotation_speed = 0.0457,
	fast_replaceable_group = "inserter",
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		match_progress_to_activity = true,
		sound =
		{
			{
				filename = "__base__/sound/inserter-fast-1.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-2.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-3.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-4.ogg",
				volume = 0.75
			},
			{
				filename = "__base__/sound/inserter-fast-5.ogg",
				volume = 0.75
			}
		}
	},
	hand_base_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/hand-base.png",
		priority = "extra-high",
		width = 8,
		height = 34,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/hr-hand-base.png",
			priority = "extra-high",
			width = 32,
			height = 136,
			scale = 0.25
		}
	},
	hand_closed_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/hand-closed.png",
		priority = "extra-high",
		width = 24,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/hr-hand-closed.png",
			priority = "extra-high",
			width = 100,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_picture =
	{
		filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/hand-open.png",
		priority = "extra-high",
		width = 32,
		height = 41,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/hr-hand-open.png",
			priority = "extra-high",
			width = 130,
			height = 164,
			scale = 0.25
		}
	},
	hand_base_shadow =
	{
		filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
		priority = "extra-high",
		width = 8,
		height = 33,
		hr_version =
		{
			filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 32,
			height = 132,
			scale = 0.25
		}
	},
	hand_closed_shadow =
	{
		filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-closed-shadow.png",
		priority = "extra-high",
		width = 24,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 100,
			height = 164,
			scale = 0.25
		}
	},
	hand_open_shadow =
	{
		filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-open-shadow.png",
		priority = "extra-high",
		width = 32,
		height = 41,
		hr_version =
		{
			filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 130,
			height = 164,
			scale = 0.25
		}
	},
	platform_picture =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/platform.png",
			priority = "extra-high",
			width = 46,
			height = 46,
			shift = {0.09375, 0},
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/logistic/inserter-long-stack/hr-platform.png",
				priority = "extra-high",
				width = 105,
				height = 79,
				shift = util.by_pixel(1.5, 7.5-1),
				scale = 0.5
			}
		}
	},
	circuit_wire_connection_point = inserter_circuit_wire_connection_point,
	circuit_connector_sprites = inserter_circuit_connector_sprites,
	circuit_wire_max_distance = inserter_circuit_wire_max_distance,
	default_stack_control_input_signal = inserter_default_stack_control_input_signal
}
--Base "stack-filter-inserter" placeholder

}
)
