
--Base Overrides

--Base "coal"
data.raw.resource["coal"].category = "basic-solid"
data.raw.resource["coal"].order = "02"
data.raw.resource["coal"].minable.hardness = 0.5
data.raw.resource["coal"].autoplace.richness_multiplier = 3000
data.raw.resource["coal"].autoplace.richness_multiplier_distance_bonus = 60
data.raw.resource["coal"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}

--Base "copper-ore"
data.raw.resource["copper-ore"].icon = "__xander-mod__/graphics/item/material/resource/copper.png"
data.raw.resource["copper-ore"].order = "03"
data.raw.resource["copper-ore"].minable.hardness = 0.5
data.raw.resource["copper-ore"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}
data.raw.resource["copper-ore"].stages =
{
	sheet =
	{
		filename = "__xander-mod__/graphics/entity/resource/copper.png",
		priority = "extra-high",
		width = 64,
		height = 64,
		frame_count = 8,
		variation_count = 8,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/resource/copper-hr.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			frame_count = 8,
			variation_count = 8,
			scale = 0.5
		}
	}
}
data.raw.resource["copper-ore"].map_color = {r = 0.35, g = 0.48, b = 0.54}

--Base "crude-oil"
data.raw.resource["crude-oil"].order = "04"

--Base "iron-ore" placeholder
data.raw.resource["iron-ore"].icon = "__xander-mod__/graphics/item/material/resource/iron.png"
data.raw.resource["iron-ore"].category = "basic-solid"
data.raw.resource["iron-ore"].order = "08"
data.raw.resource["iron-ore"].minable.hardness = 0.5
data.raw.resource["iron-ore"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}
data.raw.resource["iron-ore"].stages =
{
	sheet =
	{
		filename = "__xander-mod__/graphics/entity/resource/iron.png",
		priority = "extra-high",
		width = 64,
		height = 64,
		frame_count = 8,
		variation_count = 8,
		hr_version =
		{
			filename = "__xander-mod__/graphics/entity/resource/iron-hr.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			frame_count = 8,
			variation_count = 8,
			scale = 0.5
		}
	}
}
data.raw.resource["iron-ore"].map_color = {r = 0.52, g = 0.24, b = 0.2}

--Base "uranium-ore"
data.raw.resource["uranium-ore"].category = "tough-solid"
data.raw.resource["uranium-ore"].order = "12"
data.raw.resource["uranium-ore"].minable.hardness = 2.5
data.raw.resource["uranium-ore"].minable.fluid_amount = 20
--data.raw.resource["uranium-ore"].minable.required_fluid = "blasting-fluid"
data.raw.resource["uranium-ore"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}

--Base "stone"
data.raw.resource["stone"].order = "13"
data.raw.resource["stone"].minable.hardness = 0.5
data.raw.resource["stone"].autoplace.coverage = 0.02
data.raw.resource["stone"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}


data:extend(
{

--Apatite
{
	type = "resource",
	name = "apatite",
	icon = "__xander-mod__/graphics/item/material/resource/apatite.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
    category = "hard-solid",
	order = "00",
	minable =
	{
		hardness = 1.5,
		mining_time = 2,
		result = "apatite"--,
		--fluid_amount = 10,
		--required_fluid = "blasting-fluid"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "apatite",
		sharpness = 1,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 30,
		richness_base = 500,
		coverage = 0.02,
		peaks =
		{
			{
				noise_layer = "apatite",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
			}
		}
	},
	stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/apatite.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/apatite-hr.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		}
	},
	map_color = {r = 0.08, g = 0.36, b = 0.27}
},
--Bauxite
{
	type = "resource",
	name = "bauxite",
	icon = "__xander-mod__/graphics/item/material/resource/bauxite.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
    category = "basic-solid",
	order = "01",
	minable =
	{
		hardness = 0.5,
		mining_particle = "bauxite-particle",
		mining_time = 2,
		result = "bauxite"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "bauxite",
		sharpness = 1,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 30,
		richness_base = 500,
		coverage = 0.02,
		starting_area_size = 600 * 0.02,
		starting_area_amount = 1500,
		peaks =
		{
			{
				noise_layer = "bauxite",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
			}
		}
	},
	stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/bauxite.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/bauxite-hr.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		}
	},
	map_color = {r = 0.8, g = 0.45, b = 0.1}
},
--Base "coal" placeholder
	--order = "02"
--Base "copper-ore" placeholder
	--order = "03"
--Base "crude-oil" placeholder
	--order = "04"
