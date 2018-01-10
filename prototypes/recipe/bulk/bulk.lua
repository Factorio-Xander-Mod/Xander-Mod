
--Base Overrides

--ALLOY

--Base "steel-plate"
data.raw.recipe["steel-plate"].energy_required = 8
data.raw.recipe["steel-plate"].normal = 
{
	enabled = false,
	energy_required = 8,
	ingredients = {{"iron-plate", 4}},
	result = "steel-plate"
}
data.raw.recipe["steel-plate"].expensive = 
{
	enabled = false,
	energy_required = 16,
	ingredients = {{"iron-plate", 8}},
	result = "steel-plate"
}

--BUILD

--Base "landfill"
data.raw.recipe["landfill"].category = "sluice"
data.raw.recipe["landfill"].energy_required = 1
data.raw.recipe["landfill"].ingredients = {{"stone", 6}, {"modified", 20}, {"sand", 3}, {"clay", 2}}
data.raw.recipe["landfill"].crafting_machine_tint =
{
	primary = {r = 0.000, g = 0.110, b = 0.588},
	secondary = {r = 0.564, g = 0.795, b = 0.000},
	tertiary = {r = 0.678, g = 0.565, b = 0.478}
}

--Base "concrete"
data.raw.recipe["concrete"].category = "sluice"
data.raw.recipe["concrete"].energy_required = 10
data.raw.recipe["concrete"].ingredients = {{"modified", 6}, {"sand", 3}, {"cement-powder", 4}, {type = "fluid", name = "water", amount = 20}, {"rod-2", 1}}
data.raw.recipe["concrete"].crafting_machine_tint =
{
	primary = {r = 0.000, g = 0.110, b = 0.588},
	secondary = {r = 0.564, g = 0.795, b = 0.000},
	tertiary = {r = 0.678, g = 0.565, b = 0.478}
}

--Base "hazard-concrete"
data.raw.recipe["hazard-concrete"].energy_required = 0.2

--Base "stone-brick"
data.raw.recipe["stone-brick"].category = "basic-machine"
data.raw.recipe["stone-brick"].energy_required = 2

--ORGANIC

--Base "solid-fuel-from-heavy-oil"
data.raw.recipe["solid-fuel-from-heavy-oil"].energy_required = 2
data.raw.recipe["solid-fuel-from-heavy-oil"].ingredients = {{type = "fluid", name = "heavy-oil", amount = 10}}

--Base "solid-fuel-from-light-oil"
data.raw.recipe["solid-fuel-from-light-oil"].energy_required = 2
data.raw.recipe["solid-fuel-from-light-oil"].ingredients = {{type = "fluid", name = "light-oil", amount = 20}}

--Base "solid-fuel-from-petroleum-gas"
data.raw.recipe["solid-fuel-from-petroleum-gas"].energy_required = 2
data.raw.recipe["solid-fuel-from-petroleum-gas"].ingredients = {{type = "fluid", name = "petroleum-gas", amount = 60}}

--Base "explosives"
data.raw.recipe["explosives"].icon = "__xander-mod__/graphics/recipe/organic/explosives.png"
data.raw.recipe["explosives"].icon_size = 32
data.raw.recipe["explosives"].subgroup = "organic"
data.raw.recipe["explosives"].normal =
{
	energy_required = 10,
	enabled = false,
	ingredients = {{"unstable-explosives", 1}, {type = "fluid", name = "distilled-water", amount = 50}},
	results = {{"explosives", 1}, {type = "fluid", name = "waste-water", amount = 50}}
}
data.raw.recipe["explosives"].expensive =
{
	energy_required = 10,
	enabled = false,
	ingredients = {{"unstable-explosives", 1}, {type = "fluid", name = "water", amount = 80}},
	results = {{"explosives", 1}, {type = "fluid", name = "waste-slurry", amount = 40}}
}

--Base "plastic-bar"
data.raw.recipe["plastic-bar"].energy_required = 5
data.raw.recipe["plastic-bar"].ingredients = {{type = "fluid", name = "styrene", amount = 10}, {type = "fluid", name = "propylene", amount = 20}}
data.raw.recipe["plastic-bar"].results = {{"plastic-pellets", 1}}

--Base "lubricant"
data.raw.recipe["lubricant"].energy_required = 10
data.raw.recipe["lubricant"].ingredients = {{type = "fluid", name = "heavy-oil", amount = 90}, {type = "fluid", name = "light-oil", amount = 20}}
data.raw.recipe["lubricant"].results = {{type = "fluid", name = "lubricant", amount = 100}}

--Base "wood"
data.raw.recipe["wood"].energy_required = 1

--Base "heavy-oil-cracking"
data.raw.recipe["heavy-oil-cracking"].energy_required = 4
data.raw.recipe["heavy-oil-cracking"].ingredients = {{type = "fluid", name = "heavy-oil", amount = 10}, {type = "fluid", name = "steam", amount = 10}}
data.raw.recipe["heavy-oil-cracking"].results = {{type = "fluid", name = "light-oil", amount = 20}}

--Base "light-oil-cracking"
data.raw.recipe["light-oil-cracking"].energy_required = 6
data.raw.recipe["light-oil-cracking"].ingredients = {{type = "fluid", name = "light-oil", amount = 10}, {type = "fluid", name = "steam", amount = 20}}
data.raw.recipe["light-oil-cracking"].results = {{type = "fluid", name = "petroleum-gas", amount = 30}}

--Base "sulfur"
data.raw.recipe["sulfur"].energy_required = 6
data.raw.recipe["sulfur"].ingredients = {{type = "fluid", name = "hydrogen-sulfide", amount = 20}, {type = "fluid", name = "sulfur-dioxide", amount = 10}}
data.raw.recipe["sulfur"].results = {{"sulfur", 3}}

