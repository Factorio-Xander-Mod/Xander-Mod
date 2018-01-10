
--Base Overrides

--Base "coal-liquefaction"
data.raw.recipe["coal-liquefaction"].category = "chemical-plant"
data.raw.recipe["coal-liquefaction"].energy_required = 40
data.raw.recipe["coal-liquefaction"].ingredients = {{"coal", 18}, {type = "fluid", name = "heavy-oil", amount = 10}, 
	{type = "fluid", name = "hydrogen", amount = 120}}
data.raw.recipe["coal-liquefaction"].results = {{type = "fluid", name = "heavy-naptha", amount = 30}, {type = "fluid", name = "benzene", amount = 20}}
data.raw.recipe["coal-liquefaction"].icon = "__xander-mod__/graphics/recipe/refining/bergius-process.png"

--Base "copper-plate"
data.raw.recipe["copper-plate"].category = "kiln"
data.raw.recipe["copper-plate"].energy_required = 4

--Base "basic-oil-processing"
data.raw.recipe["basic-oil-processing"].energy_required = 10
data.raw.recipe["basic-oil-processing"].results = {{type = "fluid", name = "heavy-oil", amount = 20}, {type = "fluid", name = "light-oil", amount = 40}, 
	{type = "fluid", name = "propylene", amount = 40}}

--Base "advanced-oil-processing"
data.raw.recipe["advanced-oil-processing"].category = "chemical-plant"
data.raw.recipe["advanced-oil-processing"].energy_required = 20
data.raw.recipe["advanced-oil-processing"].ingredients = {{type = "fluid", name = "crude-oil", amount = 100}, {type = "fluid", name = "steam", amount = 50}}
data.raw.recipe["advanced-oil-processing"].results = {{type = "fluid", name = "heavy-oil", amount = 10}, {type = "fluid", name = "light-oil", amount = 50}, 
	{type = "fluid", name = "propylene", amount = 60}}

--Base "iron-plate"
data.raw.recipe["iron-plate"].energy_required = 4

--Base "uranium-processing"
data.raw.recipe["uranium-processing"].energy_required = 100
data.raw.recipe["uranium-processing"].ingredients = {{"natural-uf6", 1}}
data.raw.recipe["uranium-processing"].results = {{name = "fuel-uf6", probability = 0.07, amount = 1}, {name = "238-uf6", probability = 0.93, amount = 1}}

--Base "kovarex-enrichment-process"
data.raw.recipe["kovarex-enrichment-process"].energy_required = 200
data.raw.recipe["kovarex-enrichment-process"].ingredients = {{"weapons-uf6", 10}, {"238-uf6", 40}}
data.raw.recipe["kovarex-enrichment-process"].results = {{name = "fuel-uf6", amount = 51}, {name = "238-uf6", amount = 20}}


