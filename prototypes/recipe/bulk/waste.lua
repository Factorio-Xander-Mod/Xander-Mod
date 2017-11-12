
data:extend(
{

--
--RECYCLING
--Slow Transport Belt
{
	type = "recipe",
	name = "recycle-slow-transport-belt",
	icon = "__xander-mod__/graphics/recipe/waste/recycle-slow-transport-belt.png",
	category = "smelting",
	energy_required = 8,
	enabled = false,
	ingredients = {{"slow-transport-belt", 4}, {"limestone", 1}},
	results = {{"iron-plate", 4}},
	subgroup = "raw-material"
},
--Slow Underground Belt
{
	type = "recipe",
	name = "recycle-slow-underground-belt",
	icon = "__xander-mod__/graphics/recipe/waste/recycle-slow-underground-belt.png",
	category = "smelting",
	energy_required = 8,
	enabled = false,
	ingredients = {{"slow-underground-belt", 2}, {"limestone", 1}},
	results = {{"iron-plate", 4}},
	subgroup = "raw-material"
},
--Slow Splitter
{
	type = "recipe",
	name = "recycle-slow-splitter",
	icon = "__xander-mod__/graphics/recipe/waste/recycle-slow-splitter.png",
	category = "smelting",
	energy_required = 40,
	enabled = false,
	ingredients = {{"slow-splitter", 2}, {"limestone", 5}},
	results = {{"iron-plate", 20}},
	subgroup = "raw-material"
},
--Burner Inserter
{
	type = "recipe",
	name = "recycle-burner-inserter",
	icon = "__xander-mod__/graphics/recipe/waste/recycle-burner-inserter.png",
	category = "smelting",
	energy_required = 24,
	enabled = false,
	ingredients = {{"burner-inserter", 2}, {"limestone", 3}},
	results = {{"iron-plate", 12}},
	subgroup = "raw-material"
},
--Chemical Burner Inserter
{
	type = "recipe",
	name = "recycle-inserter-chemical-burner",
	icon = "__xander-mod__/graphics/recipe/waste/recycle-inserter-chemical-burner.png",
	category = "smelting",
	energy_required = 24,
	enabled = false,
	ingredients = {{"inserter-chemical-burner", 2}, {"limestone", 3}},
	results = {{"iron-plate", 12}},
	subgroup = "raw-material"
},

--
--WASTE TREATMENT
--Crude Waste Water Treatment
{
	type = "recipe",
    name = "water-clarifying-a",
	icon = "__xander-mod__/graphics/recipe/waste/water-clarifying-a.png",
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{type = "fluid", name = "waste-water", amount = 80}, {"iron-ore", 1}, {"limestone", 2}},
	results = {{"sludge", 8}},
	subgroup = "waste"
},
--Water Clarifying
{
	type = "recipe",
    name = "water-clarifying-b",
	icon = "__xander-mod__/graphics/recipe/waste/water-clarifying-b.png",
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 40,
	enabled = false,
	ingredients = {{type = "fluid", name = "waste-water", amount = 200}, {"soda", 1}, {"magnesium-chloride", 1}},
	results = {{type = "fluid", name = "water", amount = 200}, {"sludge", 10}},
	subgroup = "waste"
},
--Flue Gas Scrubbing
{
	type = "recipe",
    name = "gas-scrubbing",
	icon = "__xander-mod__/graphics/recipe/waste/gas-scrubbing.png",
	category = "chemistry",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 20,
	enabled = false,
	ingredients = {{type = "fluid", name = "flue-gas", amount = 200}, {"calcium-oxide", 1}, {type = "fluid", name = "water", amount = 20}},
	results = {{type = "fluid", name = "carbon-dioxide", amount = 200}, {"sludge", 1}, {"calcium-sulfate", 1}},
	subgroup = "waste"
},
--Calcium Sulfate Cracking
{
	type = "recipe",
    name = "sulfate-cracking",
	icon = "__xander-mod__/graphics/recipe/waste/sulfate-cracking.png",
	category = "refining",
	energy_required = 100,
	enabled = false,
	ingredients = {{"calcium-sulfate", 1}, {"sand", 1}, {"coke", 1}},
	results = {{type = "fluid", name = "sulfur-dioxide", amount = 100}, {"slag", 10}, {type = "fluid", name = "flue-gas", amount = 100}},
	subgroup = "waste"
},
--Slag (Partial) Cracking
{
	type = "recipe",
    name = "slag-cracking",
	icon = "__xander-mod__/graphics/recipe/waste/slag-cracking.png",
	category = "chemical-plant",
	energy_required = 200,
	enabled = false,
	ingredients = {{"slag", 40}, {type = "fluid", name = "carbon-dioxide", amount = 100}, {type = "fluid", name = "water", amount = 200}},
	results = {{"limestone", 10}, {"sand", 10}, {type = "fluid", name = "waste-water", amount = 200}},
	subgroup = "waste"
},
--
--BURIAL
--Sludge Burial with Gravel
{
	type = "recipe",
    name = "sludge-burial-a",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"sludge", 1}, {"gravel", 2}},
	result = "gravel"
},
--Sludge Burial with Sand
{
	type = "recipe",
    name = "sludge-burial-b",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"sludge", 1}, {"sand", 2}},
	result = "sand"
},
--Calcium Sulfate Burial with Stone
{
	type = "recipe",
    name = "calcium-sulfate-burial",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"calcium-sulfate", 1}, {"stone", 2}},
	result = "stone"
},
--Sulfur Sulfate Burial with Gravel
{
	type = "recipe",
    name = "sulfur-burial",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"sulfur", 1}, {"gravel", 2}},
	result = "gravel"
},
--Magnesite Burial
{
	type = "recipe",
    name = "magnesite-burial",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"magnesite", 2}},
	result = "magnesite"
},
--Limestone Burial
{
	type = "recipe",
    name = "limestone-burial",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"limestone", 2}},
	result = "limestone"
},
--Coke Burial
{
	type = "recipe",
    name = "coke-burial",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"coke", 2}},
	result = "coke"
},
--Gravel Burial
{
	type = "recipe",
    name = "gravel-burial",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"gravel", 2}},
	result = "gravel"
},
--Slag Burial
{
	type = "recipe",
    name = "slag-burial",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"slag", 2}},
	result = "slag"
},
--
--VENTING
--Nitrogen Venting
{
	type = "recipe",
    name = "nitrogen-venting",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{type = "fluid", name = "nitrogen", amount = 10}, {"gravel", 1}},
	result = "gravel"
},
--Oxygen Venting
{
	type = "recipe",
    name = "oxygen-venting",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{type = "fluid", name = "oxygen", amount = 10}, {"gravel", 1}},
	result = "gravel"
},
--Carbon Dioxide Venting
{
	type = "recipe",
    name = "co2-venting",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{type = "fluid", name = "carbon-dioxide", amount = 10}, {"gravel", 1}},
	result = "gravel"
},
--Water Venting
{
	type = "recipe",
    name = "water-venting",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{type = "fluid", name = "water", amount = 10}, {"gravel", 1}},
	result = "gravel"
},
--Salt Water Venting
{
	type = "recipe",
    name = "salt-water-venting",
	category = "sluice",
	crafting_machine_tint =
	{
		primary = {r = 0.000, g = 0.110, b = 0.588},
		secondary = {r = 0.564, g = 0.795, b = 0.000},
		tertiary = {r = 0.678, g = 0.565, b = 0.478}
	},
	energy_required = 1,
	enabled = false,
	ingredients = {{"salt", 2}, {type = "fluid", name = "water", amount = 10}},
	result = "salt"
}

})