--Base "sulfuric-acid"
data.raw.recipe["sulfuric-acid"].icon = "__xander-mod__/graphics/recipe/compound/sulfuric-acid-a.png"
data.raw.recipe["sulfuric-acid"].icon_size = 32
data.raw.recipe["sulfuric-acid"].category = "basic-chemistry"
data.raw.recipe["sulfuric-acid"].energy_required = 20
data.raw.recipe["sulfuric-acid"].ingredients = {{"saltpeter", 20}, {"sulfur", 20}, {type = "fluid", name = "water", amount = 500}}
data.raw.recipe["sulfuric-acid"].results = {{type = "fluid", name = "sulfuric-acid", amount = 100}, {type = "fluid", name = "waste-water", amount = 10}}


data:extend(
{

--
--ALLOY PLATES
--Base "steel-plate" placeholder
--Bessemer Steel Smelting
{
	type = "recipe",
    name = "steel-plate-b",
	category = "basic-refining",
	energy_required = 32,
	enabled = false,
	ingredients = {{"iron-plate", 16}, {"clay", 1}},
	result = "steel-plate",
	result_count = 8
},
--XM Steel Plate from Forging
{
	type = "recipe",
    name = "steel-plate-c",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-steel", 1}},
	result = "steel-plate",
	result_count = 4
},
--Crude Sulfur Smelting
{
	type = "recipe",
    name = "smelting-sulfur",
	category = "smelting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"lead-ore", 2}, {"coal", 1}},
	result = "sulfur"
},
--Crude Bronze Plate
{
	type = "recipe",
    name = "bronze-plate-a",
	category = "kiln",
	energy_required = 10,
	ingredients = {{"copper-plate", 4}, {"tin-plate", 1}},
	result = "bronze-plate",
	result_count = 5
},
--Phosphor Bronze - Direct Alloy Recipe
{
	type = "recipe",
    name = "bronze-plate-b",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"copper-plate", 8}, {"tin-plate", 2}, {"phosphorus", 1}},
	result = "bronze-plate",
	result_count = 10
},
--Crude Solder Plate
{
	type = "recipe",
    name = "solder-1-plate-a",
	category = "smelting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"tin-plate", 3}, {"lead-plate", 2}},
	result = "solder-1-plate",
	result_count = 5
},
--Tin-Lead Solder Plate - Direct Alloy Recipe
{
	type = "recipe",
    name = "solder-1-plate-b",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"tin-plate", 3}, {"lead-plate", 2}},
	result = "solder-1-plate",
	result_count = 5
},
--Silver Solder Alloy Plate
{
	type = "recipe",
    name = "solder-2-plate",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"tin-plate", 7}, {"copper-plate", 2}, {"silver-plate", 1}},
	result = "solder-2-plate",
	result_count = 10
},
--Crude Monel Plate
{
	type = "recipe",
    name = "monel-plate-a",
	category = "smelting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"nickel-plate", 3}, {"copper-plate", 2}},
	result = "monel-plate",
	result_count = 5
},
--Proper Monel Metal Alloy
{
	type = "recipe",
    name = "monel-plate-b",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"nickel-plate", 3}, {"copper-plate", 2}},
	result = "monel-plate",
	result_count = 5
},
--Leaded Brass
{
	type = "recipe",
    name = "brass-plate",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"copper-plate", 6}, {"zinc-plate", 4}, {"lead-plate", 1}},
	result = "brass-plate",
	result_count = 10
},
--Silicon Boule A
	icon_size = 32,
{
	type = "recipe",
    name = "silicon-boule-a",
	icon_size = 32,
	category = "forge",
	energy_required = 100,
	enabled = false,
	ingredients = {{"metallurgical-plate", 16}, {"phosphorus", 1}},
	result = "silicon-boule",
	icon_size = 32,
	result_count = 2
},
--Silicon Boule B
	icon_size = 32,
{
	type = "recipe",
    name = "silicon-boule-b",
	icon_size = 32,
	category = "forge",
	energy_required = 20,
	enabled = false,
	ingredients = {{"ultrapure-powder", 8}, {"phosphorus", 2}, {type = "fluid", name = "nitrogen", amount = 20}},
	result = "silicon-boule",
	icon_size = 32,
	result_count = 2
},

