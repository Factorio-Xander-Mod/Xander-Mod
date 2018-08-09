--MATERIALS
--==========
--terrain
xm_terrain_recipes = {
	{"quartzite", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 2, false, {{"stone", 1}}, {{"quartzite", 1}}, nil},
	{"dolerite", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 2, false, {{"stone", 1}}, {{"dolerite", 1}}, nil},
	{"limestone", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 2, false, {{"stone", 1}}, {{"limestone", 1}}, nil},
	{"modified-a", nil, "sluice", nil, 4, false, {{"stone", 1}, {"gravel", 1}}, {{"modified", 4}}, nil},
	{"modified-b", nil, "sluice", nil, 4, false, {{"slag", 1}, {"gravel", 1}}, {{"modified", 4}}, nil},
	{"gravel-crushing", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 1, false, {{"stone", 1}}, {{"gravel", 1}}, nil},
	{"quartz-sand-a", nil, "basic-sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 1, false, {{"sand", 2}}, {{"quartz-sand", 1}}, nil},
	{"quartz-sand-b", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 2, false, {{"sand", 1}, {type = "fluid", name = "water", amount = "10"}}, {{"quartz-sand", 1}}, nil},
	{"clay-a", nil, "basic-sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 1, true, {{"laterite", 2}}, {{"clay", 1}}, nil},
	{"clay-b", "__xander-mod__/graphics/recipe/raw/bauxite-clay.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 4, false, {{"milled-bauxite", 2}, {type = "fluid", name = "water", amount = 10}}, {{"clay", 10}, {type = "fluid", name = "gray-water", amount = 10}}, "terrain"},
	{"landfill", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 1, false, {{"stone", 6}, {"modified", 20}, {"sand", 3}, {"clay", 2}}, {{"landfill", 1}}, nil},
	{"landfill-b", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 1, false, {{"slag", 6}, {"modified", 20}, {"sand", 3}, {"clay", 2}}, {{"landfill", 1}}, nil},
	{"stone-brick", nil, "basic-machine", nil, 2, true, {{"stone", 2}}, {{"stone-brick", 1}}, nil},
	{"cement-a", nil, "refining", nil, 20, false, {{"calcium-oxide", 5}, {"sand", 1}, {"milled-bauxite", 1}}, {{"cement-powder", 5}}, nil},
	{"cement-b", nil, "refining", nil, 20, false, {{"calcium-oxide", 2}, {"slag", 1}, {"milled-bauxite", 1}}, {{"cement-powder", 5}}, nil},
	{"concrete", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 10, false, {{"modified", 6}, {"sand", 3}, {"cement-powder", 4}, {type = "fluid", name = "water", amount = 20}, {"rod-2", 1}}, {{"concrete", 10}}, nil},
	{"hazard-concrete", nil, "crafting", nil, 0.1, false, {{"concrete", 10}}, {{"hazard-concrete", 10}}, nil},
	{"reverse-hazard-concrete", nil, "crafting", nil, 0.1, false, {{"hazard-concrete", 10}}, {{"concrete", 10}}, nil},
	{"refined-concrete", nil, "crafting-with-fluid", nil, 15, false, {{"concrete", 20}, {"iron-stick", 8}, {"steel-plate", 1}, {type = "fluid", name = "water", amount = 100}}, {{"refined-concrete", 10}}, nil},
	{"refined-hazard-concrete", nil, "crafting", nil, 0.1, false, {{"refined-concrete", 10}}, {{"refined-hazard-concrete", 10}}, nil},
	{"reverse-refined-hazard-concrete", nil, "crafting", nil, 0.1, false, {{"refined-hazard-concrete", 10}}, {{"refined-concrete", 10}}, nil}
}

--Milled Resources
--[[
xm_milled_resource_recipes = {}
do
	local names = {"milled-copper-ore", "milled-igneous-sulfide", "milled-iron-ore", "milled-bauxite", "milled-nickeliferous-laterite", "milled-magnetic", "milled-massive-sulfide", "milled-phosphorite",
		"quartz-sand", "milled-skarn", "limestone", "quartzite", "dolerite", "milled-uranium-ore", "oceanic-salt"}
	local ingredients = {{{"copper-ore", 1}}, {{"igneous-sulfide", 1}}, {{"iron-ore", 1}}, {{"laterite", 1}}, {{"laterite", 1}}, {{"magnetic", 1}}, {{"massive-sulfide", 1}}, {{"phosphorite", 1}},
		{{"sand", 1}}, {{"skarn", 1}}, {{"stone", 1}}, {{"stone", 1}}, {{"stone", 1}}, {{"uranium-ore", 1}}, {{type = "fluid", name = "water", amount = 10}}}
	--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
	for i, name in ipairs(names) do
		table.insert(xm_milled_resource_recipes, {name, nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 2, false, ingredients[i], {{name, 1}}, nil})
		--name, no dedicated icon, recipe category = "sluice", tint = {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, time = 2,
		--enabled = false, ingredients from list, results = {{name, 1}}, no dedicated subgroup
	end
end
]]--
xm_milled_resource_recipes = {}
do local tint = {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}
	xm_milled_resource_recipes = {
		{"milled-copper-ore", nil, "sluice", tint, 2, false, {{"copper-ore", 1}}, {{"milled-copper-ore", 1}}, nil},
		{"milled-igneous-sulfide", nil, "sluice", tint, 2, false, {{"igneous-sulfide", 1}}, {{"milled-igneous-sulfide", 1}}, nil},
		{"milled-iron-ore", nil, "sluice", tint, 2, false, {{"iron-ore", 1}}, {{"milled-iron-ore", 1}}, nil},
		{"milled-bauxite", nil, "sluice", tint, 2, false, {{"laterite", 1}}, {{"milled-bauxite", 1}}, nil},
		{"milled-nickeliferous-laterite", nil, "sluice", tint, 2, false, {{"laterite", 1}}, {{"milled-nickeliferous-laterite", 1}}, nil},
		{"milled-magnetic", nil, "sluice", tint, 2, false, {{"magnetic", 1}}, {{"milled-magnetic", 1}}, nil},
		{"milled-massive-sulfide", nil, "sluice", tint, 2, false, {{"massive-sulfide", 1}}, {{"milled-massive-sulfide", 1}}, nil},
		{"milled-phosphorite", nil, "sluice", tint, 2, false, {{"phosphorite", 1}}, {{"milled-phosphorite", 1}}, nil},
		{"milled-skarn", nil, "sluice", tint, 2, false, {{"skarn", 1}}, {{"milled-skarn", 1}}, nil},
		{"milled-uranium-ore", nil, "sluice", tint, 2, false, {{"uranium-ore", 1}}, {{"milled-uranium-ore", 1}}, nil}
	}
end

--Concentrates
xm_concentrate_recipes = {
	{"chalcocite", "__xander-mod__/graphics/recipe/raw/chalcocite-washing.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-copper-ore", 10}, {type = "fluid", name = "water", amount = 50}}, {{"chalcocite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"molybdenite", "__xander-mod__/graphics/recipe/raw/chalcocite-washing.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"milled-copper-ore", 10}, {type = "fluid", name = "water", amount = 50}}, {{"molybdenite", 5}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"saltpeter", "__xander-mod__/graphics/recipe/salt/water-saltpeter.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 4, false, {{"evaporites", 10}, {type = "fluid", name = "water", amount = 50}, {"sodium-carbonate", 1}}, {{"saltpeter", 5}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"borax", "__xander-mod__/graphics/recipe/raw/borax-evaporation.png", "refining", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"evaporites", 20}, {type = "fluid", name = "water", amount = 50}}, {{"borax", 1}, {type = "fluid", name = "distilled-water", amount = 50}}, "concentrate"},
	{"lithium-concentrate", "__xander-mod__/graphics/recipe/raw/lithium-precipitation.png", "chemistry", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 10, false, {{"evaporites", 10}, {type = "fluid", name = "water", amount = 100}, {"calcium-oxide", 1}}, {{"lithium-concentrate", 2}, {"calcium-chloride", 1}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"chalcopyrite", "__xander-mod__/graphics/recipe/raw/chalcopyrite-washing.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-igneous-sulfide", 10}, {type = "fluid", name = "water", amount = 50}}, {{"chalcopyrite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"pentlandite", "__xander-mod__/graphics/recipe/raw/nickel-oxide.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-nickeliferous-laterite", 10}, {type = "fluid", name = "water", amount = 50}}, {{"nickel-oxide", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"hematite", "__xander-mod__/graphics/recipe/raw/hematite-washing.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-iron-ore", 10}, {type = "fluid", name = "water", amount = 50}}, {{"hematite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 5}}, "concentrate"},
	{"pyrolusite", "__xander-mod__/graphics/recipe/raw/hematite-washing.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-iron-ore", 10}, {type = "fluid", name = "water", amount = 50}}, {{"pyrolusite", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 5}}, "concentrate"},
	{"magnetite", "__xander-mod__/graphics/recipe/raw/vanadium-magnetite.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-magnetic", 10}}, {{"magnetite", 10}, {"gravel", 2}}, "concentrate"},
	{"chromite", "__xander-mod__/graphics/recipe/raw/chromite-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"chromite", 10}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"sphalerite", "__xander-mod__/graphics/recipe/raw/sphalerite-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"milled-massive-sulfide", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"sphalerite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"galena", "__xander-mod__/graphics/recipe/raw/galena-washing.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-massive-sulfide", 10}, {type = "fluid", name = "water", amount = 50}}, {{"galena", 10}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"hydroxylapatite", "__xander-mod__/graphics/recipe/raw/phosphate-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"phosphorite", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"hydroxylapatite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"fluorite", "__xander-mod__/graphics/recipe/raw/fluorite-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"phosphorite", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"fluorite", 10}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"ilmenite", "__xander-mod__/graphics/recipe/raw/rutile-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"ilmenite", 10}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"zircon", "__xander-mod__/graphics/recipe/raw/zirconia-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"sand", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"zircon", 2}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"cassiterite", "__xander-mod__/graphics/recipe/raw/cassiterite-washing.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-skarn", 10}, {type = "fluid", name = "water", amount = 50}}, {{"cassiterite", 10}, {"quartz-sand", 2}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"scheelite", "__xander-mod__/graphics/recipe/raw/scheelite-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"milled-skarn", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"scheelite", 2}, {"quartz-sand", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"monazite", "__xander-mod__/graphics/recipe/raw/monazite-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 40, false, {{"milled-uranium-ore", 10}, {type = "fluid", name = "water", amount = 50}, {"surfactant", 1}}, {{"monazite", 5}, {"gravel", 2}, {type = "fluid", name = "waste-water", amount = 50}}, "concentrate"},
	{"pitchblende", "__xander-mod__/graphics/recipe/raw/monazite-flotation.png", "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 20, false, {{"milled-uranium-ore", 10}, {type = "fluid", name = "water", amount = 50}}, {{"pitchblende", 5}, {"gravel", 2}, {type = "fluid", name = "gray-water", amount = 50}}, "concentrate"},
	{"oceanic-salt", nil, "sluice", {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}, 2, false, {{type = "fluid", name = "water", amount = 10}}, {{"oceanic-salt", 1}}, nil}

}

