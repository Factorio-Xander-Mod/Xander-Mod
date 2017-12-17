local xmutil = require("xmutil")

--Slow Belt Animation Stuff
slow_belt_horizontal =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		scale = 0.5,
		frame_count = 16
	}
}
slow_belt_vertical =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 40,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 16,
		scale = 0.5,
		y = 80
	}
}
slow_belt_ending_top =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 80,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 16,
		scale = 0.5,
		y = 160
	}
}
slow_belt_ending_bottom =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 120,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 16,
		scale = 0.5,
		y = 240
	}
}
slow_belt_ending_side =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 160,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 16,
		scale = 0.5,
		y = 320
	}
}
slow_belt_starting_top =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 200,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 16,
		scale = 0.5,
		y = 400
	}
}
slow_belt_starting_bottom =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 240,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 16,
		scale = 0.5,
		y = 480
	}
}
slow_belt_starting_side =
{
	filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 280,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 16,
		scale = 0.5,
		y = 560
	}
}

--Expedited Belt Animation Stuff
expedited_belt_horizontal =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		scale = 0.5
	}
}
expedited_belt_vertical =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 40,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		y = 160,
		scale = 0.5
	}
}
expedited_belt_ending_top =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 80,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		y = 320,
		scale = 0.5
	}
}
expedited_belt_ending_bottom =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 120,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		y = 480,
		scale = 0.5
	}
}
expedited_belt_ending_side =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 160,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		y = 640,		
		scale = 0.5
	}
}
expedited_belt_starting_top =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 200,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		y = 800,
		scale = 0.5
	}
}
expedited_belt_starting_bottom =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 240,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		y = 960,
		scale = 0.5
	}
}
expedited_belt_starting_side =
{
	filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 32,
	y = 280,
	hr_version =
	{
		filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
		priority = "extra-high",
		width = 80,
		height = 80,
		frame_count = 32,
		line_length = 16,
		y = 1120,
		scale = 0.5
	}
}


--Base Overrides

--Base "transport-belt"
data.raw["transport-belt"]["transport-belt"].max_health = 120

--Base "fast-transport-belt"
data.raw["transport-belt"]["fast-transport-belt"].max_health = 140

--Base "express-transport-belt"
data.raw["transport-belt"]["express-transport-belt"].max_health = 180
data.raw["transport-belt"]["express-transport-belt"].speed = 0.15625

--Base "underground-belt"
data.raw["underground-belt"]["underground-belt"].max_health = 120

--Base "fast-underground-belt"
data.raw["underground-belt"]["fast-underground-belt"].max_health = 140

--Base "express-underground-belt"
data.raw["underground-belt"]["express-underground-belt"].max_health = 180
data.raw["underground-belt"]["express-underground-belt"].speed = 0.15625

--Base "splitter"
data.raw.splitter["splitter"].max_health = 240

--Base "fast-splitter"
data.raw.splitter["fast-splitter"].max_health = 280

--Base "express-splitter"
data.raw.splitter["express-splitter"].max_health = 360
data.raw.splitter["express-splitter"].speed = 0.15625

--Base "loader"
data.raw.loader["loader"].max_health = 150

--Base "fast-loader"
data.raw.loader["fast-loader"].max_health = 200

--Base "express-loader"
data.raw.loader["express-loader"].max_health = 300
data.raw.loader["express-loader"].speed = 0.15625