--
--BUILDING MATERIALS
--Modified-Grade Gravel with Stone
{
	type = "recipe",
    name = "modified-a",
	category = "sluice",
	energy_required = 4,
	enabled = false,
	ingredients = {{"stone", 1}, {"gravel", 1}},
	result = "modified",
	result_count = 4,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Modified-Grade Gravel with Slag
{
	type = "recipe",
    name = "modified-b",
	category = "sluice",
	energy_required = 4,
	enabled = false,
	ingredients = {{"slag", 1}, {"gravel", 1}},
	result = "modified",
	result_count = 4,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Landfill with Slag
{
	type = "recipe",
    name = "landfill-b",
	category = "sluice",
	energy_required = 1,
	enabled = false,
	ingredients = {{"slag", 6}, {"modified", 20}, {"sand", 3}, {"clay", 2}},
	result = "landfill",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Cement with Calcium Oxide
{
	type = "recipe",
    name = "cement-a",
	category = "refining",
	energy_required = 20,
	enabled = false,
	ingredients = {{"calcium-oxide", 5}, {"sand", 1}, {"bauxite", 1}},
	result = "cement-powder",
	result_count = 5
},
--Cement with Slag
{
	type = "recipe",
    name = "cement-b",
	category = "refining",
	energy_required = 20,
	enabled = false,
	ingredients = {{"calcium-oxide", 2}, {"slag", 1}, {"bauxite", 1}},
	result = "cement-powder",
	result_count = 5
},
--Reverse Hazard Concrete
{
	type = "recipe",
    name = "reverse-hazard",
	category = "crafting",
	energy_required = 0.1,
	enabled = false,
	ingredients = {{"hazard-concrete", 1}},
	result = "concrete"
},
--Base "stone-brick" placeholder
--Crude Clay Brick
{
	type = "recipe",
    name = "brick-clay-a",
	category = "kiln",
	energy_required = 4,
	ingredients = {{"clay", 1}},
	result = "brick-clay"
},
--Improved Clay Brick
{
	type = "recipe",
    name = "brick-clay-b",
	category = "forge",
	energy_required = 20,
	enabled = false,
	ingredients = {{"clay", 8}, {"sand", 2}, {"calcium-oxide", 1}},
	result = "brick-clay",
	result_count = 10
},
--Basic Clay-Graphite Refractory Brick
{
	type = "recipe",
    name = "brick-clay-graphite-a",
	category = "smelting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"clay", 1}, {"graphite-powder", 2}},
	result = "brick-clay-graphite"
},
--Improved Clay-Graphite Refractory Brick
{
	type = "recipe",
    name = "brick-clay-graphite-b",
	category = "forge",
	energy_required = 4,
	enabled = false,
	ingredients = {{"clay", 1}, {"graphite-powder", 2}, {"sand", 1}},
	result = "brick-clay-graphite",
	result_count = 2
},
--Chromia-Magnesia Spinel Brick
{
	type = "recipe",
    name = "brick-spinel",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"magnesium-oxide", 1}, {"chromium-oxide", 1}},
	result = "brick-spinel"
},
--Yttria-Stabilized Zirconia Brick
{
	type = "recipe",
    name = "brick-zirconia",
	category = "forge",
	energy_required = 100,
	enabled = false,
	ingredients = {{"zirconium-oxide", 10}, {"re-oxide", 1}},
	result = "brick-zirconia",
	result_count = 10
},
--Fused Basalt A
{
	type = "recipe",
    name = "basalt-a",
	category = "forge",
	energy_required = 50,
	enabled = false,
	ingredients = {{"sand", 10}, {"aluminum-oxide", 2}, {"magnesium-oxide", 2}, {"calcium-oxide", 2}, {"hematite", 1}, {"rod-3", 2}},
	result = "fused-basalt",
	result_count = 10
},
--Fused Basalt B
{
	type = "recipe",
    name = "basalt-b",
	category = "forge",
	energy_required = 50,
	enabled = false,
	ingredients = {{"sand", 8}, {"aluminum-oxide", 2}, {"magnesium-oxide", 2}, {"slag", 2}, {"hematite", 1}, {"rod-3", 2}},
	result = "fused-basalt",
	result_count = 10
},
--Crude Soda-Lime Glass
{
	type = "recipe",
    name = "glass-a",
	category = "smelting",
	energy_required = 40,
	enabled = false,
	ingredients = {{"sand", 10}, {"soda", 1}, {"limestone", 1}, {"saltpeter", 1}},
	result = "glass",
	result_count = 10
},
--Boroslicate Glass
{
	type = "recipe",
    name = "glass-b",
	category = "forge",
	energy_required = 200,
	enabled = false,
	ingredients = {{"sand", 20}, {"boron-oxide", 1}, {"calcium-oxide", 2}, {"aluminum-oxide", 1}},
	result = "glass",
	result_count = 20
},
--Fused Quartz
{
	type = "recipe",
    name = "fused-quartz",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"sand", 1}},
	result = "fused-quartz"
},

