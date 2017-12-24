local xmutil = require("xmutil")

--Base Overrides

--Base "offshore-pump"
data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 10

--Base "burner-mining-drill"
data.raw["mining-drill"]["burner-mining-drill"].max_health = 100
data.raw["mining-drill"]["burner-mining-drill"].mining_speed = 0.4
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_category = "crude"
data.raw["mining-drill"]["burner-mining-drill"].energy_source.emissions = 0.01
data.raw["mining-drill"]["burner-mining-drill"].energy_usage = "200kW"
data.raw["mining-drill"]["burner-mining-drill"].mining_power = 2

--Base "electric-mining-drill"
data.raw["mining-drill"]["electric-mining-drill"].max_health = 200
data.raw["mining-drill"]["electric-mining-drill"].resource_categories = {"basic-solid", "hard-solid"}
data.raw["mining-drill"]["electric-mining-drill"].mining_speed = 1
data.raw["mining-drill"]["electric-mining-drill"].energy_source.emissions = 0.02
data.raw["mining-drill"]["electric-mining-drill"].energy_usage = "100kW"
data.raw["mining-drill"]["electric-mining-drill"].mining_power = 2.5
data.raw["mining-drill"]["electric-mining-drill"].module_specification = {module_slots = 2}

--Base "pumpjack"
data.raw["mining-drill"]["pumpjack"].energy_usage = "100kW"


data:extend(
{

--Base "offshore-pump" placeholder
--XM Proper Steel Parts Offshore Pump
xmutil.clone("offshore-pump", "offshore-pump",
	{
		{
			"__base__/graphics/entity/offshore-pump/offshore-pump.png",
			"__xander-mod__/graphics/entity/production/offshore-pump-1/1.png",
		},
	},
	{
		name = "offshore-pump-1",
		icon = "__xander-mod__/graphics/item/production/miner/offshore-pump-1.png",
		minable = {mining_time = 1, result = "offshore-pump-1"},
		max_health = 200,
		pumping_speed = 20,
	}
),
--XM Logging Camp
xmutil.clone("assembling-machine", "assembling-machine-2",
	{},
	{
		name = "logging-camp",
		icon = "__xander-mod__/graphics/item/production/miner/logging-camp.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "logging-camp"},
		max_health = 50,
		fluid_boxes = {
			[2] = xmutil.NIL,
			off_when_no_fluid_recipe = false
		},
		animation = {
			layers = {
				{
					filename = "__xander-mod__/graphics/entity/production/logging-camp/logging-camp.png",
					priority = "high",
					width = 113,
					height = 91,
					frame_count = 33,
					line_length = 11,
					shift = {0.2, 0.15},
					hr_version = xmutil.NIL,
				},
				[2] = xmutil.NIL,
			}
		},
		crafting_categories = {"temp-logging"},
		crafting_speed = 1,
		energy_source = {
			type = "burner",
			fuel_category = "crude",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions = 0.01,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 5,
					position = {0.0, -0.8},
					starting_vertical_speed = 0.08,
					starting_frame_deviation = 60
				}
			}
		},
		energy_usage = "200kW",
		ingredient_count = 2,
		module_specification = xmutil.NIL,
	}
),
--Base "burner-mining-drill" placeholder
--Base "electric-mining-drill" placeholder
--Electric Shovel Excavator
xmutil.clone("mining-drill", "electric-mining-drill",
	{
		{
			"__base__/graphics/entity/electric-mining-drill/(h?r?-?)electric-mining-drill-(.)%.png",
			"__xander-mod__/graphics/entity/production/mining-drill-3/%1%2.png",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/(h?r?-?)electric-mining-drill-(.)-patch%.png",
			"__xander-mod__/graphics/entity/production/mining-drill-3/%1%2-patch.png",
		},
	},
	{
		name = "mining-drill-3",
		icon = "__xander-mod__/graphics/item/production/miner/mining-drill-3.png",
		minable = {mining_time = 1, result = "mining-drill-3"},
		max_health = 400,
		resource_categories = {"basic-solid", "hard-solid", "tough-solid"},
		mining_speed = 4,
		energy_source = { emissions = 0.02 },
		energy_usage = "400kW",
		mining_power = 4.5,
	}
),
--Bucket Wheel Excavator
xmutil.clone("mining-drill", "electric-mining-drill",
	{
		{
			"__base__/graphics/entity/electric-mining-drill/(h?r?-?)electric-mining-drill-(.)%.png",
			"__xander-mod__/graphics/entity/production/mining-drill-4/%1%2.png",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/(h?r?-?)electric-mining-drill-(.)-patch%.png",
			"__xander-mod__/graphics/entity/production/mining-drill-4/%1%2-patch.png",
		},
	},
	{
		name = "mining-drill-4",
		icon = "__xander-mod__/graphics/item/production/miner/mining-drill-4.png",
		minable = {mining_time = 1, result = "mining-drill-4"},
		max_health = 1000,
		resource_categories = {"basic-solid", "hard-solid", "tough-solid"},
		mining_speed = 20,
		energy_source = { emissions = 0.02 },
		energy_usage = "1MW",
		mining_power = 6.5,
	}
),