data:extend(
{

--
--APATITE
--Hydrogen Fluoride from Fluorite
{
	type = "recipe",
    name = "hydrogen-fluoride",
	icon = "__xander-mod__/graphics/recipe/refining/hydrogen-fluoride.png",
	icon_size = 32,
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 4,
	enabled = false,
	ingredients = {{"fluorite", 1}, {type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{type = "fluid", name = "hydrogen-fluoride", amount = 20}, {"calcium-sulfate", 1}},
	subgroup = "raw-material"
},
--Phosphoric Acid from Phosphate Rock
{
	type = "recipe",
    name = "phosphoric-acid",
	icon = "__xander-mod__/graphics/recipe/refining/phosphoric-acid.png",
	icon_size = 32,
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 4,
	enabled = false,
	ingredients = {{"phosphate-rock", 1}, {type = "fluid", name = "sulfuric-acid", amount = 30}},
	results = {{type = "fluid", name = "phosphoric-acid", amount = 20}, {"calcium-sulfate", 3}},
	subgroup = "raw-material"
},
--Phosphoruus Smelting
{
	type = "recipe",
    name = "phosphorus-smelting",
	icon = "__xander-mod__/graphics/recipe/refining/phosphorus-smelting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 20,
	enabled = false,
	ingredients = {{"phosphate-rock", 2}, {"sand", 6}, {"coke", 5}},
	results = {{"phosphorus", 4}, {"slag", 6}, {type = "fluid", name = "flue-gas", amount = 50}},
	subgroup = "raw-material"
},
--
--BAUXITE
--Gibbsite Calcining to Aluminum Oxide
{
	type = "recipe",
    name = "gibbsite-calcining",
	icon = "__xander-mod__/graphics/recipe/refining/gibbsite-calcining.png",
	icon_size = 32,
	category = "refining",
	energy_required = 4,
	enabled = false,
	ingredients = {{"aluminum-hydroxide", 2}},
	results = {{"aluminum-oxide", 1}, {type = "fluid", name = "gray-water", amount = 30}},
	subgroup = "raw-material"
},
--Hall-Heroult Process
{
	type = "recipe",
    name = "hall-heroult",
	icon = "__xander-mod__/graphics/recipe/refining/hall-heroult.png",
	icon_size = 32,
	category = "refining",
	energy_required = 800,
	enabled = false,
	ingredients = {{"aluminum-oxide", 40}, {"graphite-block", 15}, {"cryolite-mixture", 4}},
	results = {{"aluminum-plate", 80}, {type = "fluid", name = "flue-gas", amount = 600}},
	subgroup = "raw-material"
},
--Acheson Process Silicon
{
	type = "recipe",
    name = "acheson-silicon",
	icon = "__xander-mod__/graphics/recipe/refining/acheson-silicon.png",
	icon_size = 32,
	category = "refining",
	energy_required = 100,
	enabled = false,
	ingredients = {{"sand", 20}, {"graphite-block", 1}, {"coke", 16}},
	results = {{"metallurgical-plate", 20}, {type = "fluid", name = "flue-gas", amount = 200}},
	subgroup = "raw-material"
},
--Acheson Process Silicon Carbide
{
	type = "recipe",
    name = "acheson-carbide",
	icon = "__xander-mod__/graphics/recipe/refining/acheson-carbide.png",
	icon_size = 32,
	category = "refining",
	energy_required = 100,
	enabled = false,
	ingredients = {{"sand", 20}, {"graphite-block", 1}, {"coke", 36}},
	results = {{"silicon-carbide", 20}, {type = "fluid", name = "flue-gas", amount = 200}},
	subgroup = "raw-material"
},
--Acheson Process Graphite
{
	type = "recipe",
    name = "acheson-graphite",
	icon = "__xander-mod__/graphics/recipe/refining/acheson-graphite.png",
	icon_size = 32,
	category = "refining",
	energy_required = 200,
	enabled = false,
	ingredients = {{"silicon-carbide", 20}, {"graphite-block", 1}},
	results = {{"graphite-powder", 24}, {"metallurgical-plate", 20}},
	subgroup = "raw-material"
},
--
--COAL
--Crude Coal Coke
{
	type = "recipe",
    name = "coke-a",
	category = "smelting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"coal", 4}},
	result = "coke",
	result_count = 16
},
--Crude Graphite
{
	type = "recipe",
    name = "smelting-graphite",
	category = "basic-sluice",
	energy_required = 2,
	enabled = false,
	ingredients = {{"granitic-ore", 1}, {type = "fluid", name = "water", amount = 10}},
	result = "graphite-powder"
},
--Base "coal-liquefaction" placeholder
--COPPER ORE
--Base "copper-plate" placeholder (Crude Copper Smelting)
--Copper Plate B - Soda Flux
{
	type = "recipe",
    name = "copper-plate-b",
	category = "basic-refining",
	energy_required = 32,
	enabled = false,
	ingredients = {{"copper-ore", 4}, {"soda", 1}},
	result = "copper-plate",
	result_count = 8
},
--Chalcocite Roasting
{
	type = "recipe",
    name = "chalcocite-roasting",
	icon = "__xander-mod__/graphics/recipe/refining/chalcocite-roasting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 20,
	enabled = false,
	ingredients = {{"chalcocite", 2}, {type = "fluid", name = "oxygen", amount = 30}},
	results = {{"cuprous-oxide", 2}, {type = "fluid", name = "sulfur-dioxide", amount = 20}},
	subgroup = "raw-material"
},
--Copper Smelting
{
	type = "recipe",
    name = "copper-smelting",
	icon = "__xander-mod__/graphics/recipe/refining/copper-smelting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 100,
	enabled = false,
	ingredients = {{"cuprous-oxide", 10}, {"coke", 5}, {"soda", 2}},
	results = {{"copper-plate", 20}, {"slag", 2}, {type = "fluid", name = "flue-gas", amount = 50}},
	subgroup = "raw-material"
},
--Copper Electrowinning with Cobalt Oxide
{
	type = "recipe",
    name = "copper-cobalt",
	icon = "__xander-mod__/graphics/recipe/refining/copper-cobalt.png",
	icon_size = 32,
	category = "ore-plant",
	energy_required = 400,
	enabled = false,
	ingredients = {{"cuprous-oxide", 10}, {type = "fluid", name = "sulfuric-acid", amount = 20}, {type = "fluid", name = "ammonia", amount = 20}, 
		{"calcium-oxide", 10}, {type = "fluid", name = "oxygen", amount = 50}},
	results = {{"copper-plate", 20}, {"cobalt-oxide", 2}, {type = "fluid", name = "waste-slurry", amount = 20}},
	subgroup = "raw-material"
},
--Cobalt Electrowinning
{
	type = "recipe",
    name = "cobalt-electrowinning",
	icon = "__xander-mod__/graphics/recipe/refining/cobalt-electrowinning.png",
	icon_size = 32,
	category = "electrolysis",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 100,
	enabled = false,
	ingredients = {{"cobalt-oxide", 10}, {type = "fluid", name = "sulfuric-acid", amount = 10}, {type = "fluid", name = "water", amount = 50}},
	results = {{"cobalt-plate", 10}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-material"
},
--
--CRUDE OIL
--Base "oil-processing" placeholder
--Base "advanced-oil-processing" placeholder
--
--GARNIERITE
--Crude Nickel Smelting
{
	type = "recipe",
    name = "smelting-nickel",
	category = "basic-refining",
	energy_required = 8,
	ingredients = {{"garnierite", 2}, {"limestone", 1}},
	result = "nickel-plate"
},
--Proper Nickel Smelting
{
	type = "recipe",
    name = "nickel-smelting",
	icon = "__xander-mod__/graphics/recipe/refining/nickel-smelting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 50,
	enabled = false,
	ingredients = {{"nickel-oxide", 10}, {"coke", 5}, {"calcium-oxide", 2}},
	results = {{"nickel-plate", 10}, {"slag", 2}, {type = "fluid", name = "flue-gas", amount = 50}},
	subgroup = "raw-material"
},
--Nickel Electrowinning with Platinum Sponge
{
	type = "recipe",
    name = "nickel-platinum",
	icon = "__xander-mod__/graphics/recipe/refining/nickel-platinum.png",
	icon_size = 32,
	category = "electrolysis",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 400,
	enabled = false,
	ingredients = {{"garnierite", 20}, {type = "fluid", name = "sulfuric-acid", amount = 40}, {type = "fluid", name = "water", amount = 100}},
	results = {{"nickel-plate", 20}, {"platinum-sponge", 1}, {type = "fluid", name = "waste-water", amount = 100}},
	subgroup = "raw-material"
},
--Platinum Smelting
{
	type = "recipe",
    name = "platinum-smelting",
	icon = "__xander-mod__/graphics/recipe/refining/platinum-smelting.png",
	icon_size = 32,
	category = "forge",
	energy_required = 100,
	enabled = false,
	ingredients = {{"platinum-sponge", 20}, {"borax", 1}, {"calcium-oxide", 1}},
	results = {{"platinum-plate", 20}, {"slag", 2}},
	subgroup = "raw-material"
},
--
--GRANITIC ORE
--Crude Tin Plate
{
	type = "recipe",
    name = "kiln-tin",
	category = "kiln",
	energy_required = 4,
	ingredients = {{"granitic-ore", 2}},
	result = "tin-plate"
},
--Proper Tin Smelting
{
	type = "recipe",
    name = "tin-smelting",
	icon = "__xander-mod__/graphics/recipe/refining/tin-smelting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 100,
	enabled = false,
	ingredients = {{"cassiterite", 10}, {"coke", 10}, {"soda", 1}},
	results = {{"tin-plate", 10}, {"slag", 1}, {type = "fluid", name = "flue-gas", amount = 100}},
	subgroup = "raw-material"
},
--Tungsten Reduction
{
	type = "recipe",
    name = "tungsten-reduction",
	icon = "__xander-mod__/graphics/recipe/refining/tungsten-reduction.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"tungsten-oxide", 1}, {type = "fluid", name = "hydrogen", amount = 30}},
	results = {{"tungsten-powder", 1}, {type = "fluid", name = "gray-water", amount = 30}},
	subgroup = "raw-material"
},
--Tungsten Sintering
{
	type = "recipe",
    name = "tungsten-sintering",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"tungsten-powder", 1}},
	result = "tungsten-block"
},
--Miller Process Gold Smelting
{
	type = "recipe",
    name = "miller-process",
	icon = "__xander-mod__/graphics/recipe/refining/miller-process.png",
	icon_size = 32,
	category = "forge",
	energy_required = 50,
	enabled = false,
	ingredients = {{"gold-sponge", 10}, {type = "fluid", name = "chlorine", amount = 20}}, {"calcium-oxide", 1},
	results = {{"gold-plate", 10}, {"slag", 1}},
	subgroup = "raw-material"
},
--Scheelite Dissolution
{
	type = "recipe",
    name = "scheelite-dissolution",
	icon = "__xander-mod__/graphics/recipe/refining/scheelite-dissolution.png",
	icon_size = 32,
	category = "sluice",
	energy_required = 5,
	enabled = false,
	ingredients = {{"scheelite", 1}, {"sodium-hydroxide", 2}, {type = "fluid", name = "hydrogen-chloride", amount = 20}, 
		{type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{"tungsten-oxide", 1}, {"calcium-sulfate", 1}, {"salt", 2}, {type = "fluid", name = "waste-slurry", amount = 10}},
	subgroup = "raw-material"
},
--Cassiterite Slagging with Gold
{
	type = "recipe",
    name = "cassiterite-gold",
	icon = "__xander-mod__/graphics/recipe/refining/cassiterite-gold.png",
	icon_size = 32,
	category = "refining",
	energy_required = 200,
	enabled = false,
	ingredients = {{"granitic-ore", 20}, {"soda", 1}, {"borax", 1}},
	results = {{"cassiterite", 20}, {"gold-sponge", 2}, {"slag", 1}},
	subgroup = "raw-material"
},
--
--HEAVY SAND
--Chromite Slagging
{
	type = "recipe",
    name = "chromite-slagging",
	icon = "__xander-mod__/graphics/recipe/refining/chromite-slagging.png",
	icon_size = 32,
	category = "refining",
	energy_required = 80,
	enabled = false,
	ingredients = {{"chromite", 4}, {"soda", 8}, {type = "fluid", name = "oxygen", amount = 70}},
	results = {{"sodium-chromate", 8}, {"hematite", 2}, {type = "fluid", name = "flue-gas", amount = 80}},
	subgroup = "raw-material"
},
--Chromate Leaching and Reduction to Chromium(III) Oxide
{
	type = "recipe",
    name = "chromate-leaching",
	icon = "__xander-mod__/graphics/recipe/refining/chromate-leaching.png",
	icon_size = 32,
	category = "refining",
	energy_required = 10,
	enabled = false,
	ingredients = {{"sodium-chromate", 2}, {type = "fluid", name = "hydrogen-chloride", amount = 40}, {"coke", 3}},
	results = {{"chromium-oxide", 1}, {"salt", 4}, {type = "fluid", name = "carbon-monoxide", amount = 30}},
	subgroup = "raw-material"
},
--Chromium Reduction
{
	type = "recipe",
    name = "chromium-reduction",
	icon = "__xander-mod__/graphics/recipe/refining/chromium-reduction.png",
	icon_size = 32,
	category = "refining",
	energy_required = 10,
	enabled = false,
	ingredients = {{"chromium-oxide", 1}, {"magnesium-plate", 3}},
	results = {{"chromium-plate", 2}, {"magnesium-oxide", 3}},
	subgroup = "raw-material"
},
--Rutile Chlorination
{
	type = "recipe",
    name = "rutile-chlorination",
	icon = "__xander-mod__/graphics/recipe/refining/rutile-chlorination.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"rutile", 1}, {"coke", 1}, {type = "fluid", name = "chlorine", amount = 20}},
	results = {{type = "fluid", name = "titanium-tetrachloride", amount = 10}, {type = "fluid", name = "flue-gas", amount = 10}},
	subgroup = "raw-material"
},
--Pure Titanium Dioxide via Titanium Tetrachloride Hydrolysis
{
	type = "recipe",
    name = "titanium-oxide",
	icon = "__xander-mod__/graphics/recipe/refining/titanium-oxide.png",
	icon_size = 32,
	category = "refining",
	energy_required = 2,
	enabled = false,
	ingredients = {{type = "fluid", name = "titanium-tetrachloride", amount = 10}, {type = "fluid", name = "water", amount = 40}},
	results = {{"titanium-oxide", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 40}},
	subgroup = "raw-material"
},
--Kroll Process, Titanium
{
	type = "recipe",
    name = "kroll-titanium",
	icon = "__xander-mod__/graphics/recipe/refining/kroll-titanium.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{type = "fluid", name = "titanium-tetrachloride", amount = 10}, {"magnesium-plate", 2}},
	results = {{"titanium-sponge", 1}, {"magnesium-chloride", 2}},
	subgroup = "raw-material"
},
--Titanium Sponge Remelting
{
	type = "recipe",
    name = "titanium-remelting",
	icon = "__xander-mod__/graphics/recipe/refining/titanium-remelting.png",
	icon_size = 32,
	category = "forge",
	energy_required = 200,
	enabled = false,
	ingredients = {{"titanium-sponge", 20}, {"graphite-block", 1}},
	results = {{"titanium-plate", 20}, {"slag", 2}},
	subgroup = "raw-material"
},
--Zirconia Sand Chlorination
{
	type = "recipe",
    name = "zirconia-chlorination",
	icon = "__xander-mod__/graphics/recipe/refining/zirconia-chlorination.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"zirconia", 1}, {"coke", 1}, {type = "fluid", name = "chlorine", amount = 20}},
	results = {{"zirconium-tetrachloride", 1}, {type = "fluid", name = "flue-gas", amount = 10}},
	subgroup = "raw-material"
},
--Pure Zirconium Dioxide via Zirconium Tetrachloride Hydrolysis
{
	type = "recipe",
    name = "zirconium-oxide",
	icon = "__xander-mod__/graphics/recipe/refining/zirconium-oxide.png",
	icon_size = 32,
	category = "refining",
	energy_required = 2,
	enabled = false,
	ingredients = {{"zirconium-tetrachloride", 1}, {type = "fluid", name = "water", amount = 40}},
	results = {{"zirconium-oxide", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 40}},
	subgroup = "raw-material"
},
--Kroll Process, Zirconium
{
	type = "recipe",
    name = "kroll-zirconium",
	icon = "__xander-mod__/graphics/recipe/refining/kroll-zirconium.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"zirconium-tetrachloride", 1}, {"magnesium-plate", 2}},
	results = {{"zirconium-sponge", 1}, {"magnesium-chloride", 2}},
	subgroup = "raw-material"
},
--Zirconium Sponge Remelting
{
	type = "recipe",
    name = "zirconium-remelting",
	icon = "__xander-mod__/graphics/recipe/refining/zirconium-remelting.png",
	icon_size = 32,
	category = "forge",
	energy_required = 200,
	enabled = false,
	ingredients = {{"zirconium-sponge", 20}, {"graphite-block", 1}},
	results = {{"forging-zirconium", 5}, {"slag", 2}},
	subgroup = "raw-material"
},
--
--IRON ORE
--Base "iron-plate" placeholder (Crude Iron Smelting)
--Fluxed Iron Blast Smelting (more efficient yet still basic iron smelting)
{
	type = "recipe",
    name = "iron-plate-b",
	category = "basic-refining",
	energy_required = 32,
	enabled = false,
	ingredients = {{"iron-ore", 4}, {"limestone", 1}},
	result = "iron-plate",
	result_count = 8
},
--Raw Iron
{
	type = "recipe",
    name = "raw-iron",
	icon = "__xander-mod__/graphics/recipe/refining/raw-iron.png",
	icon_size = 32,
	category = "refining",
	energy_required = 100,
	enabled = false,
	ingredients = {{"hematite", 10}, {"coke", 15}, {"calcium-oxide", 2}},
	results = {{"raw-iron", 20}, {"slag", 2}, {type = "fluid", name = "flue-gas", amount = 150}},
	subgroup = "raw-material"
},
--Vanadium Slagging from Magnetite
{
	type = "recipe",
    name = "magnetite-vanadium-slagging",
	icon = "__xander-mod__/graphics/recipe/refining/magnetite-vanadium.png",
	icon_size = 32,
	category = "refining",
	energy_required = 40,
	enabled = false,
	ingredients = {{"vanadium-magnetite", 10}, {"soda", 2}, {"calcium-oxide", 2}},
	results = {{"vanadium-slag", 4}, {type = "fluid", name = "flue-gas", amount = 20}},
	subgroup = "raw-material"
},
--Vanadium Slagging from Crude Oil
{
	type = "recipe",
    name = "oil-vanadium-slagging",
	icon = "__xander-mod__/graphics/recipe/refining/oil-vanadium.png",
	icon_size = 32,
	category = "refining",
	energy_required = 40,
	enabled = false,
	ingredients = {{type = "fluid", name = "crude-oil", amount = 50}, {"soda", 2}, {"calcium-oxide", 2}, {type = "fluid", name = "oxygen", amount = 300}},
	results = {{"vanadium-slag", 2}, {type = "fluid", name = "flue-gas", amount = 300}},
	subgroup = "raw-material"
},
--Raw Iron Smelting with Vanadium Slag
{
	type = "recipe",
    name = "iron-vanadium",
	icon = "__xander-mod__/graphics/recipe/refining/iron-vanadium.png",
	icon_size = 32,
	category = "refining",
	energy_required = 200,
	enabled = false,
	ingredients = {{"vanadium-magnetite", 10}, {"soda", 1}, {"calcium-oxide", 1}},
	results = {{"raw-iron", 20}, {"vanadium-slag", 4}, {type = "fluid", name = "flue-gas", amount = 150}},
	subgroup = "raw-material"
},
--Vanadium Leaching out of Slag
{
	type = "recipe",
    name = "vanadium-leaching",
	icon = "__xander-mod__/graphics/recipe/refining/vanadium-leaching.png",
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
	ingredients = {{"vanadium-slag", 2}, {type = "fluid", name = "ammonia", amount = 20}, {type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{"ammonium-vanadate", 2}, {type = "fluid", name = "waste-slurry", amount = 20}},
	subgroup = "raw-material"
},
--Ammonium Vanadate Decomposition
{
	type = "recipe",
    name = "vanadate-decomposition",
	icon = "__xander-mod__/graphics/recipe/refining/vanadate-decomposition.png",
	icon_size = 32,
	category = "refining",
	energy_required = 10,
	enabled = false,
	ingredients = {{"ammonium-vanadate", 2}},
	results = {{"vanadium-oxide", 1}, {type = "fluid", name = "ammonia", amount = 10}},
	subgroup = "raw-material"
},
--Vanadium Reduction
{
	type = "recipe",
    name = "vanadium-reduction",
	icon = "__xander-mod__/graphics/recipe/refining/vanadium-reduction.png",
	icon_size = 32,
	category = "refining",
	energy_required = 10,
	enabled = false,
	ingredients = {{"vanadium-oxide", 1}, {"magnesium-plate", 5}},
	results = {{"vanadium-plate", 2}, {"magnesium-oxide", 5}},
	subgroup = "raw-material"
},
--
--LEAD ORE
--Crude Lead Plate
{
	type = "recipe",
    name = "smelting-lead",
	category = "smelting",
	energy_required = 4,
	ingredients = {{"lead-ore", 2}},
	result = "lead-plate"
},
--Galena Roasting
{
	type = "recipe",
    name = "galena-roasting",
	icon = "__xander-mod__/graphics/recipe/refining/galena-roasting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 10,
	enabled = false,
	ingredients = {{"galena", 2}, {type = "fluid", name = "oxygen", amount = 30}},
	results = {{"lead-oxide", 2}, {type = "fluid", name = "sulfur-dioxide", amount = 20}},
	subgroup = "raw-material"
},
--Lead Smelting
{
	type = "recipe",
    name = "lead-smelting",
	icon = "__xander-mod__/graphics/recipe/refining/lead-smelting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 50,
	enabled = false,
	ingredients = {{"lead-oxide", 10}, {"coke", 5}, {"soda", 1}},
	results = {{"lead-plate", 10}, {"slag", 1}, {type = "fluid", name = "flue-gas", amount = 50}},
	subgroup = "raw-material"
},
--Parkes Process Lead-Silver Extraction
{
	type = "recipe",
    name = "parkes-process",
	icon = "__xander-mod__/graphics/recipe/refining/parkes-process.png",
	icon_size = 32,
	category = "refining",
	energy_required = 100,
	enabled = false,
	ingredients = {{"lead-oxide", 10}, {"coke", 5}, {"calcium-oxide", 1}, {"zinc-plate", 1}},
	results = {{"lead-plate", 10}, {"slag", 1}, {type = "fluid", name = "flue-gas", amount = 50}, {"silver-sponge", 2}},
	subgroup = "raw-material"
},
--Silver Electrowinning
{
	type = "recipe",
    name = "silver-electrowinning",
	icon = "__xander-mod__/graphics/recipe/refining/silver-electrowinning.png",
	icon_size = 32,
	category = "electrolysis",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 100,
	enabled = false,
	ingredients = {{"silver-sponge", 10}, {type = "fluid", name = "nitric-acid", amount = 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"silver-plate", 10}, {"sludge", 1}, {type = "fluid", name = "gray-water", amount = 20}},
	subgroup = "raw-material"
},
--
--MINERAL WATER
--Boron Oxide
{
	type = "recipe",
    name = "boron-oxide",
	icon = "__xander-mod__/graphics/recipe/refining/boron-oxide.png",
	icon_size = 32,
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{"borax", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 20}, {type = "fluid", name = "water", amount = 50}},
	results = {{"boron-oxide", 10}, {"salt", 1}, {type = "fluid", name = "gray-water", amount = 50}},
	subgroup = "raw-material"
},
--
--NATURAL GAS
--Natural Gas Cryogenic Distillation
{
	type = "recipe",
    name = "gas-distillation",
	icon = "__xander-mod__/graphics/recipe/refining/gas-distillation.png",
	icon_size = 32,
	category = "oil-processing",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "natural-gas", amount = 40}},
	results = {{type = "fluid", name = "propylene", amount = 10}, {type = "fluid", name = "petroleum-gas", amount = 10}, 
		{type = "fluid", name = "methane", amount = 30}},
	subgroup = "raw-material"
},
--Advanced Natural Gas Cryogenic Distillation
{
	type = "recipe",
    name = "advanced-gas-distillation",
	icon = "__xander-mod__/graphics/recipe/refining/advanced-gas-distillation.png",
	icon_size = 32,
	category = "chemical-plant",
	energy_required = 40,
	enabled = false,
	ingredients = {{type = "fluid", name = "natural-gas", amount = 40}, {type = "fluid", name = "steam", amount = 10}},
	results = {{type = "fluid", name = "propylene", amount = 15}, {type = "fluid", name = "petroleum-gas", amount = 15}, 
		{type = "fluid", name = "methane", amount = 5}},
	subgroup = "raw-material"
},
--
--STONE
--Limestone Calcining
{
	type = "recipe",
    name = "limestone-calcining",
	icon = "__xander-mod__/graphics/recipe/refining/limestone-calcining.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"limestone", 1}},
	results = {{"calcium-oxide", 1}, {type = "fluid", name = "flue-gas", amount = 10}},
	subgroup = "raw-material"
},
--Magnesite Calcining
{
	type = "recipe",
    name = "magnesite-calcining",
	icon = "__xander-mod__/graphics/recipe/refining/magnesite-calcining.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"magnesite", 1}},
	results = {{"magnesium-oxide", 1}, {type = "fluid", name = "flue-gas", amount = 10}},
	subgroup = "raw-material"
},
--Magnesia Dissolution
{
	type = "recipe",
    name = "magnesia-dissolution",
	icon = "__xander-mod__/graphics/recipe/refining/magnesia-dissolution.png",
	icon_size = 32,
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 2,
	enabled = false,
	ingredients = {{"magnesium-oxide", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 20}},
	results = {{"magnesium-chloride", 1}},
	subgroup = "raw-material"
},
--SULFIDIC ORE
--Sphalerite Roasting
{
	type = "recipe",
    name = "sphalerite-roasting",
	icon = "__xander-mod__/graphics/recipe/refining/sphalerite-roasting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 10,
	enabled = false,
	ingredients = {{"sphalerite", 2}, {type = "fluid", name = "oxygen", amount = 30}},
	results = {{"zinc-oxide", 2}, {type = "fluid", name = "sulfur-dioxide", amount = 20}},
	subgroup = "raw-material"
},
--Zinc Electrowinning
{
	type = "recipe",
    name = "zinc-electrowinning",
	icon = "__xander-mod__/graphics/recipe/refining/zinc-electrowinning.png",
	icon_size = 32,
	category = "electrolysis",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 100,
	enabled = false,
	ingredients = {{"zinc-oxide", 10}, {type = "fluid", name = "sulfuric-acid", amount = 10}, {type = "fluid", name = "water", amount = 20}},
	results = {{"zinc-plate", 10}, {type = "fluid", name = "gray-water", amount = 20}},
	subgroup = "raw-material"
},
--Chalcopyrite Roasting
{
	type = "recipe",
    name = "chalcopyrite-roasting",
	icon = "__xander-mod__/graphics/recipe/refining/chalcopyrite-roasting.png",
	icon_size = 32,
	category = "refining",
	energy_required = 20,
	enabled = false,
	ingredients = {{"chalcopyrite", 2}, {type = "fluid", name = "oxygen", amount = 60}},
	results = {{"cuprous-oxide", 1}, {"fayalite-slag", 1}, {type = "fluid", name = "sulfur-dioxide", amount = 40}},
	subgroup = "raw-material"
},
--Fayalite Slag Cracking
{
	type = "recipe",
    name = "fayalite-cracking",
	icon = "__xander-mod__/graphics/recipe/refining/fayalite-cracking.png",
	icon_size = 32,
	category = "refining",
	energy_required = 20,
	enabled = false,
	ingredients = {{"fayalite-slag", 2}, {type = "fluid", name = "oxygen", amount = 10}},
	results = {{"hematite", 1}, {"sand", 1}},
	subgroup = "raw-material"
},
--
--URANIUM ORE
--Monazite Acid Conversion
{
	type = "recipe",
    name = "monazite-conversion",
	icon = "__xander-mod__/graphics/recipe/refining/monazite-conversion.png",
	icon_size = 32,
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{"monazite", 2}, {type = "fluid", name = "sulfuric-acid", amount = 20}, {type = "fluid", name = "ammonia", amount = 40}},
	results = {{"re-oxide", 2}, {type = "fluid", name = "phosphoric-acid", amount = 10}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-material"
},
--Rare Earth Metals Reduction
{
	type = "recipe",
    name = "re-reduction",
	icon = "__xander-mod__/graphics/recipe/refining/re-reduction.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"re-oxide", 1}, {"magnesium-plate", 2}},
	results = {{"re-plate", 1}, {"magnesium-oxide", 2}},
	subgroup = "raw-material"
},
--Urany Nitrade Decomposition and Fluorination
{
	type = "recipe",
    name = "uranium-hexafluoride",
	icon = "__xander-mod__/graphics/recipe/refining/uranium-hexafluoride.png",
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
	ingredients = {{"uranyl-nitrate", 1}, {type = "fluid", name = "hydrogen-fluoride", amount = 60}},
	results = {{"natural-uf6", 1}, {type = "fluid", name = "nitrogen-dioxide", amount = 10}, {type = "fluid", name = "waste-water", amount = 50}},
	subgroup = "raw-material"
},
--Base "uranium-processing" placeholder
--Weapons-Grade Uranium Enrichment
{
	type = "recipe",
    name = "weapons-enrichment",
	icon = "__xander-mod__/graphics/recipe/refining/weapons-enrichment.png",
	icon_size = 32,
	category = "centrifuging",
	energy_required = 500,
	enabled = false,
	ingredients = {{"fuel-uf6", 5}},
	results = {{"weapons-uf6", 1}, {"238-uf6", 1}},
	subgroup = "raw-material"
},
--Base kovarex-enrichment-process" placeholder
--Fuel-Grade Uranium Hexafluoride Hydrolysis
{
	type = "recipe",
    name = "fuel-hydrolysis",
	icon = "__xander-mod__/graphics/recipe/refining/fuel-hydrolysis.png",
	icon_size = 32,
	category = "refining",
	energy_required = 2,
	enabled = false,
	ingredients = {{"fuel-uf6", 1}, {type = "fluid", name = "water", amount = 100}, {type = "fluid", name = "hydrogen", amount = 10}},
	results = {{"fuel-uo2", 1}, {type = "fluid", name = "hydrogen-fluoride", amount = 40}, {type = "fluid", name = "gray-water", amount = 100}},
	subgroup = "raw-material"
},
--238-Uranium Hexafluoride Hydrolysis
{
	type = "recipe",
    name = "238-hydrolysis",
	icon = "__xander-mod__/graphics/recipe/refining/238-hydrolysis.png",
	icon_size = 32,
	category = "refining",
	energy_required = 2,
	enabled = false,
	ingredients = {{"238-uf6", 1}, {type = "fluid", name = "water", amount = 100}, {type = "fluid", name = "hydrogen", amount = 10}},
	results = {{"238-uo2", 1}, {type = "fluid", name = "hydrogen-fluoride", amount = 40}, {type = "fluid", name = "gray-water", amount = 100}},
	subgroup = "raw-material"
},
--Weapons-Grade Uranium Hexafluoride Hydrolysis
{
	type = "recipe",
    name = "weapons-hydrolysis",
	icon = "__xander-mod__/graphics/recipe/refining/weapons-hydrolysis.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"weapons-uf6", 1}, {type = "fluid", name = "water", amount = 100}, {type = "fluid", name = "hydrogen", amount = 10}},
	results = {{"weapons-uo2", 1}, {type = "fluid", name = "hydrogen-fluoride", amount = 40}, {type = "fluid", name = "gray-water", amount = 100}},
	subgroup = "raw-material"
},
--238-Uranium Reduction
{
	type = "recipe",
    name = "238-reduction",
	icon = "__xander-mod__/graphics/recipe/refining/238-reduction.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"238-uo2", 1}, {"magnesium-plate", 2}},
	results = {{"uranium-238", 1}, {"magnesium-oxide", 2}},
	subgroup = "raw-material"
},
--Weapons-Grade Uranium Reduction
{
	type = "recipe",
    name = "weapons-reduction",
	icon = "__xander-mod__/graphics/recipe/refining/weapons-reduction.png",
	icon_size = 32,
	category = "refining",
	energy_required = 5,
	enabled = false,
	ingredients = {{"weapons-uo2", 1}, {"magnesium-plate", 2}},
	results = {{"uranium-235", 1}, {"magnesium-oxide", 2}},
	subgroup = "raw-material"
},
--
--WATER
--Magnesium Chloride Melt Electrolysis
{
	type = "recipe",
    name = "magnesium-electrolysis",
	icon = "__xander-mod__/graphics/recipe/refining/magnesium-electrolysis.png",
	icon_size = 32,
	category = "refining",
	energy_required = 800,
	enabled = false,
	ingredients = {{"magnesium-chloride", 40}, {"graphite-block", 1}},
	results = {{"magnesium-plate", 40}, {type = "fluid", name = "chlorine", amount = 400}},
	subgroup = "raw-material"
},
--
--AIR
--Air Distillation A (N2/O2 Only)
{
	type = "recipe",
    name = "air-distillation-a",
	icon = "__xander-mod__/graphics/recipe/refining/air-distillation-a.png",
	icon_size = 32,
	category = "oil-processing",
	energy_required = 10,
	enabled = false,
	ingredients = {{type = "fluid", name = "air", amount = 50}},
	results = {{type = "fluid", name = "nitrogen", amount = 40}, {type = "fluid", name = "oxygen", amount = 10}},
	subgroup = "raw-material"
},
--Air Distillation B (N2/O2 + CO2)
{
	type = "recipe",
    name = "air-distillation-b",
	icon = "__xander-mod__/graphics/recipe/refining/air-distillation-b.png",
	icon_size = 32,
	category = "oil-processing",
	energy_required = 200,
	enabled = false,
	ingredients = {{type = "fluid", name = "air", amount = 500}},
	results = {{type = "fluid", name = "nitrogen", amount = 400}, {type = "fluid", name = "oxygen", amount = 100}, 
		{type = "fluid", name = "carbon-dioxide", amount = 10}},
	subgroup = "raw-material"
},
--Water Condensation from Air
{
	type = "recipe",
    name = "water-condensation",
	category = "oil-processing",
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "air", amount = 100}},
	results = {{type = "fluid", name = "distilled-water", amount = 20}}
},
--
--WOOD
--Crude Charcoal Pyrolysis
{
	type = "recipe",
    name = "charcoal",
	category = "kiln",
	energy_required = 4,
	ingredients = {{"raw-wood", 4}},
	result = "charcoal",
	result_count = 4
},
--Crude Soda (wood ash)
{
	type = "recipe",
    name = "kiln-soda",
	category = "kiln",
	energy_required = 2,
	enabled = false,
	ingredients = {{"charcoal", 2}},
	result = "soda"
}

})