--Plates
xm_plate_recipes = {}
do
	local names = {"copper-plate", "bronze-plate", "iron-plate", "steel-plate"}
	local categories = {"kiln", "kiln", "smelting", "smelting"}
	local times = {4, 10, 4, 8}
	local enableds = {true, true, true, false}
	local ingredients = {{{"copper-ore", 1}}, {{"copper-plate", 4}, {"tin-ingot", 1}}, {{"iron-ore", 1}}, {{"iron-plate", 4}}}
	local results = {{{"copper-plate", 1}}, {{"bronze-plate", 4}}, {{"iron-plate", 1}}, {{"steel-plate", 1}}}
	--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
	for i, name in ipairs(names) do
		table.insert(xm_plate_recipes, {name, nil, categories[i], nil, times[i], enableds[i], ingredients[i], results[i], nil})
	end
end

--Ingots
xm_ingot_recipes = {}
do
	local names = {"aluminum-ingot", "chromium-ingot", "cobalt-ingot", "gold-ingot", "lead-ingot", "magnesium-ingot", "nickel-ingot", "platinum-ingot", "re-ingot", "silver-ingot", "solder-1-ingot","solder-2-ingot", "silicon-ingot", "tin-ingot", "titanium-ingot", "tungsten-ingot", "uranium-238-ingot", "uranium-235-ingot", "vanadium-ingot", "zinc-ingot"}
	local icons = {"__xander-mod__/graphics/recipe/refining/hall-heroult.png", "__xander-mod__/graphics/recipe/refining/chromium-reduction.png", "__xander-mod__/graphics/recipe/refining/cobalt-electrowinning.png", "__xander-mod__/graphics/recipe/refining/miller-process.png", nil, "__xander-mod__/graphics/recipe/refining/magnesium-electrolysis.png", nil, "__xander-mod__/graphics/recipe/refining/platinum-smelting.png", "__xander-mod__/graphics/recipe/refining/re-reduction.png", "__xander-mod__/graphics/recipe/refining/silver-electrowinning.png", nil, nil, "__xander-mod__/graphics/recipe/refining/acheson-silicon.png", nil, "__xander-mod__/graphics/recipe/refining/titanium-remelting.png", nil, "__xander-mod__/graphics/recipe/refining/238-reduction.png", "__xander-mod__/graphics/recipe/refining/weapons-reduction.png", "__xander-mod__/graphics/recipe/refining/vanadium-reduction.png", "__xander-mod__/graphics/recipe/refining/zinc-electrowinning.png"}
	local categories = {"refining", "refining", "electrolysis", "forge", "kiln", "refining", "basic-refining", "forge", "refining", "electrolysis", "smelting", "forge", "refining", "kiln", "forge", "forge", "refining", "refining", "refining", "electrolysis"}
	local tints = {nil, nil, {primary = {r = 0.000, g = 0.110, b = 0.588}, secondary = {r = 0.564, g = 0.795, b = 0.000}, tertiary = {r = 0.678, g = 0.565, b = 0.478}}, nil, nil, nil, nil, nil, nil, {primary = {r = 0.000, g = 0.110, b = 0.588}, secondary = {r = 0.564, g = 0.795, b = 0.000}, tertiary = {r = 0.678, g = 0.565, b = 0.478}}, nil, nil, nil, nil, nil, nil, nil, nil, nil, {primary = {r = 0.000, g = 0.110, b = 0.588}, secondary = {r = 0.564, g = 0.795, b = 0.000}, tertiary = {r = 0.678, g = 0.565, b = 0.478}}}
	local times = {800, 10, 100, 50, 4, 800, 8, 100, 5, 100, 5, 10, 100, 4, 200, 10, 5, 5, 10, 100}
	local enableds = {false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false}
	local ingredients = {{{"aluminum-oxide", 40}, {"graphite-block", 15}, {"cryolite-mixture", 4}}, {{"chromium-oxide", 1}, {"magnesium-ingot", 3}},
		{{"cobalt-oxide", 10}, {type = "fluid", name = "sulfuric-acid", amount = 10}, {type = "fluid", name = "water", amount = 50}}, {{"gold-sponge", 10}, {type = "fluid", name = "chlorine", amount = 20}, {"calcium-oxide", 1}},
		{{"massive-sulfide", 2}}, {{"magnesium-chloride", 40}, {"graphite-block", 1}}, {{"igneous-sulfide", 2}, {"limestone", 1}}, {{"platinum-sponge", 20}, {"borax", 1}, {"calcium-oxide", 1}},
		{{"re-oxide", 1}, {"magnesium-ingot", 2}}, {{"silver-sponge", 10}, {type = "fluid", name = "nitric-acid", amount = 10}, {type = "fluid", name = "water", amount = 20}}, {{"tin-ingot", 3}, {"lead-ingot", 2}},
		{{"tin-ingot", 7}, {"copper-plate", 2}, {"silver-ingot", 1}}, {{"quartz-sand", 20}, {"graphite-block", 1}, {"coke", 16}}, {{"skarn", 2}}, {{"titanium-sponge", 20}, {"graphite-block", 1}}, {{"tungsten-powder", 1}},
		{{"uranium-238-oxide", 1}, {"magnesium-ingot", 2}}, {{"uranium-weapons-oxide", 1}, {"magnesium-ingot", 2}}, {{"vanadium-oxide", 1}, {"magnesium-ingot", 5}}, {{"zinc-oxide", 10}, {type = "fluid", name = "sulfuric-acid", amount = 10}, {type = "fluid", name = "water", amount = 20}}}
	local results = {{{"aluminum-ingot", 80}, {type = "fluid", name = "flue-gas", amount = 600}}, {{"chromium-ingot", 2}, {"magnesium-oxide", 3}},
		{{"cobalt-ingot", 10}, {type = "fluid", name = "waste-water", amount = 50}}, {{"gold-ingot", 10}, {"slag", 1}}, {{"lead-ingot", 1}}, {{"magnesium-ingot", 40}, {type = "fluid", name = "chlorine", amount = 400}},
		{{"nickel-ingot", 1}}, {{"platinum-ingot", 20}, {"slag", 2}}, {{"re-ingot", 1}, {"magnesium-oxide", 2}}, {{"silver-ingot", 10}, {"sludge", 1}, {type = "fluid", name = "gray-water", amount = 20}}, {{"solder-1-ingot", 5}},
		{{"solder-2-ingot", 10}}, {{"silicon-ingot", 20}, {type = "fluid", name = "flue-gas", amount = 200}}, {{"tin-ingot", 1}}, {{"titanium-ingot", 20}, {"slag", 2}}, {{"tungsten-ingot", 1}},
		{{"uranium-238", 1}, {"magnesium-oxide", 2}}, {{"uranium-235", 1}, {"magnesium-oxide", 2}}, {{"vanadium-ingot", 2}, {"magnesium-oxide", 5}}, {{"zinc-ingot", 10}, {type = "fluid", name = "gray-water", amount = 20}}}
	--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
	for i, name in ipairs(names) do
		table.insert(xm_ingot_recipes, {name, icons[i], categories[i], tints[i], times[i], enableds[i], ingredients[i], results[i], "ingot"})
	end