data:extend{

--Slow Transport Belt
xmutil.clone("transport-belt", "transport-belt",
	{},
	{
		name = "slow-transport-belt",
		icon = "__xander-mod__/graphics/item/logistic/belt/slow-transport-belt.png",
		minable = {hardness = 0.2, mining_time = 0.3, result = "slow-transport-belt"},
		max_health = 100,
		animations = {
			filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/belt.png",
			hr_version = { filename = "__xander-mod__/graphics/entity/logistic/slow-transport-belt/hr-belt.png" }
		},
		belt_horizontal = slow_belt_horizontal,
		belt_vertical = slow_belt_vertical,
		ending_top = slow_belt_ending_top,
		ending_bottom = slow_belt_ending_bottom,
		ending_side = slow_belt_ending_side,
		starting_top = slow_belt_starting_top,
		starting_bottom = slow_belt_starting_bottom,
		starting_side = slow_belt_starting_side,
		speed = 0.015625,
	}
),
--Base "transport-belt" placeholder
--Base "fast-transport-belt" placeholder
--Expedited Transport Belt
xmutil.clone("transport-belt", "fast-transport-belt",
	{},
	{
		name = "expedited-transport-belt",
		icon = "__xander-mod__/graphics/item/logistic/belt/expedited-transport-belt.png",
		minable = {hardness = 0.2, mining_time = 0.3, result = "expedited-transport-belt"},
		max_health = 160,
		animations = {
			filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/belt.png",
			hr_version = { filename = "__xander-mod__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png" }
		},
		speed = 0.015625,
		belt_horizontal = expedited_belt_horizontal,
		belt_vertical = expedited_belt_vertical,
		ending_top = expedited_belt_ending_top,
		ending_bottom = expedited_belt_ending_bottom,
		ending_side = expedited_belt_ending_side,
		starting_top = expedited_belt_starting_top,
		starting_bottom = expedited_belt_starting_bottom,
		starting_side = expedited_belt_starting_side,
		speed = 0.09375,
	}
),
--Base "express-transport-belt" placeholder

--Slow Underground Belt
xmutil.clone("underground-belt", "underground-belt",
	{
		{
			"__base__/graphics/entity/underground-belt/(h?r?-?)underground-belt-",
			"__xander-mod__/graphics/entity/logistic/slow-underground-belt/%1",
		}
	},
	{
		name = "slow-underground-belt",
		icon = "__xander-mod__/graphics/item/logistic/belt/slow-underground-belt.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "slow-underground-belt"},
		max_health = 100,
		max_distance = 3,
		belt_horizontal = slow_belt_horizontal,
		belt_vertical = slow_belt_vertical,
		ending_top = slow_belt_ending_top,
		ending_bottom = slow_belt_ending_bottom,
		ending_side = slow_belt_ending_side,
		starting_top = slow_belt_starting_top,
		starting_bottom = slow_belt_starting_bottom,
		starting_side = slow_belt_starting_side,
		speed = 0.015625,
	}
),
--Base "underground-belt" placeholder
--Base "fast-underground-belt" placeholder
--Expedited Underground Belt
xmutil.clone("underground-belt", "fast-underground-belt",
	{
		{
			"__base__/graphics/entity/fast-underground-belt/fast-underground-belt-",
			"__xander-mod__/graphics/entity/logistic/expedited-underground-belt/",
		}
	},
	{
		name = "expedited-underground-belt",
		icon = "__xander-mod__/graphics/item/logistic/belt/expedited-underground-belt.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "expedited-underground-belt"},
		max_health = 160,
		max_distance = 9,
		belt_horizontal = expedited_belt_horizontal,
		belt_vertical = expedited_belt_vertical,
		ending_top = expedited_belt_ending_top,
		ending_bottom = expedited_belt_ending_bottom,
		ending_side = expedited_belt_ending_side,
		starting_top = expedited_belt_starting_top,
		starting_bottom = expedited_belt_starting_bottom,
		starting_side = expedited_belt_starting_side,
		speed = 0.09375,
	}
),
--Base "express-underground-belt" placeholder

--Slow Splitter
xmutil.clone("splitter", "splitter",
	{
		{
			"__base__/graphics/entity/splitter/splitter-",
			"__xander-mod__/graphics/entity/logistic/slow-splitter/",
		}
	},
	{
		name = "slow-splitter",
		icon = "__xander-mod__/graphics/item/logistic/belt/slow-splitter.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "slow-splitter"},
		max_health = 200,
		belt_horizontal = slow_belt_horizontal,
		belt_vertical = slow_belt_vertical,
		ending_top = slow_belt_ending_top,
		ending_bottom = slow_belt_ending_bottom,
		ending_side = slow_belt_ending_side,
		starting_top = slow_belt_starting_top,
		starting_bottom = slow_belt_starting_bottom,
		starting_side = slow_belt_starting_side,
		speed = 0.015625,
	}
),
--Base "splitter" placeholder
--Base "fast-splitter" placeholder
--Expedited Splitter
xmutil.clone("splitter", "fast-splitter",
	{
		{
			"__base__/graphics/entity/fast-splitter/fast-splitter-",
			"__xander-mod__/graphics/entity/logistic/expedited-splitter/",
		}
	},
	{
		name = "expedited-splitter",
		icon = "__xander-mod__/graphics/item/logistic/belt/expedited-splitter.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "expedited-splitter"},
		max_health = 320,
		belt_horizontal = expedited_belt_horizontal,
		belt_vertical = expedited_belt_vertical,
		ending_top = expedited_belt_ending_top,
		ending_bottom = expedited_belt_ending_bottom,
		ending_side = expedited_belt_ending_side,
		starting_top = expedited_belt_starting_top,
		starting_bottom = expedited_belt_starting_bottom,
		starting_side = expedited_belt_starting_side,
		speed = 0.9375,
	}
),
--Base "express-splitter" placeholder

--Base "loader" placeholder
--Base "fast-loader" placeholder
--Expedited Loader
xmutil.clone("loader", "fast-loader",
	{},
	{
		name = "expedited-loader",
		icon = "__xander-mod__/graphics/item/logistic/belt/expedited-loader.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "expedited-loader"},
		max_health = 250,
		filter_count = 5,
		animation_speed_coefficient = 32,
		belt_horizontal = expedited_belt_horizontal,
		belt_vertical = expedited_belt_vertical,
		ending_top = expedited_belt_ending_top,
		ending_bottom = expedited_belt_ending_bottom,
		ending_side = expedited_belt_ending_side,
		starting_top = expedited_belt_starting_top,
		starting_bottom = expedited_belt_starting_bottom,
		starting_side = expedited_belt_starting_side,
		speed = 0.09375,
	}
),
--Base "express-loader" placeholder

}