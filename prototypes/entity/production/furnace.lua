local xmutil = require("xmutil")

--Base Overrides

--[[Base "stone-furnace"
data.raw.furnace["stone-furnace"].crafting_categories = {"empty"}

--Base "steel-furnace"
data.raw.furnace["steel-furnace"].crafting_categories = {"empty"}

--Base "electric-furnace"
data.raw.furnace["electric-furnace"].crafting_categories = {"empty"}
]]--

local function furnace_fluid_boxes(graphics_source)
	return {
		{
			production_type = "input",
			pipe_picture =
			{
				north =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type="input", position = {0, -2}}},
			secondary_draw_orders = {north = -1}
		},
		{
			production_type = "output",
			pipe_picture =
			{
				north =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-N.png",
					priority = "extra-high",
					width = 35,
					height = 18,
					shift = util.by_pixel(2.5, 14),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-N.png",
						priority = "extra-high",
						width = 71,
						height = 38,
						shift = util.by_pixel(2.25, 13.5),
						scale = 0.5,
					}
				},
				east =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-E.png",
					priority = "extra-high",
					width = 20,
					height = 38,
					shift = util.by_pixel(-25, 1),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-E.png",
						priority = "extra-high",
						width = 42,
						height = 76,
						shift = util.by_pixel(-24.5, 1),
						scale = 0.5,
					}
				},
				south =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-S.png",
					priority = "extra-high",
					width = 44,
					height = 31,
					shift = util.by_pixel(0, -31.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-S.png",
						priority = "extra-high",
						width = 88,
						height = 61,
						shift = util.by_pixel(0, -31.25),
						scale = 0.5,
					}
				},
				west =
				{
					filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-W.png",
					priority = "extra-high",
					width = 19,
					height = 37,
					shift = util.by_pixel(25.5, 1.5),
					hr_version =
					{
						filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-W.png",
						priority = "extra-high",
						width = 39,
						height = 73,
						shift = util.by_pixel(25.75, 1.25),
						scale = 0.5,
					}
				}
			},
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{type = "output", position = {0, 2}}},
			secondary_draw_orders = { north = -1 }
		},
		off_when_no_fluid_recipe = true
	}
end

data:extend(
{

--Base "stone-furnace" placeholder
--Assembler-Type Stone Furnace (replaces base "stone-furnace")
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
		minable = {mining_time = 1, result = "furnace-1"},
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
--Base "steel-furnace" placeholder
--Assembler-Type Blast Furnace
xmutil.clone("furnace", "steel-furnace",
	{
		{
			"__base__/graphics/entity/steel-furnace/steel-furnace.png",
			"__xander-mod__/graphics/entity/production/furnace-3/3.png",
		},
		{
			"__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
			"__xander-mod__/graphics/entity/production/furnace-3/hr-3.png",
		},
	},
	{
		type = "assembling-machine",
		name = "furnace-3",
		icon = "__base__/graphics/icons/steel-furnace.png",
		minable = {mining_time = 1, result = "furnace-3"},
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
		fluid_boxes = furnace_fluid_boxes("assembling-machine-3"),
		crafting_categories = {"refining"},
		crafting_speed = 2,
		energy_source = { emissions = 0.002 },
		energy_usage = "1MW",
		ingredient_count = 6,
	}
),
--Base "electric-furnace" (DISABLED via NO RECIPE FOR THE ITEM TO PLACE IT) placeholder
--Electric Foundry-Forge - more capable entity taking the place of the base "electric-furnace"
xmutil.clone("furnace", "electric-furnace",
	{
	},
	{
		type = "assembling-machine",
		name = "furnace-5",
		icon = "__base__/graphics/icons/electric-furnace.png",
		minable = {mining_time = 1, result = "furnace-5"},
		max_health = 500,
		fluid_boxes = furnace_fluid_boxes("assembling-machine-4"),
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
			fluid_boxes = furnace_fluid_boxes("assembling-machine-4"),
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