end


--PARTS
--==========
--Mechanical
xm_mechanical_recipes = {}
do
	local names = {"iron-gear-wheel", "gear-2", "gear-3", "gear-4", "bearing-1", "bearing-2", "bearing-3", "iron-stick", "rod-2", "rod-3", "rod-4", "shaft-0", "shaft-1", "shaft-2", "shaft-3"}
	local categories = {"basic-machine", "machine", "machine", "machine", "machine", "machine", "forge", "basic-machine", "machine", "machine", "machine", "basic-machine", "machine", "machine", "machine"}
	local times = {5, 10, 10, 10, 2, 8, 8, 2, 2, 4, 4, 1, 0.5, 1, 2}
	local enableds = {true, false, false, false, false, false, false, true, false, false, false, true, false, false, false}
	local ingredients = {{{"blank-1", 1}}, {{"blank-2", 1}}, {{"blank-3", 1}}, {{"blank-4", 1}}, {{"bronze-plate", 1}, {"graphite-powder", 1}},
		{{"forging-alloy", 1}, {"graphite-powder", 2}, {type = "fluid", name = "lubricant", amount = 10}}, {{"silicon-nitride", 1}, {"plastic-pellets", 1}, {type = "fluid", name = "lubricant", amount = 10}}, {{"iron-plate", 1}},
		{{"forging-steel", 1}}, {{"forging-alloy", 1}}, {{"forging-titanium", 1}}, {{"iron-stick", 3}, {"lead-ingot", 1}}, {{"rod-2", 1}, {"bearing-1", 2}}, {{"rod-3", 1}, {"bearing-2", 2}}, {{"rod-4", 1}, {"bearing-3", 2}}}
	local results = {{{"iron-gear-wheel", 1}}, {{"gear-2", 1}}, {{"gear-3", 1}}, {{"gear-4", 1}}, {{"bearing-1", 2}}, {{"bearing-2", 4}}, {{"bearing-3", 2}}, {{"iron-stick", 1}}, {{"rod-2", 2}}, {{"rod-3", 2}},
		{{"rod-4", 2}}, {{"shaft-0", 2}}, {{"shaft-1", 1}}, {{"shaft-2", 1}}, {{"shaft-3", 1}}}
	--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
	for i, name in ipairs(names) do
		table.insert(xm_mechanical_recipes, {name, nil, categories[i], nil, times[i], enableds[i], ingredients[i], results[i], nil})
	end
