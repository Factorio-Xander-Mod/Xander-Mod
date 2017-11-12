
data:extend(
{

--
--APATITE
--Fluorite Flotation
{
	type = "recipe",
    name = "fluorite",
	icon = "__xander-mod__/graphics/recipe/raw/fluorite-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"apatite", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"fluorite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Phosphate Rock
{
	type = "recipe",
    name = "phosphate-rock",
	icon = "__xander-mod__/graphics/recipe/raw/phosphate-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"apatite", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"phosphate-rock", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--
--BAUXITE
--Crude Clay Finding (sorting through dirt by hand)
{
	type = "recipe",
    name = "hand-clay",
	category = "basic-sluice",
	energy_required = 1,
	ingredients = {{"bauxite", 2}},
	result = "clay"
},
--Bauxite Clay
{
	type = "recipe",
    name = "bauxite-clay",
	icon = "__xander-mod__/graphics/recipe/raw/bauxite-clay.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"bauxite", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"clay", 10}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Hand Sand Sorting
{
	type = "recipe",
    name = "hand-sand",
	category = "basic-sluice",
	energy_required = 1,
	enabled = false,
	ingredients = {{"bauxite", 2}},
	result = "sand"
},
--Bauxite Sand
{
	type = "recipe",
    name = "bauxite-sand",
	icon = "__xander-mod__/graphics/recipe/raw/bauxite-sand.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"bauxite", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"sand", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Hand Garnierite Sorting
{
	type = "recipe",
    name = "hand-garnierite",
	category = "basic-sluice",
	enabled = false,
	energy_required = 10,
	ingredients = {{"bauxite", 5}},
	result = "garnierite"
},
--Bayer Process
{
	type = "recipe",
    name = "bayer-process",
	icon = "__xander-mod__/graphics/recipe/raw/bayer-process.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 60,
	enabled = false,
	ingredients = {{"bauxite", 10}, {type = "fluid", name = "water", amount = 50}, {"sodium-hydroxide", 20}},
	results = {{"aluminum-hydroxide", 20}, {"sludge", 3}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--
--COPPER ORE
--Chalcocite Washing
{
	type = "recipe",
    name = "chalcocite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/chalcocite-washing.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"copper-ore", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"chalcocite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Cobalt Oxide
{
	type = "recipe",
    name = "cobalt-oxide",
	icon = "__xander-mod__/graphics/recipe/raw/cobalt-oxide.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 60,
	enabled = false,
	ingredients = {{"copper-ore", 10}, {type = "fluid", name = "ammonia", amount = 20}, {"calcium-oxide", 2}},
	results = {{"cobalt-oxide", 2}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--
--GARNIERITE
--Nickel Oxide
{
	type = "recipe",
    name = "nickel-oxide",
	icon = "__xander-mod__/graphics/recipe/raw/nickel-oxide.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"garnierite", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"nickel-oxide", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Platinum Sponge
{
	type = "recipe",
    name = "platinum-sponge",
	icon = "__xander-mod__/graphics/recipe/raw/platinum-sponge.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"garnierite", 20}, {type = "fluid", name = "water", amount = 40}, {"surfactant", 2}},
	results = {{"platinum-sponge", 1}, {"gravel", 4}, {type = "fluid", name = "waste-water", amount = 40}},
	subgroup = "raw-resource"
},
--
--GRANITIC ORE
--Cassiterite Washing
{
	type = "recipe",
    name = "cassiterite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/cassiterite-washing.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"granitic-ore", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"cassiterite", 10}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Scheelite Flotation
{
	type = "recipe",
    name = "scheelite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/scheelite-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"granitic-ore", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"scheelite", 2}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Gold Sponge
{
	type = "recipe",
    name = "gold-sponge",
	icon = "__xander-mod__/graphics/recipe/raw/gold-sponge.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"granitic-ore", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"gold-sponge", 1}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Cassiterite-Scheelite Co-Flotation
{
	type = "recipe",
    name = "cassiterite-scheelite",
	icon = "__xander-mod__/graphics/recipe/raw/cassiterite-scheelite.png",
	category = "ore-plant",
	energy_required = 60,
	enabled = false,
	ingredients = {{"granitic-ore", 10}, {type = "fluid", name = "water", amount = 40}, {"surfactant", 2}},
	results = {{"cassiterite", 10}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 20}, {"scheelite", 2}},
	subgroup = "raw-resource"
},
--
--HEAVY SAND
--Chromite Flotation
{
	type = "recipe",
    name = "chromite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/chromite-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"heavy-sand", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"chromite", 10}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Rutile Flotation
{
	type = "recipe",
    name = "rutile-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/rutile-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"heavy-sand", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"rutile", 10}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Zirconia Flotation
{
	type = "recipe",
    name = "zirconia-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/zirconia-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"heavy-sand", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"zirconia", 2}, {"sand", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--
--IRON ORE
--Hematite Washing
{
	type = "recipe",
    name = "hematite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/hematite-washing.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"iron-ore", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"hematite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Vanadium Magnetite (Magnetic Separation)
{
	type = "recipe",
    name = "vanadium-magnetite",
	icon = "__xander-mod__/graphics/recipe/raw/vanadium-magnetite.png",
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
	results = {{"vanadium-magnetite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--
--LEAD ORE
--Galena Washing
{
	type = "recipe",
    name = "galena-washing",
	icon = "__xander-mod__/graphics/recipe/raw/galena-washing.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"lead-ore", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"galena", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Silver Sponge
{
	type = "recipe",
    name = "silver-sponge",
	icon = "__xander-mod__/graphics/recipe/raw/silver-sponge.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"lead-ore", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"silver-sponge", 1}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
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
--Improved Saltpeter
{
	type = "recipe",
    name = "water-saltpeter",
	icon = "__xander-mod__/graphics/recipe/salt/water-saltpeter.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "mineral-water", amount = 100}, {"soda", 1}},
	result = "saltpeter",
	result_count = 5
},
--Borax Evaporation
{
	type = "recipe",
    name = "borax-evaporation",
	category = "refining",
	energy_required = 40,
	enabled = false,
	ingredients = {{type = "fluid", name = "mineral-water", amount = 200}},
	result = "borax"
},
--Lithium Hydroxide Precipitation
{
	type = "recipe",
    name = "lithium-precipitation",
	icon = "__xander-mod__/graphics/recipe/raw/lithium-precipitation.png",
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
	results = {{"lithium-hydroxide", 2}, {"calcium-chloride", 1}},
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
--Limestone Washing
{
	type = "recipe",
    name = "limestone-washing",
	icon = "__xander-mod__/graphics/recipe/raw/limestone-washing.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"stone", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"limestone", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Magnesite Washing
{
	type = "recipe",
    name = "magnesite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/magnesite-washing.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"stone", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"magnesite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
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
--SULFIDIC ORE
--Chalcopyrite Washing
{
	type = "recipe",
    name = "chalcopyrite-washing",
	icon = "__xander-mod__/graphics/recipe/raw/chalcopyrite-washing.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"sulfidic-ore", 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"chalcopyrite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Sphalerite Flotation
{
	type = "recipe",
    name = "sphalerite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/sphalerite-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"sulfidic-ore", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"sphalerite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Chalcopyrite-Sphalerite Co-Flotation
{
	type = "recipe",
    name = "chalcopyrite-sphalerite",
	icon = "__xander-mod__/graphics/recipe/raw/chalcopyrite-sphalerite.png",
	category = "ore-plant",
	energy_required = 40,
	enabled = false,
	ingredients = {{"sulfidic-ore", 10}, {type = "fluid", name = "water", amount = 40}, {"surfactant", 2}},
	results = {{"chalcopyrite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}, {"sphalerite", 5}},
	subgroup = "raw-resource"
},
--
--URANIUM ORE (PITCHBLENDE)
--Monazite Flotation
{
	type = "recipe",
    name = "monazite-flotation",
	icon = "__xander-mod__/graphics/recipe/raw/monazite-flotation.png",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"uranium-ore", 10}, {type = "fluid", name = "water", amount = 20}, {"surfactant", 1}},
	results = {{"monazite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "raw-resource"
},
--Uranyl Nitrate
{
	type = "recipe",
    name = "uranyl-nitrate",
	icon = "__xander-mod__/graphics/recipe/raw/uranyl-nitrate.png",
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
	results = {{"uranyl-nitrate", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 20}},
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
	result = "salt"
},
--Improved Salt Evaporation
{
	type = "recipe",
    name = "salt-evaporation",
	category = "refining",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 50}},
	result = "salt"
},
--Magnesia Precipitation
{
	type = "recipe",
    name = "magnesia-precipitation",
	icon = "__xander-mod__/graphics/recipe/raw/magnesia-precipitation.png",
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
	results = {{"magnesium-oxide", 1}, {"salt", 2}},
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