--MATERIALS
--==========
--Milled Resources
xm_milled_resource_recipes = {}
local xm_milled_resource_recipes_names = {"milled-copper-ore", "milled-igneous-sulfide", "milled-iron-ore", "milled-bauxite", "milled-nickeliferous-laterite", "milled-magnetic", "milled-massive-sulfide", "milled-phosphorite", 
	"quartz-sand", "milled-skarn", "limestone", "quartzite", "dolerite", "milled-uranium-ore", "oceanic-salt"}
local xm_milled_resource_recipes_ingredients = {{{"copper-ore", 1}}, {{"igneous-sulfide", 1}}, {{"iron-ore", 1}}, {{"laterite", 1}}, {{"laterite", 1}}, {{"magnetic", 1}}, {{"massive-sulfide", 1}}, {{"phosphorite", 1}}, 
	{{"sand", 1}}, {{"skarn", 1}}, {{"stone", 1}}, {{"stone", 1}}, {{"stone", 1}}, {{"uranium-ore", 1}}, {{type = "fluid", name = "water", amount = 10}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_milled_resource_recipes_names) do
	table.insert(xm_milled_resource_recipes, {name, true, nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 2, false, xm_milled_resource_recipes_ingredients[i], {{name, 1}}, nil})
	--name, all originate from XM, no dedicated icon, recipe category = "sluice", tint = {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, time = 2, 
	--enabled = false, ingredients from list, results = {{name, 1}}, no dedicated subgroup
end

--Concentrates
xm_concentrate_recipes = {}
local xm_concentrate_recipes_names = {"chalcocite", "molybdenite", "saltpeter", "borax", "lithium-concentrate", "chalcopyrite", "pentlandite", "hematite", "pyrolusite", "clay-a", "clay-b", "magnetite", "chromite", "sphalerite", 
	"galena", "hydroxylapatite", "fluorite", "ilmenite", "zircon", "cassiterite", "scheelite", "monazite", "pitchblende"}
local xm_concentrate_recipes_icons = {"__xander-mod__/graphics/recipe/raw/chalcocite-washing.png", "__xander-mod__/graphics/recipe/raw/chalcocite-washing.png", "__xander-mod__/graphics/recipe/salt/water-saltpeter.png", 
	"__xander-mod__/graphics/recipe/raw/borax-evaporation.png", "__xander-mod__/graphics/recipe/raw/lithium-precipitation.png", "__xander-mod__/graphics/recipe/raw/chalcopyrite-washing.png", 
	"__xander-mod__/graphics/recipe/raw/nickel-oxide.png", "__xander-mod__/graphics/recipe/raw/hematite-washing.png", "__xander-mod__/graphics/recipe/raw/hematite-washing.png", nil, 
	"__xander-mod__/graphics/recipe/raw/bauxite-clay.png", "__xander-mod__/graphics/recipe/raw/vanadium-magnetite.png", "__xander-mod__/graphics/recipe/raw/chromite-flotation.png", 
	"__xander-mod__/graphics/recipe/raw/sphalerite-flotation.png", "__xander-mod__/graphics/recipe/raw/galena-washing.png", "__xander-mod__/graphics/recipe/raw/phosphate-flotation.png", 
	"__xander-mod__/graphics/recipe/raw/fluorite-flotation.png", "__xander-mod__/graphics/recipe/raw/rutile-flotation.png", "__xander-mod__/graphics/recipe/raw/zirconia-flotation.png", 
	"__xander-mod__/graphics/recipe/raw/cassiterite-washing.png", "__xander-mod__/graphics/recipe/raw/scheelite-flotation.png", "__xander-mod__/graphics/recipe/raw/monazite-flotation.png", 
	"__xander-mod__/graphics/recipe/raw/monazite-flotation.png"}
local xm_concentrate_recipes_categories = {"sluice", "sluice", "sluice", "refining", "chemistry", "sluice", "sluice", "sluice", "sluice", "basic-sluice", "sluice", "sluice", "sluice", "sluice", "sluice", "sluice", "sluice", 
	"sluice", "sluice", "sluice", "sluice", "sluice", "sluice"}
local xm_concentrate_recipes_times = {20, 40, 4, 40, 10, 20, 20, 20, 20, 1, 20, 20, 40, 40, 20, 40, 40, 40, 40, 20, 40, 40, 20}
local xm_concentrate_recipes_enableds = {false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false}
local xm_concentrate_recipes_ingredients = {{{"milled-copper-ore", 10}, {type = "fluid", name = "water", amount = 50}}, {{"milled-copper-ore", 10}, {type = "fluid", name = "water", amount = 50}}, 
	{{"evaporites", 10}, {type = "fluid", name = "water", amount = 50}, {"soda", 1}}, {{"evaporites", 20}, {type = "fluid", name = "water", amount = 50}}, 
	{{"evaporites", 10}, {type = "fluid", name = "water", amount = 100}, {"calcium-oxide", 1}}, {{"milled-igneous-sulfide", 10}, {type = "fluid", name = "water", amount = 50}}, 
	{{"milled-nickeliferous-laterite", 10}, {type = "fluid", name = "water", amount = 50}}, {{"milled-iron-ore", 10}, {type = "fluid", name = "water", amount = 50}}, 
	{{"milled-iron-ore", 10}, {type = "fluid", name = "water", amount = 50}}, {{"laterite", 2}}, {{"milled-bauxite", 10}, {type = "fluid", name = "water", amount = 50}}, {{"milled-magnetic", 10}}, 
	{{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"milled-massive-sulfide", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, 
	{{"milled-massive-sulfide", 10}, {type = "fluid", name = "water", amount = 50}}, {{"phosphorite", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, 
	{{"phosphorite", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, 
	{{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"milled-skarn", 10}, {type = "fluid", name = "water", amount = 50}}, 
	{{"milled-skarn", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"milled-uranium-ore", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, 
	{{"milled-uranium-ore", 10}, {type = "fluid", name = "water", amount = 50}}}
local xm_concentrate_recipes_results = {{{"chalcocite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, {{"molybdenite", 5}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, 
	{{"saltpeter", 5}, {type = "fluid", name = "gray-water", amount = 50}}, {{"borax", 1}, {type = "fluid", name = "distilled-water", amount = 50}}, 
	{{"lithium-concentrate", 2}, {"calcium-chloride", 1}, {type = "fluid", name = "gray-water", amount = 50}}, {{"chalcopyrite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, 
	{{"nickel-oxide", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, {{"hematite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 5}}, 
	{{"pyrolusite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 5}}, {{"clay", 1}}, {{"clay", 10}, {type = "fluid", name = "gray-water", amount = 50}}, {{"magnetite", 10}, {"gravel", 2}}, 
	{{"chromite", 10}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, {{"sphalerite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, 
	{{"galena", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, {{"hydroxylapatite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, 
	{{"fluorite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, {{"ilmenite", 10}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, 
	{{"zircon", 2}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, {{"cassiterite", 10}, {"quartz-sand", 2}, {type = "fluid", name = "gray-water", amount = 50}}, 
	{{"scheelite", 2}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, {{"monazite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, 
	{{"pitchblende", 5}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_concentrate_recipes_names) do
	table.insert(xm_concentrate_recipes, {name, true, xm_concentrate_recipes_icons[i], xm_concentrate_recipes_categories[i], {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 
		xm_concentrate_recipes_times[i], xm_concentrate_recipes_enableds[i], xm_concentrate_recipes_ingredients[i], xm_concentrate_recipes_results[i], "concentrate"})
end

--Plates
xm_plate_recipes = {}
local xm_plate_recipes_names = {"copper-plate", "bronze-plate", "iron-plate", "steel-plate"}
local xm_plate_recipes_news = {false, true, false, false}
local xm_plate_recipes_categories = {"kiln", "kiln", "smelting", "smelting"}
local xm_plate_recipes_times = {4, 10, 4, 8}
local xm_plate_recipes_enableds = {true, true, true, false}
local xm_plate_recipes_ingredients = {{{"copper-ore", 1}}, {{"copper-plate", 4}, {"tin-ingot", 1}}, {{"iron-ore", 1}}, {{"iron-plate", 4}}}
local xm_plate_recipes_results = {{{"copper-plate", 1}}, {{"bronze-plate", 4}}, {{"iron-plate", 1}}, {{"steel-plate", 1}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_plate_recipes_names) do
	table.insert(xm_plate_recipes, {name, xm_plate_recipes_news[i], nil, xm_plate_recipes_categories[i], nil, xm_plate_recipes_times[i], xm_plate_recipes_enableds[i], xm_plate_recipes_ingredients[i], xm_plate_recipes_results[i], nil})
end

--Ingots
xm_ingot_recipes = {}
local xm_ingot_recipes_names = {"aluminum-ingot", "chromium-ingot", "cobalt-ingot", "gold-ingot", "lead-ingot", "magnesium-ingot", "nickel-ingot", "platinum-ingot", "re-ingot", "silver-ingot", "solder-1-ingot", 
	"solder-2-ingot", "silicon-ingot", "tin-ingot", "titanium-ingot", "tungsten-ingot", "u-238-ingot", "vanadium-ingot", "zinc-ingot"}
local xm_ingot_recipes_icons = {"__xander-mod__/graphics/recipe/refining/hall-heroult.png", "__xander-mod__/graphics/recipe/refining/chromium-reduction.png", "__xander-mod__/graphics/recipe/refining/cobalt-electrowinning.png", 
	"__xander-mod__/graphics/recipe/refining/miller-process.png", nil, "__xander-mod__/graphics/recipe/refining/magnesium-electrolysis.png", nil, "__xander-mod__/graphics/recipe/refining/platinum-smelting.png", 
	"__xander-mod__/graphics/recipe/refining/re-reduction.png", "__xander-mod__/graphics/recipe/refining/silver-electrowinning.png", nil, nil, "__xander-mod__/graphics/recipe/refining/acheson-silicon.png", nil, 
	"__xander-mod__/graphics/recipe/refining/titanium-remelting.png", nil, "__xander-mod__/graphics/recipe/refining/238-reduction.png", "__xander-mod__/graphics/recipe/refining/vanadium-reduction.png", 
	"__xander-mod__/graphics/recipe/refining/zinc-electrowinning.png"}
local xm_ingot_recipes_categories = {"refining", "refining", "electrolysis", "forge", "kiln", "refining", "basic-refining", "forge", "refining", "electrolysis", "smelting", "forge", "refining", "kiln", "forge", "forge", 
	"refining", "refining", "electrolysis"}
local xm_ingot_recipes_tints = {nil, nil, {primary = {r = 0.000, g = 0.110, b = 0.588}, secondary = {r = 0.564, g = 0.795, b = 0.000}, tertiary = {r = 0.678, g = 0.565, b = 0.478}}, nil, nil, nil, nil, nil, nil, 
	{primary = {r = 0.000, g = 0.110, b = 0.588}, secondary = {r = 0.564, g = 0.795, b = 0.000}, tertiary = {r = 0.678, g = 0.565, b = 0.478}}, nil, nil, nil, nil, nil, nil, nil, nil, 
	{primary = {r = 0.000, g = 0.110, b = 0.588}, secondary = {r = 0.564, g = 0.795, b = 0.000}, tertiary = {r = 0.678, g = 0.565, b = 0.478}}}
local xm_ingot_recipes_times = {800, 10, 100, 50, 4, 800, 8, 100, 5, 100, 5, 10, 100, 4, 200, 10, 5, 10, 100}
local xm_ingot_recipes_enableds = {false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false}
local xm_ingot_recipes_ingredients = {{{"aluminum-oxide", 40}, {"graphite-block", 15}, {"cryolite-mixture", 4}}, {{"chromium-oxide", 1}, {"magnesium-ingot", 3}}, 
{{"cobalt-oxide", 10}, {type = "fluid", name = "sulfuric-acid", amount = 10}, {type = "fluid", name = "water", amount = 50}}, {{"gold-sponge", 10}, {type = "fluid", name = "chlorine", amount = 20}, {"calcium-oxide", 1}}, 
{{"massive-sulfide", 2}}, {{"magnesium-chloride", 40}, {"graphite-block", 1}}, {{"igneous-sulfide", 2}, {"limestone", 1}}, {{"platinum-sponge", 20}, {"borax", 1}, {"calcium-oxide", 1}}, 
{{"re-oxide", 1}, {"magnesium-ingot", 2}}, {{"silver-sponge", 10}, {type = "fluid", name = "nitric-acid", amount = 10}, {type = "fluid", name = "water", amount = 20}}, {{"tin-ingot", 3}, {"lead-ingot", 2}}, 
{{"tin-ingot", 7}, {"copper-plate", 2}, {"silver-ingot", 1}}, {{"quartz-sand", 20}, {"graphite-block", 1}, {"coke", 16}}, {{"skarn", 2}}, {{"titanium-sponge", 20}, {"graphite-block", 1}}, {{"tungsten-powder", 1}}, 
{{"238-uo2", 1}, {"magnesium-ingot", 2}}, {{"vanadium-oxide", 1}, {"magnesium-ingot", 5}}, {{"zinc-oxide", 10}, {type = "fluid", name = "sulfuric-acid", amount = 10}, {type = "fluid", name = "water", amount = 20}}}
local xm_ingot_recipes_results = {{{"aluminum-ingot", 80}, {type = "fluid", name = "flue-gas", amount = 600}}, {{"chromium-ingot", 2}, {"magnesium-oxide", 3}}, 
{{"cobalt-ingot", 10}, {type = "fluid", name = "waste-water", amount = 50}}, {{"gold-ingot", 10}, {"slag", 1}}, {{"lead-ingot", 1}}, {{"magnesium-ingot", 40}, {type = "fluid", name = "chlorine", amount = 400}}, 
{{"nickel-ingot", 1}}, {{"platinum-ingot", 20}, {"slag", 2}}, {{"re-ingot", 1}, {"magnesium-oxide", 2}}, {{"silver-ingot", 10}, {"sludge", 1}, {type = "fluid", name = "gray-water", amount = 20}}, {{"solder-1-ingot", 5}}, 
{{"solder-2-ingot", 10}}, {{"silicon-ingot", 20}, {type = "fluid", name = "flue-gas", amount = 200}}, {{"tin-ingot", 1}}, {{"titanium-ingot", 20}, {"slag", 2}}, {{"tungsten-ingot", 1}}, 
{{"uranium-238-ingot", 1}, {"magnesium-oxide", 2}}, {{"vanadium-ingot", 2}, {"magnesium-oxide", 5}}, {{"zinc-ingot", 10}, {type = "fluid", name = "gray-water", amount = 20}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_ingot_recipes_names) do
	table.insert(xm_ingot_recipes, {name, true, xm_ingot_recipes_icons[i], xm_ingot_recipes_categories[i], xm_ingot_recipes_tints[i], xm_ingot_recipes_times[i], xm_ingot_recipes_enableds[i], xm_ingot_recipes_ingredients[i], xm_ingot_recipes_results[i], "ingot"})
end

--Buiding Materials
xm_build_recipes = {}
local xm_build_recipes_names = {"stone-brick", "brick-clay-a", "brick-clay-b", "brick-clay-graphite-a", "brick-clay-graphite-b", "brick-spinel", "brick-zirconia", "cement-a", "cement-b", "concrete", "hazard-concrete", 
	"reverse-hazard", "basalt-a", "basalt-b", "fused-quartz", "glass-a", "glass-b", "landfill", "landfill-b", "modified-a", "modified-b"}
local xm_build_recipes_news = {false, true, true, true, true, true, true, true, true, false, false, true, true, true, true, true, true, false, true, true, true}
local xm_build_recipes_categories = {"basic-machine", "kiln", "forge", "smelting", "forge", "forge", "forge", "refining", "refining", "sluice", "crafting", "crafting", "forge", "forge", "forge", "smelting", "forge", "sluice", 
	"sluice", "sluice", "sluice"}
local xm_build_recipes_tints = {nil, nil, nil, nil, nil, nil, nil, nil, nil, {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 
	nil, nil, nil, nil, nil, nil, nil, {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 
	{primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, nil, nil}
local xm_build_recipes_times = {2, 4, 20, 4, 4, 5, 100, 20, 20, 10, 0.1, 0.1, 50, 50, 5, 40, 200, 1, 1, 4, 4}
local xm_build_recipes_enableds = {true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false}
local xm_build_recipes_ingredients = {{{"stone", 2}}, {{"clay", 1}}, {{"clay", 8}, {"sand", 2}, {"calcium-oxide", 1}}, {{"clay", 1}, {"graphite-powder", 2}}, {{"clay", 1}, {"graphite-powder", 2}, {"sand", 1}}, 
	{{"magnesium-oxide", 1}, {"chromium-oxide", 1}}, {{"zirconium-oxide", 10}, {"re-oxide", 1}}, {{"calcium-oxide", 5}, {"sand", 1}, {"laterite", 1}}, {{"calcium-oxide", 2}, {"slag", 1}, {"laterite", 1}}, 
	{{"modified", 6}, {"sand", 3}, {"cement-powder", 4}, {type = "fluid", name = "water", amount = 20}, {"rod-2", 1}}, {{"concrete", 10}}, {{"hazard-concrete", 10}}, 
	{{"sand", 10}, {"aluminum-oxide", 2}, {"magnesium-oxide", 2}, {"calcium-oxide", 2}, {"hematite", 1}, {"rod-3", 2}}, {{"sand", 8}, {"aluminum-oxide", 2}, {"magnesium-oxide", 2}, {"slag", 2}, {"hematite", 1}, {"rod-3", 2}}, 
	{{"sand", 1}}, {{"sand", 10}, {"soda", 1}, {"limestone", 1}, {"saltpeter", 1}}, {{"sand", 20}, {"boron-oxide", 1}, {"calcium-oxide", 2}, {"aluminum-oxide", 1}}, {{"stone", 6}, {"modified", 20}, {"sand", 3}, {"clay", 2}}, 
	{{"slag", 6}, {"modified", 20}, {"sand", 3}, {"clay", 2}}, {{"stone", 1}, {"gravel", 1}}, {{"slag", 1}, {"gravel", 1}}}
local xm_build_recipes_results = {{{"stone-brick", 1}}, {{"brick-clay", 1}}, {{"brick-clay", 10}}, {{"brick-clay-graphite", 1}}, {{"brick-clay-graphite", 2}}, {{"brick-spinel", 1}}, {{"brick-zirconia", 10}}, 
	{{"cement-powder", 5}}, {{"cement-powder", 5}}, {{"concrete", 10}}, {{"hazard-concrete", 10}}, {{"concrete", 10}}, {{"fused-basalt", 10}}, {{"fused-basalt", 10}}, {{"fused-quartz", 1}}, {{"glass", 10}}, {{"glass", 20}}, 
	{{"landfill", 1}}, {{"landfill", 1}}, {{"modified", 4}}, {{"modified", 4}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_build_recipes_names) do
	table.insert(xm_build_recipes, {name, xm_build_recipes_news[i], nil, xm_build_recipes_categories[i], xm_build_recipes_tints[i], xm_build_recipes_times[i], xm_build_recipes_enableds[i], xm_build_recipes_ingredients[i], xm_build_recipes_results[i], nil})
end


--PARTS
--==========
--Mechanical
xm_mechanical_recipes = {}
xm_mechanical_recipes_names = {"iron-gear-wheel", "gear-2", "gear-3", "gear-4", "bearing-1", "bearing-2", "bearing-3", "iron-stick", "rod-2", "rod-3", "rod-4", "shaft-0", "shaft-1", "shaft-2", "shaft-3"}
xm_mechanical_recipes_news = {false, true, true, true, true, true, true, false, true, true, true, true, true, true, true}
xm_mechanical_recipes_categories = {"basic-machine", "machine", "machine", "machine", "machine", "machine", "forge", "basic-machine", "machine", "machine", "machine", "basic-machine", "machine", "machine", "machine"}
xm_mechanical_recipes_times = {5, 10, 10, 10, 2, 8, 8, 2, 2, 4, 4, 1, 0.5, 1, 2}
xm_mechanical_recipes_enableds = {true, false, false, false, false, false, false, true, false, false, false, true, false, false, false}
xm_mechanical_recipes_ingredients = {{{"blank-1", 1}}, {{"blank-2", 1}}, {{"blank-3", 1}}, {{"blank-4", 1}}, {{"bronze-plate", 1}, {"graphite-powder", 1}}, 
	{{"forging-alloy", 1}, {"graphite-powder", 2}, {type = "fluid", name = "lubricant", amount = 10}}, {{"silicon-nitride", 1}, {"plastic-pellets", 1}, {type = "fluid", name = "lubricant", amount = 10}}, {{"iron-plate", 1}}, 
	{{"forging-steel", 1}}, {{"forging-alloy", 1}}, {{"forging-titanium", 1}}, {{"iron-stick", 3}, {"lead-ingot", 1}}, {{"rod-2", 1}, {"bearing-1", 2}}, {{"rod-3", 1}, {"bearing-2", 2}}, {{"rod-4", 1}, {"bearing-3", 2}}}
xm_mechanical_recipes_results = {{{"iron-gear-wheel", 1}}, {{"gear-2", 1}}, {{"gear-3", 1}}, {{"gear-4", 1}}, {{"bearing-1", 2}}, {{"bearing-2", 4}}, {{"bearing-3", 2}}, {{"iron-stick", 1}}, {{"rod-2", 2}}, {{"rod-3", 2}}, 
	{{"rod-4", 2}}, {{"shaft-0", 2}}, {{"shaft-1", 1}}, {{"shaft-2", 1}}, {{"shaft-3", 1}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_mechanical_recipes_names) do
	table.insert(xm_mechanical_recipes, {name, xm_mechanical_recipes_news[i], nil, xm_mechanical_recipes_categories[i], nil, xm_mechanical_recipes_times[i], xm_mechanical_recipes_enableds[i], xm_mechanical_recipes_ingredients[i], xm_mechanical_recipes_results[i], nil})
end

--Assembly
xm_assembly_recipes = {}
xm_assembly_recipes_names = {"mechanical-steam-engine", "piston-cylinder", "mechanism-0", "mechanism-1", "mechanism-2", "mechanism-3", "engine-unit", "wheel-1", "wheel-2", "flying-robot-frame", "flying-robot-frame-2", 
	"tooling-1-a", "tooling-1-b", "tooling-1-c", "tooling-2", "tooling-3", "control-1", "control-2", "control-3", "lasing-1", "lasing-2", "lasing-3"}
xm_assembly_recipes_news = {true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true}
xm_assembly_recipes_categories = {"basic-crafting", "basic-crafting", "basic-crafting", "crafting", "crafting-with-fluid", "crafting-with-fluid", "crafting", "crafting", "forge", "crafting", "crafting-with-fluid", 
	"basic-machine", "machine", "machine", "machine", "machine", "crafting", "advanced-crafting", "advanced-crafting", "crafting", "advanced-crafting", "advanced-crafting"}
xm_assembly_recipes_times = {1, 2, 1, 4, 4, 5, 5, 4, 4, 10, 20, 2, 4, 5, 4, 5, 2, 4, 5, 5, 8, 10}
xm_assembly_recipes_enableds = {true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false}
xm_assembly_recipes_ingredients = {{{"mechanism-0", 1}, {"pipe-copper", 2}, {"forging-iron", 1}}, {{"forging-iron", 1}, {"pipe-steel", 2}}, {{"forging-iron", 1}, {"shaft-0", 1}, {"iron-gear-wheel", 2}, {"bronze-plate", 2}}, 
	{{"forging-iron", 1}, {"shaft-1", 2}, {"iron-gear-wheel", 1}, {"gear-3", 1}}, {{"forging-aluminum", 1}, {"shaft-2", 2}, {"gear-2", 2}, {"gear-3", 2}, {type = "fluid", name = "lubricant", amount = 10}}, 
	{{"forging-titanium", 1}, {"shaft-3", 2}, {"gear-4", 4}, {"plastic-bar", 2}, {type = "fluid", name = "lubricant", amount = 10}}, {{"piston-cylinder", 1}, {"mechanism-1", 1}, {"rubber", 2}}, 
	{{"forging-steel", 1}, {"forging-iron", 1}, {"steel-plate", 2}, {"bearing-1", 4}}, {{"forging-alloy", 1}, {"steel-plate", 1}, {"silicon-carbide", 1}, {"bearing-2", 2}}, 
	{{"battery-2", 1}, {"control-2", 1}, {"forging-aluminum", 1}, {"motor-3", 1}}, 
	{{"battery-3", 1}, {"control-3", 1}, {"forging-titanium", 2}, {"motor-3", 2}, {"fiber-carbon", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}}, {{"steel-plate", 4}, {"stone-brick", 10}, {"wood", 4}}, 
	{{"forging-steel", 1}, {"silicon-carbide", 4}, {type = "fluid", name = "uncured-resol", amount = 20}}, 
	{{"forging-steel", 1}, {"silicon-carbide", 4}, {type = "fluid", name = "uncured-epoxy", amount = 10}, {"fiber-carbon", 1}}, {{"forging-alloy", 1}, {"tungsten-cermet", 4}, {"aluminum-oxide", 2}, {"glass", 2}}, 
	{{"forging-alloy", 2}, {"nitride-block", 4}, {"boule-diamond", 2}, {"brass-plate", 2}}, {{"electronic-circuit", 4}, {"wire-copper", 8}, {"wire-tinned", 2}}, 
	{{"advanced-circuit", 4}, {"electronic-circuit", 4}, {"wire-tinned", 8}, {"rubber", 4}, {"cable-insulated", 4}}, 
	{{"processing-unit", 4}, {"advanced-circuit", 4}, {"wire-tinned", 16}, {"wire-gold", 8}, {"plastic-bar", 4}, {"cable-insulated", 2}}, 
	{{"crystal-ruby", 1}, {"crystal-quartz", 5}, {"small-lamp", 2}, {"control-2", 2}, {"forging-stainless", 2}, {"aluminum-plate", 5}}, 
	{{type = "fluid", name = "carbon-dioxide", amount = 50}, {"crystal-corundum", 5}, {"lamp-2", 2}, {"control-3", 2}, {"forging-alloy", 2}, {"copper-plate", 5}}, 
	{{"crystal-yag", 1}, {"crystal-diamond", 5}, {"lamp-2", 4}, {"control-3", 4}, {"forging-titanium", 4}, {"silver-plate", 10}}}
xm_assembly_recipes_results = {{{"mechanical-steam-engine", 1}}, {{"piston-cylinder", 1}}, {{"mechanism-0", 1}}, {{"mechanism-1", 1}}, {{"mechanism-2", 1}}, {{"mechanism-3", 1}}, {{"engine-unit", 1}}, {{"wheel-1", 2}}, 
	{{"wheel-2", 1}}, {{"flying-robot-frame", 1}}, {{"flying-robot-frame-2", 1}}, {{"tooling-1", 1}}, {{"tooling-1", 1}}, {{"tooling-1", 1}}, {{"tooling-2", 1}}, {{"tooling-3", 1}}, {{"control-1", 1}}, {{"control-2", 1}}, 
	{{"control-3", 1}}, {{"lasing-1", 1}}, {{"lasing-2", 1}}, {{"lasing-3", 1}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_assembly_recipes_names) do
	table.insert(xm_assembly_recipes, {name, xm_assembly_recipes_news[i], nil, xm_assembly_recipes_categories[i], nil, xm_assembly_recipes_times[i], xm_assembly_recipes_enableds[i], xm_assembly_recipes_ingredients[i], xm_assembly_recipes_results[i], nil})
end


--PRODUCTION
--==========
--Tools
xm_tool_recipes = {}
xm_tool_recipes_names = {"titanium-axe", "axe-1", "iron-axe", "steel-axe", "axe-4", "axe-5", "axe-6", "repair-pack", "repair-pack-2", "repair-pack-3"}
xm_tool_recipes_news = {true, true, false, false, true, true, true, false, true, true}
xm_tool_recipes_times = {1, 1, 1, 2, 4, 5, 5, 2, 2, 4}
xm_tool_recipes_enableds = {true, true, true, false, false, false, false, false, false, false}
xm_tool_recipes_ingredients = {{{"raw-wood", 4}, {"forging-titanium", 5}}, {{"wood", 4}, {"bronze-plate", 4}}, {{"wood", 4}, {"iron-plate", 4}}, {{"rod-2", 1}, {"forging-steel", 5}, {"wood", 4}}, 
	{{"rod-2", 1}, {"forging-alloy", 5}, {"rubber", 4}}, {{"rod-4", 1}, {"forging-alloy", 5}, {"rubber", 4}, {"tungsten-cermet", 5}}, {{"rod-4", 1}, {"forging-alloy", 5}, {"rubber", 4}, {"nitride-block", 5}}, 
	{{"tooling-1", 1}, {"iron-gear-wheel", 1}, {"bronze-plate", 2}, {"electronic-circuit", 2}}, {{"tooling-2", 1}, {"gear-3", 1}, {"forging-steel", 1}, {"advanced-circuit", 2}, {"rubber", 4}, {"concrete", 4}}, 
	{{"tooling-3", 1}, {"gear-4", 2}, {"forging-titanium", 1}, {"processing-unit", 2}, {"plastic-bar", 4}, {"fused-basalt", 4}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_tool_recipes_names) do
	table.insert(xm_tool_recipes, {name, xm_tool_recipes_news[i], nil, "crafting", nil, xm_tool_recipes_times[i], xm_tool_recipes_enableds[i], xm_tool_recipes_ingredients[i], {{name, 1}}, nil})
end

--Furnace Placer Items
xm_furnace_recipes = {}
local xm_furnace_recipes_names = {"stone-furnace", "furnace-2", "steel-furnace", "furnace-4-a", "furnace-4-b", "electric-furnace", "furnace-5-b", "furnace-6"}
local xm_furnace_recipes_news = {false, true, false, true, true, false, true, true}
local xm_furnace_recipes_times = {1, 2, 5, 10, 10, 10, 10, 20}
local xm_furnace_recipes_enableds = {true, true, false, false, false, false, false, false}
local xm_furnace_recipes_ingredients = {{{"stone-brick", 5}}, {{"brick-clay", 10}, {"bronze-plate", 5}}, {{"brick-clay-graphite", 20}, {"forging-iron", 5}, {"pipe-steel", 5}, {"mechanism-1", 2}}, 
{{"brick-clay-graphite", 40}, {"graphite-block", 10}, {"forging-steel", 20}, {"transformer-1", 2}, {"control-1", 2}, {"pump", 2}}, 
{{"brick-spinel", 40}, {"monel-plate", 20}, {"forging-steel", 10}, {"transformer-2", 1}, {"control-1", 1}, {"pump", 1}}, 
{{"brick-clay-graphite", 40}, {"graphite-block", 10}, {"forging-steel", 10}, {"transformer-1", 2}, {"control-1", 2}, {"mechanism-1", 10}}, 
{{"brick-spinel", 20}, {"monel-plate", 10}, {"forging-steel", 5}, {"transformer-1", 1}, {"control-1", 1}, {"mechanism-1", 5}}, 
{{"furnace-4", 2}, {"electric-furnace", 2}, {"brick-zirconia", 100}, {"tungsten-block", 50}, {"mechanism-3", 20}, {"forging-alloy", 50},   {"transformer-3", 20}, {"control-3", 20}}}
local xm_furnace_recipes_results = {{{"stone-furnace", 1}}, {{"furnace-2", 1}}, {{"steel-furnace", 1}}, {{"furnace-4", 1}}, {{"furnace-4", 1}}, {{"electric-furnace", 1}}, {{"electric-furnace", 1}}, {{"furnace-6", 1}}}
--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
for i, name in ipairs(xm_furnace_recipes_names) do
	table.insert(xm_furnace_recipes, {name, xm_furnace_recipes_news[i], nil, "crafting", nil, xm_furnace_recipes_times[i], xm_furnace_recipes_enableds[i], xm_furnace_recipes_ingredients[i], xm_furnace_recipes_results[i], nil})
end