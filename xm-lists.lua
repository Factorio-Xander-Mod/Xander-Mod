--Resource Data Lists
all_resources = {"coal", "copper-ore", "crude-oil", "evaporites", "igneous-sulfide", "iron-ore", "laterite", "magnetic", "massive-sulfide", "natural-gas", "phosphorite", "sand", "skarn", "stone", "uranium-ore"}
xm_resources = {"evaporites", "igneous-sulfide", "laterite", "magnetic", "massive-sulfide", "natural-gas", "phosphorite", "sand", "skarn"}
xm_solid_resources = {"evaporites", "igneous-sulfide", "laterite", "magnetic", "massive-sulfide", "phosphorite", "sand", "skarn"}
xm_resource_categories = {"basic-solid", "hard-solid", "basic-solid", "hard-solid", "basic-solid", "advanced-fluid", "hard-solid", "basic-solid", "basic-solid"}
xm_resource_orders = {"03", "04", "06", "07", "08", "09", "10", "11", "12"}
xm_solid_resource_orders = {"03", "04", "06", "07", "08", "10", "11", "12"}
xm_rem_starts = {false, true, false, true, false, true, true, false, false}
xm_map_colors = {{r = 0.9, g = 0.9, b = 0.9}, {r = 0.9, g = 0.9, b = 0.5}, {r = 0.8, g = 0.45, b = 0.1}, {r = 0.2, g = 0.5, b = 0.26}, {r = 0.35, g = 0.35, b = 0.35}, {r = 0, g = 1, b = 1},
	{r = 0.07, g = 0.35, b = 0.33}, {r = 0.7, g = 0.42, b = 0.47}, {r = 1, g = 1, b = 0}}

--Item Data Lists
--Establish a table of all XM groups and subgroups
xm_groups = {"material", "part", "logistic", "production", "combat"}
xm_material_subgroups = {"alloy", "build", "metal", "nonmetal", "raw-resource", "organic", "oxide", "raw", "salt", "sponge"}
xm_part_subgroups = {"assembly", "board", "data", "electric-1", "electric-2", "electric-3", "mechanical", "optic", "rocket", "science", "structural"}
xm_logistic_subgroups = {"belt", "inserter", "pipe", "pipe-to-ground", "pluming", "pylon", "robot", "storage", "transport"}
xm_production_subgroups = {"chemical", "energy", "furnace", "miner", "module", "production", "tool"}
xm_combat_subgroups = {"ammo", "armor", "capsule", "equipment", "gun", "part", "combat-structure"}
xm_all_subgroups = {xm_material_subgroups, xm_part_subgroups, xm_logistic_subgroups, xm_production_subgroups, xm_combat_subgroups}
--Establish lists for XM items per subgroups
alloy_item_names = {"bronze-plate", "brass-plate", "monel-plate", "solder-1-plate", "solder-2-plate", "silicon-boule"}