--
--SALTS
--Salt Acid Conversion (LeBlanc Process A)
{
	type = "recipe",
    name = "sodium-chloride-conversion",
	icon = "__xander-mod__/graphics/recipe/salt/sodium-chloride-conversion.png",
	icon_size = 32,
	category = "basic-chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{"salt", 2}, {type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{"sodium-sulfate", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 20}},
	subgroup = "salt",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Calcium Chloride Acid Conversion
{
	type = "recipe",
    name = "calcium-chloride-conversion",
	icon = "__xander-mod__/graphics/recipe/salt/calcium-chloride-conversion.png",
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
	ingredients = {{"calcium-chloride", 10}, {type = "fluid", name = "sulfuric-acid", amount = 100}},
	results = {{"calcium-sulfate", 10}, {type = "fluid", name = "hydrogen-chloride", amount = 200}},
	subgroup = "salt"
},
--LeBlanc Process Step B
{
	type = "recipe",
    name = "leblanc-process",
	icon = "__xander-mod__/graphics/recipe/salt/leblanc-process.png",
	icon_size = 32,
	category = "smelting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"limestone", 1}, {"sodium-sulfate", 1}},
	results = {{"soda", 1}},
	subgroup = "salt",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Solvay Process
{
	type = "recipe",
    name = "solvay-process",
	icon = "__xander-mod__/graphics/recipe/salt/solvay-process.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 40,
	enabled = false,
	ingredients = {{"limestone", 20}, {"salt", 40}, {type = "fluid", name = "distilled-water", amount = 10}, {type = "fluid", name = "ammonia", amount = 10}},
	results = {{"soda", 20}, {"calcium-chloride", 20}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "salt",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Sodium Hydroxide Conversion
{
	type = "recipe",
    name = "sodium-hydroxide",
	icon = "__xander-mod__/graphics/recipe/salt/sodium-hydroxide.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"soda", 1}, {"calcium-oxide", 1}, {type = "fluid", name = "distilled-water", amount = 10}},
	results = {{"sodium-hydroxide", 2}, {"limestone", 1}, {type = "fluid", name = "gray-water", amount = 10}},
	subgroup = "salt",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Tungsten Carbide Powder
{
	type = "recipe",
    name = "tungsten-carbide",
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"tungsten-powder", 1}, {"graphite-powder", 1}},
	result = "tungsten-carbide",
	result_count = 10
},
--Silicon Nitride Powder
	icon_size = 32,
{
	type = "recipe",
    name = "silicon-nitride",
	icon_size = 32,
	category = "refining",
	energy_required = 10,
	enabled = false,
	ingredients = {{"metallurgical-powder", 3}, {type = "fluid", name = "nitrogen", amount = 20}},
	result = "silicon-nitride",
	icon_size = 32,
	result_count = 10
},
--Cryolite Mixture
{
	type = "recipe",
    name = "cryolite-mixture",
	icon = "__xander-mod__/graphics/recipe/salt/cryolite-mixture.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{"aluminum-hydroxide", 1}, {"sodium-hydroxide", 2}, {type = "fluid", name = "hydrogen-fluoride", amount = 50}},
	results = {{"cryolite-mixture", 1}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "salt",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Lithium Tetrafluoroborate
{
	type = "recipe",
    name = "lithium-tetrafluoroborate",
	icon = "__xander-mod__/graphics/recipe/salt/lithium-tetrafluoroborate.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 40,
	enabled = false,
	ingredients = {{"boron-oxide", 5}, {type = "fluid", name = "hydrogen-fluoride", amount = 400}, {"lithium-hydroxide", 10}, {type = "fluid", name = "sulfur-dioxide", amount = 20}},
	results = {{"lithium-tetrafluoroborate", 10}, {type = "fluid", name = "waste-water", amount = 200}},
	subgroup = "salt",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Lithium Perchlorate
{
	type = "recipe",
    name = "lithium-perchlorate",
	icon = "__xander-mod__/graphics/recipe/salt/lithium-perchlorate.png",
	icon_size = 32,
	category = "electrolysis",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "chlorine", amount = 30}, {type = "fluid", name = "water", amount = 10}, {"lithium-hydroxide", 6}, {"sodium-hydroxide", 5}},
	results = {{"lithium-perchlorate", 1}, {"salt", 5}, {"lithium-hydroxide", 5}, {type = "fluid", name = "waste-water", amount = 50}, {type = "fluid", name = "hydrogen", amount = 10}},
	subgroup = "salt",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Lithium Titanate
{
	type = "recipe",
    name = "lithium-titanate",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"titanium-oxide", 1}, {"lithium-hydroxide", 2}},
	result = "lithium-titanate"
},

--
--ORGANIC FINISHED SUBSTANCES
--High-Octane Fuel
{
	type = "recipe",
    name = "optimal-fuel",
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "light-oil", amount = 30}, {type = "fluid", name = "benzene", amount = 10}},
	result = "optimal-fuel",
	result_count = 4,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Nitrocellulose
{
	type = "recipe",
    name = "nitrocellulose",
	icon = "__xander-mod__/graphics/recipe/organic/nitrocellulose.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"cotton", 1}, {type = "fluid", name = "nitric-sulfuric", amount = 30}, {type = "fluid", name = "water", amount = 40}},
	results = {{"nitrocellulose", 1}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Unstable Explosives
{
	type = "recipe",
    name = "unstable-explosives",
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "benzene", amount = 10}, {type = "fluid", name = "nitric-sulfuric", amount = 30}},
	result = "unstable-explosives",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Base "explosives" placeholder
--Rubber A
{
	type = "recipe",
    name = "rubber-a",
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{"latex", 5}, {"graphite-powder", 5}, {"sulfur", 3}},
	result = "rubber",
	result_count = 10,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Rubber B
{
	type = "recipe",
    name = "rubber-b",
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{"sbr", 5}, {"graphite-powder", 5}, {"sulfur", 1}, {"zinc-oxide", 1}},
	result = "rubber",
	result_count = 10,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Base "plastic-bar" placeholder
--Uncured Resol
{
	type = "recipe",
    name = "uncured-resol",
	icon = "__xander-mod__/graphics/recipe/organic/uncured-resol.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{"phenol", 2}, {type = "fluid", name = "formaldehyde", amount = 30}},
	results = {{type = "fluid", name = "uncured-resol", amount = 50}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Uncured Epoxy
{
	type = "recipe",
    name = "uncured-epoxy",
	icon = "__xander-mod__/graphics/recipe/organic/uncured-epoxy.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "epoxy-resin", amount = 50}, {type = "fluid", name = "epoxy-hardener", amount = 20}},
	results = {{type = "fluid", name = "uncured-epoxy", amount = 200}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Flotation Surfactant A - Oil
{
	type = "recipe",
    name = "surfactant-a",
	icon = "__xander-mod__/graphics/recipe/organic/surfactant-a.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{"sulfur", 4}, {type = "fluid", name = "heavy-oil", amount = 10}},
	results = {{"surfactant", 1}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Flotation Surfactant B - Xanthate
{
	type = "recipe",
    name = "surfactant-b",
	icon = "__xander-mod__/graphics/recipe/organic/surfactant-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{"sulfur", 4}, {"sodium-hydroxide", 1}, {type = "fluid", name = "methane", amount = 10}, {type = "fluid", name = "methanol", amount = 10}},
	results = {{"surfactant", 1}, {type = "fluid", name = "hydrogen-sulfide", amount = 20}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Basic Solder Flux
{
	type = "recipe",
    name = "solder-flux-a",
	category = "basic-machine",
	energy_required = 0.5,
	enabled = false,
	ingredients = {{"wood-resin", 1}},
	result = "solder-flux",
	result_count = 1
},
--Improved Solder Flux
{
	type = "recipe",
    name = "solder-flux-b",
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{"phenol", 2}, {type = "fluid", name = "ammonia", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 10}},
	result = "solder-flux",
	result_count = 2,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Blasting Fluid
{
	type = "recipe",
    name = "blasting-fluid",
	icon = "__xander-mod__/graphics/fluid/other-organic/blasting-fluid.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{"explosives", 5}, {type = "fluid", name = "light-oil", amount = 10}},
	results = {{type = "fluid", name = "blasting-fluid", amount = 100}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Lithium Grease Lubricant
{
	type = "recipe",
    name = "lubricant-b",
	icon = "__xander-mod__/graphics/recipe/organic/lubricant-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 40,
	enabled = false,
	ingredients = {{type = "fluid", name = "heavy-oil", amount = 90}, {"phenol", 2}, {"lithium-hydroxide", 2}},
	results = {{type = "fluid", name = "lubricant", amount = 200}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Carbon Tetrafluoride
{
	type = "recipe",
    name = "carbon-tetrafluoride",
	icon = "__xander-mod__/graphics/recipe/organic/carbon-tetrafluoride.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "carbon-dioxide", amount = 10}, {type = "fluid", name = "hydrogen-fluoride", amount = 40}},
	results = {{type = "fluid", name = "carbon-tetrafluoride", amount = 10}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Dimethyl Carbonate
{
	type = "recipe",
    name = "dimethyl-carbonate",
	icon = "__xander-mod__/graphics/recipe/organic/dimethyl-carbonate.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "carbon-dioxide", amount = 10}, {type = "fluid", name = "methanol", amount = 20}},
	results = {{type = "fluid", name = "dimethyl-carbonate", amount = 10}, {type = "fluid", name = "waste-water", amount = 10}},
	subgroup = "organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Synthetic Drugs
{
	type = "recipe",
    name = "synthetic-drugs",
	category = "chemical-plant",
	energy_required = 50,
	enabled = false,
	ingredients = {{type = "fluid", name = "chlorobenzene", amount = 20}, {type = "fluid", name = "ammonia", amount = 10}, {type = "fluid", name = "dimethyl-carbonate", amount = 10}},
	result = "synthetic-drugs"
},

--
--ORGANIC INTERMEDIATES - CARBOHYDRATE
--Wood Multiplication in Logging Camp (PLACEHOLDER)
{
	type = "recipe",
    name = "wood-multiplication",
	category = "temp-logging",
	energy_required = 5,
	enabled = false,
	ingredients = {{"raw-wood", 10}, {type = "fluid", name = "water", amount = 50}},
	result = "raw-wood",
	result_count = 11
},
--Cotton
{
	type = "recipe",
    name = "cotton",
	category = "basic-machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"wood", 2}},
	result = "cotton"
},
--Wood Resin
{
	type = "recipe",
    name = "wood-resin",
	icon = "__xander-mod__/graphics/recipe/organic/wood-resin.png",
	icon_size = 32,
	category = "basic-chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"raw-wood", 20}, {type = "fluid", name = "steam", amount = 10}},
	result = "wood-resin",
	result_count = 10,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Methanol from Wood Pyrolysis
{
	type = "recipe",
    name = "methanol-a",
	icon = "__xander-mod__/graphics/recipe/organic/methanol-a.png",
	icon_size = 32,
	category = "basic-chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{"wood", 4}},
	results = {{type = "fluid", name = "methanol", amount = 10}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Formaldehyde from Methanol Oxidation
{
	type = "recipe",
    name = "formaldehyde-a",
	icon = "__xander-mod__/graphics/recipe/organic/formaldehyde-a.png",
	icon_size = 32,
	category = "basic-chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "methanol", amount = 50}, {"pipe-copper", 1}},
	results = {{type = "fluid", name = "formaldehyde", amount = 50}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Formic Acid (only basic tier recipe exists and is needed, becasue only use of formic acid is basic rubber)
{
	type = "recipe",
    name = "formic-acid",
	icon = "__xander-mod__/graphics/recipe/organic/formic-acid.png",
	icon_size = 32,
	category = "basic-chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"raw-wood", 4}, {type = "fluid", name = "water", amount = 20}, {"granitic-ore", 1}, {"iron-ore", 1}},
	results = {{type = "fluid", name = "formic-acid", amount = 20}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Raw Natural Latex Rubber
{
	type = "recipe",
    name = "latex",
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"raw-wood", 10}, {type = "fluid", name = "formic-acid", amount = 10}},
	result = "latex",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Raw Styrene-Butadiene Rubber
{
	type = "recipe",
    name = "sbr",
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "styrene", amount = 10}, {type = "fluid", name = "butadiene", amount = 10}},
	result = "sbr",
	result_count = 2,
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Crude Phenol from Coal Tar
{
	type = "recipe",
    name = "phenol-a",
	icon = "__xander-mod__/graphics/recipe/organic/phenol-a.png",
	icon_size = 32,
	category = "basic-chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{"coke", 8}, {type = "fluid", name = "water", amount = 50}},
	results = {{"phenol", 1}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Improved Phenol from Chlorobenzene
{
	type = "recipe",
    name = "phenol-b",
	icon = "__xander-mod__/graphics/recipe/organic/phenol-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "chlorobenzene", amount = 10}, {type = "fluid", name = "water", amount = 10}},
	results = {{"phenol", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 10}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Catylitic Methanol Synthesis
{
	type = "recipe",
    name = "methanol-b",
	icon = "__xander-mod__/graphics/recipe/organic/methanol-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "carbon-monoxide", amount = 10}, {type = "fluid", name = "hydrogen", amount = 20}},
	results = {{type = "fluid", name = "methanol", amount = 10}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Improved Formaldehyde Synthesis (process via methyl formate)
{
	type = "recipe",
    name = "formaldehyde-b",
	icon = "__xander-mod__/graphics/recipe/organic/formaldehyde-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{"sodium-hydroxide", 1}, {type = "fluid", name = "methanol", amount = 110}, {type = "fluid", name = "carbon-monoxide", amount = 100}},
	results = {{type = "fluid", name = "formaldehyde", amount = 100}, {type = "fluid", name = "methanol", amount = 100}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Coal Gasification
{
	type = "recipe",
    name = "coal-gasification",
	icon = "__xander-mod__/graphics/recipe/organic/coal-gasification.png",
	icon_size = 32,
	category = "refining",
	energy_required = 8,
	enabled = false,
	ingredients = {{"coal", 2}, {type = "fluid", name = "oxygen", amount = 20}},
	results = {{type = "fluid", name = "carbon-monoxide", amount = 40}, {type = "fluid", name = "hydrogen", amount = 10}},
	subgroup = "carbohydrate"
},
--Methane Synthesis Gas
{
	type = "recipe",
    name = "methane-gasification",
	icon = "__xander-mod__/graphics/recipe/organic/methane-gasification.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "methane", amount = 20}, {type = "fluid", name = "oxygen", amount = 10}},
	results = {{type = "fluid", name = "carbon-monoxide", amount = 20}, {type = "fluid", name = "hydrogen", amount = 40}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Methane Steam Cracking
{
	type = "recipe",
    name = "methane-cracking",
	icon = "__xander-mod__/graphics/recipe/organic/methane-cracking.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "methane", amount = 10}, {type = "fluid", name = "steam", amount = 10}},
	results = {{type = "fluid", name = "carbon-monoxide", amount = 10}, {type = "fluid", name = "hydrogen", amount = 30}},
	subgroup = "carbohydrate",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},

--
--ORGANIC INTERMEDIATES - HYDROCARBON
--Base "fluid-recipes"
--Heavy Naptha Cracking to Heavy Oil
{
	type = "recipe",
    name = "naptha-heavy",
	icon = "__xander-mod__/graphics/recipe/organic/naptha-heavy.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "heavy-naptha", amount = 10}, {type = "fluid", name = "hydrogen", amount = 30}},
	results = {{type = "fluid", name = "heavy-oil", amount = 10}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Heavy Naptha Cracking to Benzene
{
	type = "recipe",
    name = "naptha-benzene",
	icon = "__xander-mod__/graphics/recipe/organic/naptha-benzene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "heavy-naptha", amount = 10}, {type = "fluid", name = "steam", amount = 10}},
	results = {{type = "fluid", name = "benzene", amount = 20}, {type = "fluid", name = "hydrogen", amount = 30}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Light Oil Cracking to Propylene
{
	type = "recipe",
    name = "light-propylene",
	icon = "__xander-mod__/graphics/recipe/organic/light-propylene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "light-oil", amount = 10}, {type = "fluid", name = "steam", amount = 10}},
	results = {{type = "fluid", name = "propylene", amount = 20}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Propylene Cracking to Ethylene
{
	type = "recipe",
    name = "propylene-ethylene",
	icon = "__xander-mod__/graphics/recipe/organic/propylene-ethylene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "propylene", amount = 20}},
	results = {{type = "fluid", name = "petroleum-gas", amount = 30}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Ethylene Cracking to Methane
{
	type = "recipe",
    name = "ethylene-methane",
	icon = "__xander-mod__/graphics/recipe/organic/ethylene-methane.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "petroleum-gas", amount = 10}, {type = "fluid", name = "hydrogen", amount = 20}},
	results = {{type = "fluid", name = "methane", amount = 20}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Methane Reforming to Ethylene
{
	type = "recipe",
    name = "methane-ethylene",
	icon = "__xander-mod__/graphics/recipe/organic/methane-ethylene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "methane", amount = 20}},
	results = {{type = "fluid", name = "petroleum-gas", amount = 10}, {type = "fluid", name = "hydrogen", amount = 20}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Ethylene Reforming to Propylene
{
	type = "recipe",
    name = "ethylene-propylene",
	icon = "__xander-mod__/graphics/recipe/organic/ethylene-propylene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "petroleum-gas", amount = 30}},
	results = {{type = "fluid", name = "propylene", amount = 20}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Ethylene Reforming to Butadiene
{
	type = "recipe",
    name = "ethylene-butadiene",
	icon = "__xander-mod__/graphics/recipe/organic/ethylene-butadiene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "petroleum-gas", amount = 20}},
	results = {{type = "fluid", name = "butadiene", amount = 10}, {type = "fluid", name = "hydrogen", amount = 10}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Light Oil Reforming to Benzene
{
	type = "recipe",
    name = "light-benzene",
	icon = "__xander-mod__/graphics/recipe/organic/light-benzene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "light-oil", amount = 10}},
	results = {{type = "fluid", name = "benzene", amount = 10}, {type = "fluid", name = "hydrogen", amount = 30}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Styrene Synthesis
{
	type = "recipe",
    name = "styrene",
	icon = "__xander-mod__/graphics/recipe/organic/styrene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "benzene", amount = 10}, {type = "fluid", name = "petroleum-gas", amount = 10}},
	results = {{type = "fluid", name = "styrene", amount = 10}, {type = "fluid", name = "hydrogen", amount = 10}},
	subgroup = "fluid-recipes",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},

--
--ORGANIC INTERMEDIATES - OTHER
--Chlorobenzene Synthesis
{
	type = "recipe",
    name = "chlorobenzene",
	icon = "__xander-mod__/graphics/recipe/organic/chlorobenzene.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "benzene", amount = 10}, {type = "fluid", name = "chlorine", amount = 10}},
	results = {{type = "fluid", name = "chlorobenzene", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 10}},
	subgroup = "other-organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Epichlorohydrin Synthesis
{
	type = "recipe",
    name = "epichlorohydrin",
	icon = "__xander-mod__/graphics/recipe/organic/epichlorohydrin.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "propylene", amount = 10}, {type = "fluid", name = "chlorine", amount = 20}, {"sodium-hydroxide", 1}},
	results = {{type = "fluid", name = "epichlorohydrin", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 10}, {"salt", 1}},
	subgroup = "other-organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Epoxy Resin Component
{
	type = "recipe",
    name = "epoxy-resin",
	icon = "__xander-mod__/graphics/recipe/organic/epoxy-resin.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "formaldehyde", amount = 10}, {"phenol", 2}, {type = "fluid", name = "epichlorohydrin", amount = 20}},
	results = {{type = "fluid", name = "epoxy-resin", amount = 10}},
	subgroup = "other-organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Ethylene Dichloride Synthesis
{
	type = "recipe",
    name = "ethylene-dichloride",
	icon = "__xander-mod__/graphics/recipe/organic/ethylene-dichloride.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "petroleum-gas", amount = 10}, {type = "fluid", name = "chlorine", amount = 10}},
	results = {{type = "fluid", name = "ethylene-dichloride", amount = 10}},
	subgroup = "other-organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Epoxy Hardener Component
{
	type = "recipe",
    name = "epoxy-hardener",
	icon = "__xander-mod__/graphics/recipe/organic/epoxy-hardener.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "ethylene-dichloride", amount = 20}, {type = "fluid", name = "ammonia", amount = 30}},
	results = {{type = "fluid", name = "epoxy-hardener", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 40}},
	subgroup = "other-organic",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},

--
--NONMETAL EELMENTS
--Graphite Block A
{
	type = "recipe",
    name = "graphite-block-a",
	category = "basic-machine",
	energy_required = 20,
	enabled = false,
	ingredients = {{"graphite-powder", 4}},
	result = "graphite-block"
},
--Graphite Block B
{
	type = "recipe",
    name = "graphite-block-b",
	category = "forge",
	energy_required = 96,
	enabled = false,
	ingredients = {{"coke", 36}, {type = "fluid", name = "heavy-naptha", amount = 10}}, --3 blocks from naptha, 9 from coke
	result = "graphite-block",
	result_count = 12
},
--Grinding Graphite Block to Graphite Powder
{
	type = "recipe",
    name = "graphite-powder",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"graphite-block", 1}},
	result = "graphite-powder",
	result_count = 4
},
--Acidified Water Electrolysis
{
	type = "recipe",
    name = "electrolysis-water-a",
	icon = "__xander-mod__/graphics/recipe/element/electrolysis-water-a.png",
	icon_size = 32,
	category = "electrolysis",
	energy_required = 100,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 100}, {type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{type = "fluid", name = "hydrogen", amount = 100}, {type = "fluid", name = "oxygen", amount = 50}},
	subgroup = "nonmetal",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Alkali Water Electrolysis
{
	type = "recipe",
    name = "electrolysis-water-b",
	icon = "__xander-mod__/graphics/recipe/element/electrolysis-water-b.png",
	icon_size = 32,
	category = "electrolysis",
	energy_required = 50,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 100}, {"sodium-hydroxide", 2}},
	results = {{type = "fluid", name = "hydrogen", amount = 100}, {type = "fluid", name = "oxygen", amount = 50}, {"soda", 1}},
	subgroup = "nonmetal",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Salt Water Electrolysis
{
	type = "recipe",
    name = "electrolysis-salt-water",
	icon = "__xander-mod__/graphics/recipe/element/electrolysis-salt-water.png",
	icon_size = 32,
	category = "electrolysis",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 20}, {"salt", 2}},
	results = {{type = "fluid", name = "hydrogen", amount = 10}, {"sodium-hydroxide", 2}, {type = "fluid", name = "chlorine", amount = 10}},
	subgroup = "nonmetal",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Hydrogen Chloride Electrolysis
{
	type = "recipe",
    name = "electrolysis-hcl",
	icon = "__xander-mod__/graphics/recipe/element/electrolysis-hcl.png",
	icon_size = 32,
	category = "electrolysis",
	energy_required = 100,
	enabled = false,
	ingredients = {{type = "fluid", name = "hydrogen-chloride", amount = 100}, {type = "fluid", name = "water", amount = 10}},
	results = {{type = "fluid", name = "hydrogen", amount = 50}, {type = "fluid", name = "chlorine", amount =50}},
	subgroup = "nonmetal",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Improved Coal Coking
{
	type = "recipe",
    name = "coke-b",
	icon = "__xander-mod__/graphics/recipe/element/coke-b.png",
	icon_size = 32,
	category = "refining",
	energy_required = 160,
	enabled = false,
	ingredients = {{"coal", 20}},
	results = {{"coke", 68}, {type = "fluid", name = "heavy-naptha", amount = 10}},
	subgroup = "nonmetal"
},
--Kvaerner Process
{
	type = "recipe",
    name = "kvaerner-process",
	icon = "__xander-mod__/graphics/recipe/element/kvaerner-process.png",
	icon_size = 32,
	category = "refining",
	energy_required = 12,
	enabled = false,
	ingredients = {{type = "fluid", name = "heavy-oil", amount = 10}},
	results = {{"coke", 6}, {type = "fluid", name = "hydrogen", amount = 60}},
	subgroup = "nonmetal"
},
--Metallurgical Silicon Powder
	icon_size = 32,
{
	type = "recipe",
    name = "metallurgical-powder",
	category = "machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"metallurgical-plate", 1}},
	result = "metallurgical-powder"
},
--Activated Carbon Powder
{
	type = "recipe",
    name = "activated-carbon",
	icon = "__xander-mod__/graphics/recipe/element/activated-carbon.png",
	icon_size = 32,
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"silicon-carbide", 1}, {type = "fluid", name = "chlorine", amount = 20}},
	icon_size = 32,
	results = {{"activated-carbon", 1}, {type = "fluid", name = "silicon-tetrachloride", amount = 10}},
	icon_size = 32,
	subgroup = "nonmetal"
},
--Ultra-Pure Silicon Powder
	icon_size = 32,
{
	type = "recipe",
    name = "ultrapure-powder",
	icon = "__xander-mod__/graphics/recipe/element/ultrapure-powder.png",
	icon_size = 32,
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "silane", amount = 10}},
	results = {{"ultrapure-powder", 1}, {type = "fluid", name = "hydrogen", amount = 20}},
	subgroup = "nonmetal"
},

--
--COMPOUNDS - MISC
--Distilled Water
{
	type = "recipe",
    name = "distilled-water",
	icon = "__xander-mod__/graphics/recipe/compound/distilled-water.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 10}},
	results = {{type = "fluid", name = "distilled-water", amount = 10}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Oleum
{
	type = "recipe",
    name = "oleum",
	icon = "__xander-mod__/graphics/recipe/compound/oleum.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "sulfuric-acid", amount = 10}, {type = "fluid", name = "sulfur-trioxide", amount = 10}},
	results = {{type = "fluid", name = "oleum", amount = 10}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Sulfuric Acid from Diluting Oleum
{
	type = "recipe",
    name = "sulfuric-acid-b",
	icon = "__xander-mod__/graphics/recipe/compound/sulfuric-acid-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 1,
	enabled = false,
	ingredients = {{type = "fluid", name = "oleum", amount = 10}, {type = "fluid", name = "water", amount = 10}},
	results = {{type = "fluid", name = "sulfuric-acid", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Crude Nitric Acid Distillation
{
	type = "recipe",
    name = "nitric-acid-a",
	icon = "__xander-mod__/graphics/recipe/compound/nitric-acid-a.png",
	icon_size = 32,
	category = "basic-chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"saltpeter", 2}, {type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{type = "fluid", name = "nitric-acid", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Ostwald Process Step B
{
	type = "recipe",
    name = "ostwald-b",
	icon = "__xander-mod__/graphics/recipe/compound/ostwald-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "nitrogen-dioxide", amount = 30}, {type = "fluid", name = "water", amount = 10}},
	results = {{type = "fluid", name = "nitric-acid", amount = 20}, {type = "fluid", name = "nitrogen-monoxide", amount = 10}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Nitric-Sulfuric Acids Mixture
{
	type = "recipe",
    name = "nitric-sulfuric",
	icon = "__xander-mod__/graphics/recipe/compound/nitric-sulfuric.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "nitric-acid", amount = 20}, {type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{type = "fluid", name = "nitric-sulfuric", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Silicon Tetrachloride
	icon_size = 32,
{
	type = "recipe",
    name = "silicon-tetrachloride",
	icon_size = 32,
	icon = "__xander-mod__/graphics/recipe/compound/silicon-tetrachloride.png",
	icon_size = 32,
	icon_size = 32,
	category = "refining",
	energy_required = 2,
	enabled = false,
	ingredients = {{"metallurgical-powder", 1}, {type = "fluid", name = "chlorine", amount = 20}},
	results = {{type = "fluid", name = "silicon-tetrachloride", amount = 10}},
	icon_size = 32,
	subgroup = "compound"
},

--
--COMPOUNDS - OXIDE
--Carbon Dioxide Reduction to Carbon Monoxide
{
	type = "recipe",
    name = "water-gas",
	icon = "__xander-mod__/graphics/recipe/compound/water-gas.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "carbon-dioxide", amount = 10}, {type = "fluid", name = "hydrogen", amount = 10}},
	results = {{type = "fluid", name = "carbon-monoxide", amount = 10}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Bodouard Reaction (Carbon Disproportionation)
{
	type = "recipe",
    name = "bodouard-reaction",
	icon = "__xander-mod__/graphics/recipe/compound/bodouard-reaction.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "carbon-monoxide", amount = 20}},
	results = {{"coke", 1}, {type = "fluid", name = "carbon-dioxide", amount = 10}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Ostwald Process Step A
{
	type = "recipe",
    name = "ostwald-a",
	icon = "__xander-mod__/graphics/recipe/compound/ostwald-a.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "ammonia", amount = 40}, {type = "fluid", name = "oxygen", amount = 50}},
	results = {{type = "fluid", name = "nitrogen-monoxide", amount = 40}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Nitrogen Monoxide Oxidation to Nitrogen Dioxide
{
	type = "recipe",
    name = "nitrogen-dioxide",
	icon = "__xander-mod__/graphics/recipe/compound/nitrogen-dioxide.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "nitrogen-monoxide", amount = 20}, {type = "fluid", name = "oxygen", amount = 10}},
	results = {{type = "fluid", name = "nitrogen-dioxide", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Hydrogen Sulfuide Oxidation to Sulfur Dioxide
{
	type = "recipe",
    name = "sulfur-dioxide",
	icon = "__xander-mod__/graphics/recipe/compound/sulfur-dioxide.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "hydrogen-sulfide", amount = 20}, {type = "fluid", name = "oxygen", amount = 30}},
	results = {{type = "fluid", name = "sulfur-dioxide", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Sulfur Dioxide Oxidation to Sulfur Trioxide
{
	type = "recipe",
    name = "sulfur-trioxide",
	icon = "__xander-mod__/graphics/recipe/compound/sulfur-trioxide.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "sulfur-dioxide", amount = 20}, {type = "fluid", name = "oxygen", amount = 10}, {"vanadium-oxide", 1}},
	results = {{type = "fluid", name = "sulfur-trioxide", amount = 20}, {"vanadium-oxide", 1}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Sand Recovery from Silicon Tetrachloride
	icon_size = 32,
{
	type = "recipe",
    name = "sand-recovery",
	icon = "__xander-mod__/graphics/recipe/compound/sand-recovery.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "silicon-tetrachloride", amount = 10}, {type = "fluid", name = "water", amount = 40}},
	results = {{"sand", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 40}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},

--COMPOUNDS - HYDROGENATED
--Haber Process Ammonia
{
	type = "recipe",
    name = "haber-process",
	icon = "__xander-mod__/graphics/recipe/compound/haber-process.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "nitrogen", amount = 10}, {type = "fluid", name = "hydrogen", amount = 30}},
	results = {{type = "fluid", name = "ammonia", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Hydrogen Chloride from the Elements
{
	type = "recipe",
    name = "hydrogen-chloride",
	icon = "__xander-mod__/graphics/recipe/compound/hydrogen-chloride.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "chlorine", amount = 10}, {type = "fluid", name = "hydrogen", amount = 10}},
	results = {{type = "fluid", name = "hydrogen-chloride", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Hydrogen Sulfide from Catalytic Hydro-Desulfurization
{
	type = "recipe",
    name = "hydrogen-sulfide",
	icon = "__xander-mod__/graphics/recipe/compound/hydrogen-sulfide.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{type = "fluid", name = "petroleum-gas", amount = 10}, {type = "fluid", name = "hydrogen", amount = 20}},
	results = {{type = "fluid", name = "hydrogen-sulfide", amount = 20}},
	subgroup = "compound",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	}
},
--Pure Silane from Silicon Tetrachloride and Distillation
	icon_size = 32,
{
	type = "recipe",
    name = "silane",
	icon = "__xander-mod__/graphics/recipe/compound/silane.png",
	icon_size = 32,
	category = "chemical-plant",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "silicon-tetrachloride", amount = 10}, {type = "fluid", name = "hydrogen", amount = 40}},
	icon_size = 32,
	results = {{type = "fluid", name = "silane", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 40}},
	subgroup = "compound"
}

})