--GENERAL DATA LISTS
--==========
xm_all_recipe_categories = {"hand", "basic-sluice", "sluice", "ore-plant", "kiln", "basic-refining", "refining", "forge", "basic-chemistry", "electrolysis", 
	"chemical-plant", "basic-machine", "machine", "advanced-machine", "basic-crafting", "temp-logging", "empty"}


--RESOURCE DATA LISTS
--==========
xm_all_resources = {"coal", "copper-ore", "crude-oil", "evaporites", "igneous-sulfide", "iron-ore", "laterite", "magnetic", "massive-sulfide", "natural-gas", "phosphorite", "sand", "skarn", "stone", "uranium-ore"}
xm_resources_xm_new = {false, false, false, true, true, false, true, true, true, true, true, true, true, false, false}
xm_reources_solid = {true, true, false, true, true, true, true, true, true, false, true, true, true, true, true}
xm_resource_categories = {"", "", "", "basic-solid", "hard-solid", "", "basic-solid", "hard-solid", "basic-solid", "advanced-fluid", "hard-solid", "basic-solid", "basic-solid", "", ""}
xm_rem_starts = {false, false, false, false, true, false, false, true, false, true, true, false, false, false, true}
xm_map_colors = {{r = 0, g = 0, b = 0}, {r = 0, g = 0, b = 0}, {r = 0, g = 0, b = 0}, {r = 0.9, g = 0.9, b = 0.9}, {r = 0.9, g = 0.9, b = 0.5}, {r = 0, g = 0, b = 0}, {r = 0.8, g = 0.45, b = 0.1}, {r = 0.2, g = 0.5, b = 0.26}, 
	{r = 0.35, g = 0.35, b = 0.35}, {r = 0, g = 1, b = 1}, {r = 0.07, g = 0.35, b = 0.33}, {r = 0.7, g = 0.42, b = 0.47}, {r = 1, g = 1, b = 0}, {r = 0, g = 0, b = 0}, {r = 0, g = 0, b = 0}}


--GROUP DATA LISTS
--==========
--Establish a table of all item groups
xm_groups = {"environment", "enemies", "material", "fluids", "intermediate-products", "production", "logistics", "combat", "signals", "other"}
	--Name (added by XM): environment (false), enemies (false), material (true), fluids (false), intermediate-products (false), logistic (false), production (false), combat (false), signals (false), other (false)
--Establish lists of item subgroups for XM to modify
xm_material_subgroups = {{"terrain", false}, {"raw-resource", false}, {"milled-resource", true}, {"concentrate", true}, {"raw-material", false}, {"oxide", true}, {"sponge", true}, {"plate", true}, {"ingot", true}, 
	{"metal", true}, {"alloy", true}, {"nonmetal", true}, {"compound", true}, {"organic", true}, {"carbohydrate", true}, {"other-organic", true}, {"raw", true}, {"salt", true}, {"build", true}, {"fluid-recipes", false}, 
	{"waste", true}}
xm_fluids_subgroups = {{"fluid-element", true}, {"fluid-hydrogenated", true}, {"fluid-oxide", true}, {"fluid-halogenated", true}, {"fluid", false}, {"fluid-hydrocarbon", true}, {"fluid-other-organic", true}}
xm_intermediate_products_subgroups = {{"structure", true}, {"mechanical", true}, {"electric-1", true}, {"electric-2", true}, {"electric-3", true}, {"data", true}, {"board", true}, {"optic", true}, {"assembly", true}, 
	{"intermediate-product", false}, {"science-pack", false}, {"fill-barrel", false}, {"empty-barrel", false}}
xm_production_subgroups = {{"tool", false}, {"energy", false}, {"extraction-machine", false}, {"smelting-machine", false}, {"chemical-machine", true}, {"production-machine", false}, {"module", false}}
xm_logistics_subgroups = {{"storage", false}, {"belt", false}, {"inserter", false}, {"pipe", true}, {"pipe-to-ground", true}, {"plumbing", true}, {"energy-pipe-distribution", false}, {"transport", false}, 
	{"logistic-network", false}, {"circuit-network", false}}
xm_combat_subgroups = {{"combat-part", true}, {"gun", false}, {"ammo", false}, {"capsule", false}, {"armor", false}, {"equipment", false}, {"defensive-structure", false}}
--Compiled list of most subgroups, specifically includes: all those in item-groups that XM modifies in some way.  Nil entries are ordering placeholder for item-groups that XM doesn't modify ("environment", "enemies", "signals", 
--"other").
xm_all_subgroups = {nil, nil, xm_material_subgroups, xm_fluids_subgroups, xm_intermediate_products_subgroups, xm_production_subgroups, xm_logistics_subgroups, xm_combat_subgroups, nil, nil}