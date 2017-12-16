local xmutil = require("xmutil")

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
xmutil.clone("inserter", "burner-inserter",
	{
		{
			"__base__/graphics/entity/burner-inserter/burner-inserter-",
			"__xander-mod__/graphics/entity/logistic/inserter-chemical-burner/",
		},
	},
	{
		name = "inserter-chemical-burner",
		icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-chemical-burner.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-chemical-burner"},
		energy_source = { fuel_category = "chemical" },
	}
),
--Slow Electric Inserter
xmutil.clone("inserter", "inserter",
	{
		{
			"__base__/graphics/entity/inserter/inserter-",
			"__xander-mod__/graphics/entity/logistic/inserter-slow/",
		},
	},
	{
		name = "inserter-slow",
		icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-slow.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-slow"},
		max_health = 50,
		energy_per_movement = 20000,
		energy_per_rotation = 20000,
		energy_source = { drain = "1kW" },
		extension_speed = 0.0214,
		rotation_speed = 0.01,
	}
),
--Base "inserter" placeholder
--Base "long-handed-inserter" placeholder
--Base "fast-inserter" placeholder
--Long Fast Inserter
xmutil.clone("inserter", "fast-inserter",
	{
		{
			"__base__/graphics/entity/fast-inserter/fast-inserter-",
			"__xander-mod__/graphics/entity/logistic/inserter-long-fast/",
		},
	},
	{
		name = "inserter-long-fast",
		icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-long-fast.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-long-fast"},
		energy_per_movement = 10000,
		energy_per_rotation = 10000,
		energy_source = { drain = "1kW" },
		extension_speed = 0.07,
		rotation_speed = 0.0457,
	}
),
--Base "filter-inserter" placeholder
--Base "stack-inserter" placeholder
--Long Stack Inserter
xmutil.clone("inserter", "stack-inserter",
	{
		{
			"__base__/graphics/entity/stack-inserter/stack-inserter-",
			"__xander-mod__/graphics/entity/logistic/inserter-long-stack/",
		},
	},
	{
		name = "inserter-long-stack",
		icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-long-stack.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "inserter-long-stack"},
		max_health = 200,
		energy_per_movement = 40000,
		energy_per_rotation = 40000,
		energy_source = { drain = "2kW" },
		extension_speed = 0.07,
		rotation_speed = 0.0457,
	}
),
--Base "stack-filter-inserter" placeholder

}
)