--Garnierite
{
	type = "resource",
	name = "garnierite",
	icon = "__xander-mod__/graphics/item/material/resource/garnierite.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
    category = "hard-solid",
	order = "05",
	minable =
	{
		hardness = 1.5,
		mining_time = 2,
		result = "garnierite"--,
		--fluid_amount = 10,
		--required_fluid = "blasting-fluid"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "garnierite",
		sharpness = 1,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 30,
		richness_base = 500,
		coverage = 0.02,
		peaks =
		{
			{
				noise_layer = "garnierite",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
			}
		}
	},
	stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/garnierite.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/garnierite-hr.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		}
	},
	map_color = {r = 0.28, g = 0.7, b = 0.37}
},
--Granitic Ore
{
	type = "resource",
	name = "granitic",
	icon = "__xander-mod__/graphics/item/material/resource/granitic.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
    category = "basic-solid",
	order = "06",
	minable =
	{
		hardness = 0.5,
		mining_particle = "granitic-particle",
		mining_time = 2,
		result = "granitic-ore"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "granitic-ore",
		sharpness = 1,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 30,
		richness_base = 500,
		coverage = 0.02,
		starting_area_size = 12,
		starting_area_amount = 1500,
		peaks =
		{
			{
				noise_layer = "granitic-ore",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
			}
		}
	},
	stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/granitic.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/granitic-hr.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		}
	},
	map_color = {r = 0.9, g = 0.9, b = 0.5}
},
--Heavy Mineral Sand
{
	type = "resource",
	name = "heavy-sand",
	icon = "__xander-mod__/graphics/item/material/resource/heavy.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
    category = "tough-solid",
	order = "07",
	minable =
	{
		hardness = 2.5,
		mining_time = 2,
		result = "heavy-sand",
		fluid_amount = 1,
		required_fluid = "water"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "heavy-sand",
		sharpness = 1,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 30,
		richness_base = 500,
		coverage = 0.02,
		peaks =
		{
			{
				noise_layer = "heavy-sand",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
			}
		}
	},
	stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/heavy.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/heavy-hr.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		}
	},
	map_color = {r = 0.27, g = 0.21, b = 0.35}
},
--Base "iron-ore" placeholder
	--order = "08"
--Lead Ore
{
	type = "resource",
	name = "lead-ore",
	icon = "__xander-mod__/graphics/item/material/resource/lead.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
    category = "basic-solid",
	order = "09",
	minable =
	{
		hardness = 0.5,
		mining_particle = "lead-particle",
		mining_time = 2,
		result = "lead-ore"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "lead-ore",
		sharpness = 1,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 30,
		richness_base = 500,
		coverage = 0.02,
		starting_area_size = 12,
		starting_area_amount = 1500,
		peaks =
		{
			{
				noise_layer = "lead-ore",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
			}
		}
	},
	stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/lead.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/lead-hr.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		}
	},
	map_color = {r = 0.25, g = 0.25, b = 0.25}
},
--Mineral Water
{
	type = "resource",
	name = "mineral-water",
	icon = "__xander-mod__/graphics/fluid/aqueous/mineral-water.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
	category = "basic-fluid",
	order = "10",
	infinite = true,
	highlight = true,
	minimum = 60000,
	normal = 300000,
	infinite_depletion_amount = 10,
	resource_patch_search_radius = 12,
	minable =
	{
		hardness = 1,
		mining_time = 1,
		results =
		{
			{
				type = "fluid",
				name = "mineral-water",
				amount_min = 10,
				amount_max = 10,
				probability = 1
			}
		}
	},
	collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "mineral-water",
		sharpness = 0.99,
		max_probability = 0.02,
		richness_base = 240000,
		richness_multiplier = 300000,
		richness_multiplier_distance_bonus = 3000,
		coverage = 0.02,
		starting_area_size = 12,
		starting_area_amount = 150000,
		peaks =
		{
			{
				noise_layer = "mineral-water",
				noise_octaves_difference = -1,
				noise_persistence = 0.4,
			}
		}
	},
	stage_counts = {0},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/mineral-water.png",
			priority = "extra-high",
			width = 75,
			height = 61,
			frame_count = 4,
			variation_count = 1
		}
	},
	map_color = {r = 0, g = 0.75, b = 0.55},
	map_grid = false
},
--Natural Gas
{
	type = "resource",
	name = "natural-gas",
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/natural-gas.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
	category = "basic-fluid",
	order = "11",
	infinite = true,
	highlight = true,
	minimum = 60000,
	normal = 300000,
	infinite_depletion_amount = 10,
	resource_patch_search_radius = 12,
	minable =
	{
		hardness = 1,
		mining_time = 2,
		results =
		{
			{
				type = "fluid",
				name = "natural-gas",
				amount_min = 10,
				amount_max = 10,
				probability = 1
			}
		}
	},
	collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "natural-gas",
		sharpness = 0.99,
		max_probability = 0.02,
		richness_base = 240000,
		richness_multiplier = 300000,
		richness_multiplier_distance_bonus = 3000,
		coverage = 0.02,
		peaks =
		{
			{
				noise_layer = "natural-gas",
				noise_octaves_difference = -1,
				noise_persistence = 0.4,
			}
		}
	},
	stage_counts = {0},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/natural-gas.png",
			priority = "extra-high",
			width = 75,
			height = 61,
			frame_count = 4,
			variation_count = 1
		}
	},
	map_color = {r = 1, g = 1, b = 0},
	map_grid = false
},
--Base "uranium-ore" placeholder
	--order = "12"
--Base "stone" placeholder
	--order = "13"
--Sulfidic Ore
{
	type = "resource",
	name = "sulfidic-ore",
	icon = "__xander-mod__/graphics/item/material/resource/sulfidic.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
    category = "hard-solid",
	order = "14",
	minable =
	{
		hardness = 1.5,
		mining_time = 2,
		result = "sulfidic-ore"--,
		--fluid_amount = 20,
		--required_fluid = "blasting-fluid"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "sulfidic-ore",
		sharpness = 1,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 30,
		richness_base = 500,
		coverage = 0.02,
		peaks =
		{
			{
				noise_layer = "sulfidic-ore",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
			}
		}
	},
	stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10},
	stages =
	{
		sheet =
		{
			filename = "__xander-mod__/graphics/entity/resource/sulfidic.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/sulfidic-hr.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		}
	},
	map_color = {r = 0, g = 0.2, b = 0.6}
}

}
)