end

--Assembly
xm_assembly_recipes = {}
do
	local names = {"mechanical-steam-engine", "piston-cylinder", "mechanism-0", "mechanism-1", "mechanism-2", "mechanism-3", "engine-unit", "wheel-1", "wheel-2", "flying-robot-frame", "flying-robot-frame-2",
		"tooling-1-a", "tooling-1-b", "tooling-1-c", "tooling-2", "tooling-3", "control-1", "control-2", "control-3", "lasing-1", "lasing-2", "lasing-3"}
	local categories = {"basic-crafting", "basic-crafting", "basic-crafting", "crafting", "crafting-with-fluid", "crafting-with-fluid", "crafting", "crafting", "forge", "crafting", "crafting-with-fluid",
		"basic-machine", "machine", "machine", "machine", "machine", "crafting", "advanced-crafting", "advanced-crafting", "crafting", "advanced-crafting", "advanced-crafting"}
	local times = {1, 2, 1, 4, 4, 5, 5, 4, 4, 10, 20, 2, 4, 5, 4, 5, 2, 4, 5, 5, 8, 10}
	local enableds = {true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false}
	local ingredients = {{{"mechanism-0", 1}, {"pipe-copper", 2}, {"forging-iron", 1}}, {{"forging-iron", 1}, {"pipe-steel", 2}}, {{"forging-iron", 1}, {"shaft-0", 1}, {"iron-gear-wheel", 2}, {"bronze-plate", 2}},
		{{"forging-iron", 1}, {"shaft-1", 2}, {"iron-gear-wheel", 1}, {"gear-3", 1}}, {{"forging-aluminum", 1}, {"shaft-2", 2}, {"gear-2", 2}, {"gear-3", 2}, {type = "fluid", name = "lubricant", amount = 10}},
		{{"forging-titanium", 1}, {"shaft-3", 2}, {"gear-4", 4}, {"plastic-bar", 2}, {type = "fluid", name = "lubricant", amount = 10}}, {{"piston-cylinder", 1}, {"mechanism-1", 1}, {"rubber", 2}},
		{{"forging-steel", 1}, {"forging-iron", 1}, {"steel-plate", 2}, {"bearing-1", 4}}, {{"forging-alloy", 1}, {"steel-plate", 1}, {"silicon-carbide", 1}, {"bearing-2", 2}},
		{{"battery-2", 1}, {"control-2", 1}, {"forging-aluminum", 1}, {"motor-3", 1}},
		{{"battery-3", 1}, {"control-3", 1}, {"forging-titanium", 2}, {"motor-3", 2}, {"carbon-fiber", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}}, {{"steel-plate", 4}, {"stone-brick", 10}, {"wood", 4}},
		{{"forging-steel", 1}, {"silicon-carbide", 4}, {type = "fluid", name = "uncured-resol", amount = 20}},
		{{"forging-steel", 1}, {"silicon-carbide", 4}, {type = "fluid", name = "uncured-epoxy", amount = 10}, {"carbon-fiber", 1}}, {{"forging-alloy", 1}, {"tungsten-cermet", 4}, {"aluminum-oxide", 2}, {"glass", 2}},
		{{"forging-alloy", 2}, {"nitride-block", 4}, {"boule-diamond", 2}, {"brass-billet", 2}}, {{"electronic-circuit", 4}, {"wire-copper", 8}, {"wire-tinned", 2}},
		{{"advanced-circuit", 4}, {"electronic-circuit", 4}, {"wire-tinned", 8}, {"rubber", 4}, {"cable-insulated", 4}},
		{{"processing-unit", 4}, {"advanced-circuit", 4}, {"wire-tinned", 16}, {"wire-gold", 8}, {"plastic-bar", 4}, {"cable-insulated", 2}},
		{{"crystal-ruby", 1}, {"crystal-quartz", 5}, {"small-lamp", 2}, {"control-2", 2}, {"forging-stainless", 2}, {"aluminum-ingot", 5}},
		{{type = "fluid", name = "carbon-dioxide", amount = 50}, {"crystal-corundum", 5}, {"lamp-2", 2}, {"control-3", 2}, {"forging-alloy", 2}, {"copper-plate", 5}},
		{{"crystal-yag", 1}, {"crystal-diamond", 5}, {"lamp-2", 4}, {"control-3", 4}, {"forging-titanium", 4}, {"silver-ingot", 10}}}
	local results = {{{"mechanical-steam-engine", 1}}, {{"piston-cylinder", 1}}, {{"mechanism-0", 1}}, {{"mechanism-1", 1}}, {{"mechanism-2", 1}}, {{"mechanism-3", 1}}, {{"engine-unit", 1}}, {{"wheel-1", 2}},
		{{"wheel-2", 1}}, {{"flying-robot-frame", 1}}, {{"flying-robot-frame-2", 1}}, {{"tooling-1", 1}}, {{"tooling-1", 1}}, {{"tooling-1", 1}}, {{"tooling-2", 1}}, {{"tooling-3", 1}}, {{"control-1", 1}}, {{"control-2", 1}},
		{{"control-3", 1}}, {{"lasing-1", 1}}, {{"lasing-2", 1}}, {{"lasing-3", 1}}}
	--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
	for i, name in ipairs(names) do
		table.insert(xm_assembly_recipes, {name, nil, categories[i], nil, times[i], enableds[i], ingredients[i], results[i], nil})
	end