--Base "pumpjack" placeholder
--High-Pressure Pumpjack
xmutil.clone("mining-drill", "pumpjack",
	{
		{
			"__base__/graphics/icon/pumpjack.png",
			"__xander-mod__/graphics/item/production/miner/pumpjack-2.png",
		},
		{
			"__base__/graphics/entity/pumpjack/pumpjack-base.png",
			"__xander-mod__/graphics/entity/production/pumpjack-2/base.png",
		},
		{
			"__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-",
			"__xander-mod__/graphics/entity/production/mining-drill-4/hr-",
		},
	},
	{
		name = "pumpjack-2",
		minable = {mining_time = 1, result = "pumpjack-2"},
		max_health = 400,
		resource_categories = {"basic-fluid", "advanced-fluid"},
		mining_speed = 4,
		energy_source = { emissions = 0.02 },
		energy_usage = "200kW",
		mining_power = 2,
		module_specification = { module_slots = 4 },
		base_picture = {
			sheets = {
				{
					filename = "__xander-mod__/graphics/entity/production/pumpjack-2/base.png",
					hr_version = xmutil.NIL,
				},
			},
		},
		animations = {
			north = {
				layers = {
					{
						priority = "extra-high",
						width = 116,
						height = 110,
						line_length = 10,
						shift = util.by_pixel(4, -23),
						filename = "__xander-mod__/graphics/entity/production/pumpjack-2/animation.png",
						frame_count = 40,
						animation_speed = 1,
						hr_version = xmutil.NIL,
					},
				},
			},
		},
	}
),
--Crude Burner Ore Sluice
xmutil.clone("assembling-machine", "chemical-plant",
	{
		{
			"__base__/graphics/entity/chemical-plant/chemical-plant.png",
			"__xander-mod__/graphics/entity/production/ore-processor-0/0.png",
		},
		{
			"__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
			"__xander-mod__/graphics/entity/production/ore-processor-0/hr-0.png",
		},
	},
	{
		name = "ore-processor-0",
		icon = "__xander-mod__/graphics/item/production/miner/ore-processor-0.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "ore-processor-0"},
		max_health = 100,
		module_specification = xmutil.NIL,
		crafting_speed = 0.5,
		energy_source = {
			type = "burner",
			fuel_categories = {"crude", "chemical"},
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions = 0.01,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 5,
					position = {0.0, -0.8},
					starting_vertical_speed = 0.08,
					starting_frame_deviation = 60
				}
			}
		},
		energy_usage = "200kW",
		ingredient_count = 2,
		crafting_categories = {"basic-sluice"},
	}
),
--Electric Ore Sluice
xmutil.clone("assembling-machine", "chemical-plant",
	{
		{
			"__base__/graphics/entity/chemical-plant/chemical-plant.png",
			"__xander-mod__/graphics/entity/production/ore-processor-1/1.png",
		},
		{
			"__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
			"__xander-mod__/graphics/entity/production/ore-processor-1/hr-1.png",
		},
	},
	{
		name = "ore-processor-1",
		icon = "__xander-mod__/graphics/item/production/miner/ore-processor-1.png",
		minable = {hardness = 0.2, mining_time = 0.5, result = "ore-processor-1"},
		max_health = 200,
		module_specification = { module_slots = 2 },
		crafting_speed = 1,
		energy_source = { emissions = 0.02 },
		energy_usage = "100kW",
		ingredient_count = 6,
		crafting_categories = {"basic-sluice", "sluice"},
	}
),
--Integrated Ore Plant
xmutil.clone("assembling-machine", "oil-refinery",
	{
		{
			"__base__/graphics/entity/oil-refinery/oil-refinery.png",
			"__xander-mod__/graphics/entity/production/ore-processor-2/2.png",
		},
		{
			"__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
			"__xander-mod__/graphics/entity/production/ore-processor-2/hr-2.png",
		},
		{
			"__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
			"__xander-mod__/graphics/entity/production/ore-processor-2/dust.png",
		},
		{
			"__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
			"__xander-mod__/graphics/entity/production/ore-processor-2/hr-dust.png",
		},
	},
	{
		name = "ore-processor-2",
		icon = "__xander-mod__/graphics/item/production/miner/ore-processor-2.png",
		minable = {mining_time = 1, result = "ore-processor-2"},
		max_health = 400,
		crafting_categories = {"sluice", "ore-plant"},
		crafting_speed = 2,
		energy_source = { emissions = 0.01 },
		energy_usage = "400kW",
		ingredient_count = 6,
		fluid_boxes = {
			[1] = { pipe_connections = { { position = {-2, 3} } } },
			[2] = { pipe_connections = { { position = { 2, 3} } } },
			[6] = {
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, 3} }}
			},
		},
	}
),

}
)