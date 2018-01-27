local xmutil = require("xmutil")

--Base Overrides

--Base "stone-furnace"
data.raw.furnace["stone-furnace"].flags = {"player-creation"}

--Base "steel-furnace"
data.raw.furnace["steel-furnace"].flags = {"player-creation"}

--Base "electric-furnace"
data.raw.furnace["electric-furnace"].flags = {"player-creation"}


data:extend(
{

--Base "stone-furnace" placeholder - disabled via no item to place it
--Assembler-Type Stone Furnace - replaces base "stone-furnace"
xmutil.clone("furnace", "stone-furnace",
	{
		{
			"__base__/graphics/entity/stone-furnace/stone-furnace.png",
			"__xander-mod__/graphics/entity/production/furnace-1/1.png",
		},
		{
			"__base__/graphics/entity/stone-furnace/hr-stone-furnace.png",
			"__xander-mod__/graphics/entity/production/furnace-1/hr-1.png",
		},
	},
	{
		type = "assembling-machine",
		name = "furnace-1",
		icon = "__xander-mod__/graphics/item/production/furnace/furnace-1.png",
		minable = {mining_time = 1, result = "stone-furnace"},
		max_health = 50,
		crafting_categories = {"kiln"},
		crafting_speed = 0.5,
		energy_source = { fuel_categories = {"crude", "chemical"} },
		energy_usage = "500kW",
		ingredient_count = 4
	}
),
--Clay Brick Furnace (Assembler-Type)
xmutil.clone("furnace", "stone-furnace",
	{
		{
			"__base__/graphics/entity/stone-furnace/stone-furnace.png",
			"__xander-mod__/graphics/entity/production/furnace-2/2.png",
		},
		{
			"__base__/graphics/entity/stone-furnace/hr-stone-furnace.png",
			"__xander-mod__/graphics/entity/production/furnace-2/hr-2.png",
		},
	},
	{
		type = "assembling-machine",
		name = "furnace-2",
		icon = "__xander-mod__/graphics/item/production/furnace/furnace-2.png",
		minable = {mining_time = 1, result = "furnace-2"},
		max_health = 100,
		crafting_categories = {"kiln", "smelting"},
		crafting_speed = 1,
		energy_usage = "1MW",
		ingredient_count = 4
	}
),
--Base "steel-furnace" placeholder - disabled via no item to place it
--Assembler-Type Blast Furnace - replaces base "steel-furnace"
xmutil.clone("furnace", "steel-furnace",
	{},
	{
		type = "assembling-machine",
		name = "furnace-3",
		icon = "__base__/graphics/icons/steel-furnace.png",
		minable = {mining_time = 1, result = "steel-furnace"},
		max_health = 200,
		crafting_categories = {"kiln", "smelting", "basic-refining"},
		crafting_speed = 2,
		energy_source = { emissions = 0.004, },
		energy_usage = "2MW",
		ingredient_count = 4
	}
),
--Electric Refining Furnace
xmutil.clone("furnace", "electric-furnace",
	{
		{
			"__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
			"__xander-mod__/graphics/entity/production/furnace-4/4.png",
		},
		{
			"__base__/graphics/entity/electric-furnace/hr-electric-furnace-base.png",
			"__xander-mod__/graphics/entity/production/furnace-4/hr-4.png",
		},
	},
	{
		type = "assembling-machine",
		name = "furnace-4",
		icon = "__xander-mod__/graphics/item/production/furnace/furnace-4.png",
		minable = {mining_time = 1, result = "furnace-4"},
		max_health = 500,
		fluid_boxes = xmutil.assembler_fluid_boxes("assembling-machine-3"),
		crafting_categories = {"refining"},
		crafting_speed = 2,
		energy_source = { emissions = 0.002 },
		energy_usage = "1MW",
		ingredient_count = 6,
	}
),
--Base "electric-furnace" placeholder - disabled via no item to place it
--Electric Foundry-Forge - replaces base "electric-furnace"
xmutil.clone("furnace", "electric-furnace",
	{
	},
	{
		type = "assembling-machine",
		name = "furnace-5",
		icon = "__base__/graphics/icons/electric-furnace.png",
		minable = {mining_time = 1, result = "electric-furnace"},
		max_health = 500,
		fluid_boxes = xmutil.assembler_fluid_boxes("assembling-machine-4"),
		crafting_categories = {"forge"},
		crafting_speed = 2,
			energy_source = { emissions = 0.002 },
		energy_usage = "1MW",
		ingredient_count = 6,
	}
),
--Arc Furnace
xmutil.clone("furnace", "electric-furnace",
	{
		{
			"__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
			"__xander-mod__/graphics/entity/production/furnace-6/6.png",
		},
		{
			"__base__/graphics/entity/electric-furnace/hr-electric-furnace-base.png",
			"__xander-mod__/graphics/entity/production/furnace-6/hr-6.png",
		},
		{
			"__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
			"__xander-mod__/graphics/entity/production/furnace-6/heater.png",
		},
	},
	{
		type = "assembling-machine",
		name = "furnace-6",
		icon = "__xander-mod__/graphics/item/production/furnace/furnace-6.png",
		minable = {mining_time = 1, result = "furnace-6"},
		max_health = 1000,
		fluid_boxes = xmutil.assembler_fluid_boxes("assembling-machine-4"),
		crafting_categories = {"refining", "forge"},
		crafting_speed = 4,
		energy_source = { emissions = 0.0008 },
		energy_usage = "2MW",
		ingredient_count = 8,
		module_specification = { module_slots = 4 },
	}
),

}
)