end


--PRODUCTION
--==========
--Tools
xm_tool_recipes = {}
do
	local names = {"titanium-axe", "axe-1", "iron-axe", "steel-axe", "axe-4", "axe-5", "axe-6", "repair-pack", "repair-pack-2", "repair-pack-3"}
	local times = {1, 1, 1, 2, 4, 5, 5, 2, 2, 4}
	local enableds = {true, true, true, false, false, false, false, false, false, false}
	local ingredients = {{{"raw-wood", 4}, {"forging-titanium", 5}}, {{"wood", 4}, {"bronze-plate", 4}}, {{"wood", 4}, {"iron-plate", 4}}, {{"forging-steel", 5}, {"wood", 4}},
		{{"rod-2", 1}, {"forging-alloy", 5}, {"rubber", 4}}, {{"rod-4", 1}, {"forging-alloy", 5}, {"rubber", 4}, {"tungsten-cermet", 5}}, {{"rod-4", 1}, {"forging-alloy", 5}, {"rubber", 4}, {"nitride-block", 5}},
		{{"tooling-1", 1}, {"iron-gear-wheel", 1}, {"bronze-plate", 2}, {"electronic-circuit", 2}}, {{"tooling-2", 1}, {"gear-3", 1}, {"forging-steel", 1}, {"advanced-circuit", 2}, {"rubber", 4}, {"concrete", 4}},
		{{"tooling-3", 1}, {"gear-4", 2}, {"forging-titanium", 1}, {"processing-unit", 2}, {"plastic-bar", 4}, {"fused-basalt", 4}}}
	--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
	for i, name in ipairs(names) do
		table.insert(xm_tool_recipes, {name, nil, "crafting", nil, times[i], enableds[i], ingredients[i], {{name, 1}}, nil})
	end
