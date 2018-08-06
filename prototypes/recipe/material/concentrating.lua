data:extend(
{

--
--PHOSPHORITE
--Transferred
--Fluorite Flotation
{
	type = "recipe",
    name = "fluorite",
	icon = "__xander-mod__/graphics/recipe/raw/fluorite-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"phosphorite", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"fluorite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--Transferred
--Phosphate Rock
{
	type = "recipe",
    name = "phosphate-rock",
	icon = "__xander-mod__/graphics/recipe/raw/phosphate-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"phosphorite", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"hydroxylapatite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--
--LATERITE
--Transferred
--[[
--Crude Clay Finding (sorting through dirt by hand)
{
	type = "recipe",
    name = "hand-clay",
	category = "basic-sluice",
	energy_required = 1,
	ingredients = {{"laterite", 2}},
	result = "clay"
},
]]--
--Transferred
--Bauxite Clay
{
	type = "recipe",
    name = "bauxite-clay",
	icon = "__xander-mod__/graphics/recipe/raw/bauxite-clay.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"laterite", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"clay", 10}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--To be removed
--Hand Sand Sorting
{
	type = "recipe",
    name = "hand-sand",
	category = "basic-sluice",
	energy_required = 1,
	enabled = false,
	ingredients = {{"laterite", 2}},
	result = "sand"
},
--Transferred (to quartz-sand, in milled-resources)
--Bauxite Sand
{
	type = "recipe",
    name = "bauxite-sand",
	icon = "__xander-mod__/graphics/recipe/raw/bauxite-sand.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"laterite", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"sand", 10}, {"gravel", 1}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Hand Garnierite Sorting
{
	type = "recipe",
    name = "hand-garnierite",
	category = "basic-sluice",
	enabled = false,
	energy_required = 10,
	ingredients = {{"laterite", 5}},
	result = "magnetic"
},
--Bayer Process
{
	type = "recipe",
    name = "bayer-process",
	icon = "__xander-mod__/graphics/recipe/raw/bayer-process.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 60,
	enabled = false,
	ingredients = {{"laterite", 10}, {type = "fluid", name = "water", amount = 80}, {"sodium-hydroxide", 10}},
	results = {{"aluminum-hydroxide", 20}, {type = "fluid", name = "waste-slurry", amount = 80}},
	subgroup = "raw-resource"
},
--
--COPPER ORE
--Transferred
--Chalcocite Washing
{
	type = "recipe",
    name = "chalcocite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/chalcocite-washing.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"copper-ore", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"chalcocite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Cobalt Oxide
{
	type = "recipe",
    name = "cobalt-oxide",
	icon = "__xander-mod__/graphics/recipe/raw/cobalt-oxide.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 60,
	enabled = false,
	ingredients = {{"copper-ore", 10}, {"calcium-oxide", 2}, {type = "fluid", name = "ammonia", amount = 20}, {type = "fluid", name = "water", amount = 50}},
	results = {{"cobalt-oxide", 2}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--
--MAGNETIC
--Transferred
--Nickel Oxide
{
	type = "recipe",
    name = "nickel-oxide",
	icon = "__xander-mod__/graphics/recipe/raw/nickel-oxide.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"magnetic", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"nickel-oxide", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Platinum Sponge
{
	type = "recipe",
    name = "platinum-sponge",
	icon = "__xander-mod__/graphics/recipe/raw/platinum-sponge.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"magnetic", 20}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"platinum-sponge", 1}, {"gravel", 4}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--
--SKARN
--Transferred
--Cassiterite Washing
{
	type = "recipe",
    name = "cassiterite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/cassiterite-washing.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"skarn", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"cassiterite", 10}, {"sand", 2}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Transferred
--Scheelite Flotation
{
	type = "recipe",
    name = "scheelite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/scheelite-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"skarn", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"scheelite", 2}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--Gold Sponge
{
	type = "recipe",
    name = "gold-sponge",
	icon = "__xander-mod__/graphics/recipe/raw/gold-sponge.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"skarn", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"gold-sponge", 1}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--Cassiterite-Scheelite Co-Flotation
{
	type = "recipe",
    name = "cassiterite-scheelite",
	icon = "__xander-mod__/graphics/recipe/raw/cassiterite-scheelite.png",
	icon_size = 32,
	category = "ore-plant",
	energy_required = 60,
	enabled = false,
	ingredients = {{"skarn", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 2}},
	results = {{"cassiterite", 10}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 50}, {"scheelite", 2}},
	subgroup = "raw-resource"
},
--
--SAND
--Transferred
--Chromite Flotation
{
	type = "recipe",
    name = "chromite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/chromite-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"chromite", 10}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--Transferred
--Rutile Flotation
{
	type = "recipe",
    name = "rutile-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/rutile-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"ilmenite", 10}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--Transferred
--Zirconia Flotation
{
	type = "recipe",
    name = "zirconia-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/zirconia-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"zircon", 2}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--
--IRON ORE
--Transferred
--Hematite Washing
{
	type = "recipe",
    name = "hematite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/hematite-washing.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"iron-ore", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"hematite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 5}},
	subgroup = "raw-resource"
},
--Transferred
--Vanadium Magnetite (Magnetic Separation)
{
	type = "recipe",
    name = "vanadium-magnetite",
	icon = "__xander-mod__/graphics/recipe/raw/vanadium-magnetite.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"iron-ore", 10}},
	results = {{"magnetite", 10}, {"gravel", 2}},
	subgroup = "raw-resource"
},
--
--MASSIVE SULFIDE
--Galena Washing
{
	type = "recipe",
    name = "galena-washing",
	icon = "__xander-mod__/graphics/recipe/raw/galena-washing.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"massive-sulfide", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"galena", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Silver Sponge
{
	type = "recipe",
    name = "silver-sponge",
	icon = "__xander-mod__/graphics/recipe/raw/silver-sponge.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"massive-sulfide", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"silver-sponge", 1}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--
--MINERAL WATER
--Crude Saltpeter
{
	type = "recipe",
    name = "hand-saltpeter",
	category = "basic-sluice",
	energy_required = 2,
	enabled = false,
	ingredients = {{"stone", 2}, {"coal", 2}},
	result = "saltpeter"
},
--Transferred
--Improved Saltpeter
{
	type = "recipe",
    name = "water-saltpeter",
	icon = "__xander-mod__/graphics/recipe/salt/water-saltpeter.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 4,
	enabled = false,
	ingredients = {{"evaporites", 10}, {"sodium-carbonate", 1}},
	results = {{"saltpeter", 5}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Transferred
--Borax Evaporation
{
	type = "recipe",
    name = "borax-evaporation",
	icon = "__xander-mod__/graphics/recipe/raw/borax-evaporation.png",
	icon_size = 32,
	category = "refining",
	energy_required = 40,
	enabled = false,
	ingredients = {{"evaporites", 20}},
	results = {{"borax", 1}, {type = "fluid", name = "distilled-water", amount = 200}},
	subgroup = "raw-resource"
},
--Transferred
--Lithium Hydroxide Precipitation
{
	type = "recipe",
    name = "lithium-precipitation",
	icon = "__xander-mod__/graphics/recipe/raw/lithium-precipitation.png",
	icon_size = 32,
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 100}, {"calcium-oxide", 1}},
	results = {{"lithium-hydroxide", 2}, {"calcium-chloride", 1}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--
--STONE
--Hand Limestone Sorting
{
	type = "recipe",
    name = "hand-limestone",
	category = "basic-sluice",
	energy_required = 2,
	enabled = false,
	ingredients = {{"stone", 1}},
	results = {{"limestone", 1}},
	subgroup = "raw-resource"
},
--Transferred
--Limestone Washing
{
	type = "recipe",
    name = "limestone-washing",
	icon = "__xander-mod__/graphics/recipe/raw/limestone-washing.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"stone", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"limestone", 20}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Gravel Crushing
{
	type = "recipe",
    name = "gravel-crushing",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"stone", 1}},
	result = "gravel"
},
--
--IGNEOUS SULFIDE
--Transferred
--Chalcopyrite Washing
{
	type = "recipe",
    name = "chalcopyrite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/chalcopyrite-washing.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"igneous-sulfide", 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"chalcopyrite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-resource"
},
--Transferred
--Sphalerite Flotation
{
	type = "recipe",
    name = "sphalerite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/sphalerite-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"igneous-sulfide", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"sphalerite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--Chalcopyrite-Sphalerite Co-Flotation
{
	type = "recipe",
    name = "chalcopyrite-sphalerite",
	icon = "__xander-mod__/graphics/recipe/raw/chalcopyrite-sphalerite.png",
	icon_size = 32,
	category = "ore-plant",
	energy_required = 40,
	enabled = false,
	ingredients = {{"igneous-sulfide", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 2}},
	results = {{"chalcopyrite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}, {"sphalerite", 5}},
	subgroup = "raw-resource"
},
--
--URANIUM ORE (PITCHBLENDE)
--Transferred
--Monazite Flotation
{
	type = "recipe",
    name = "monazite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/monazite-flotation.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"uranium-ore", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}},
	results = {{"monazite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-resource"
},
--Uranyl Nitrate
{
	type = "recipe",
    name = "uranyl-nitrate",
	icon = "__xander-mod__/graphics/recipe/raw/uranyl-nitrate.png",
	icon_size = 32,
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 60,
	enabled = false,
	ingredients = {{"uranium-ore", 10}, {type = "fluid", name = "water", amount = 20}, {type = "fluid", name = "nitric-acid", amount = 20}},
	results = {{"uranyl-nitrate", 5}, {"gravel", 2}, {type = "fluid", name = "waste-slurry", amount = 20}},
	subgroup = "raw-resource"
},
--
--WATER
--Crude Salt Evaporation
{
	type = "recipe",
    name = "crude-salt",
	category = "basic-chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 50}},
	result = "sodium-chloride"
},
--Improved Salt Evaporation
{
	type = "recipe",
    name = "salt-evaporation",
	icon = "__xander-mod__/graphics/recipe/raw/salt-evaporation.png",
	icon_size = 32,
	category = "refining",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 50}},
	results = {{"sodium-chloride", 1}, {type = "fluid", name = "distilled-water", amount = 50}},
	subgroup = "raw-resource"
},
--Magnesia Precipitation
{
	type = "recipe",
    name = "magnesia-precipitation",
	icon = "__xander-mod__/graphics/recipe/raw/magnesia-precipitation.png",
	icon_size = 32,
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 100}, {"sodium-hydroxide", 2}},
	results = {{"magnesium-oxide", 1}, {"sodium-chloride", 2}, {type = "fluid", name = "gray-water", amount = 20}},
	subgroup = "raw-resource"
},
--
--AIR
--Air Compression
{
	type = "recipe",
    name = "air-compression",
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 2,
	enabled = false,
	ingredients = {},
	results = {{type = "fluid", name = "air", amount = 100}}
}

})