end

--Furnace Placer Items
xm_furnace_recipes = {}
do
	local names = {"stone-furnace", "furnace-2", "steel-furnace", "furnace-4-a", "furnace-4-b", "electric-furnace", "furnace-5-b", "furnace-6"}
	local categories = {"basic-crafting", "crafting", "crafting", "crafting", "crafting", "crafting", "crafting", "crafting"}
	local times = {1, 2, 5, 10, 10, 10, 10, 20}
	local enableds = {true, true, false, false, false, false, false, false}
	local ingredients = {{{"stone-brick", 5}}, {{"brick-clay", 5}, {"bronze-plate", 4}}, {{"brick-clay-graphite", 20}, {"forging-iron", 5}, {"pipe-steel", 5}, {"mechanism-1", 2}},
	{{"brick-clay-graphite", 40}, {"graphite-block", 10}, {"forging-steel", 20}, {"transformer-1", 2}, {"control-1", 2}, {"pump", 2}},
	{{"brick-spinel", 40}, {"monel-billet", 20}, {"forging-steel", 10}, {"transformer-2", 1}, {"control-1", 1}, {"pump", 1}},
	{{"brick-clay-graphite", 40}, {"graphite-block", 10}, {"forging-steel", 10}, {"transformer-1", 2}, {"control-1", 2}, {"mechanism-1", 10}},
	{{"brick-spinel", 20}, {"monel-billet", 10}, {"forging-steel", 5}, {"transformer-1", 1}, {"control-1", 1}, {"mechanism-1", 5}},
	{{"furnace-4", 2}, {"electric-furnace", 2}, {"brick-zirconia", 100}, {"tungsten-ingot", 50}, {"mechanism-3", 20}, {"forging-alloy", 50},   {"transformer-3", 20}, {"control-3", 20}}}
	local results = {{{"stone-furnace", 1}}, {{"furnace-2", 1}}, {{"steel-furnace", 1}}, {{"furnace-4", 1}}, {{"furnace-4", 1}}, {{"electric-furnace", 1}}, {{"electric-furnace", 1}}, {{"furnace-6", 1}}}
	--Load all of the single-parameter lists into one big list of recipes, where each entry has the parameters for one complete recipe
	for i, name in ipairs(names) do
		table.insert(xm_furnace_recipes, {name, nil, categories[i], nil, times[i], enableds[i], ingredients[i], results[i], nil})
	end
end