
--Base Overrides

--Base "iron-axe"
data.raw.recipe["iron-axe"].category = "crafting"
data.raw.recipe["iron-axe"].energy_required = 1
data.raw.recipe["iron-axe"].ingredients = {{"wood", 4}, {"iron-plate", 5}}

--Base "steel-axe"
data.raw.recipe["steel-axe"].category = "crafting"
data.raw.recipe["steel-axe"].energy_required = 2
data.raw.recipe["steel-axe"].ingredients = {{"rod-2", 1}, {"forging-steel", 5}, {"wood", 4}}

--Base "repair-pack"
data.raw.recipe["repair-pack"].category = "crafting"
data.raw.recipe["repair-pack"].energy_required = 1
data.raw.recipe["repair-pack"].enabled = false
data.raw.recipe["repair-pack"].ingredients = {{"tooling-1", 1}, {"iron-gear-wheel", 1}, {"bronze-plate", 2}, {"electronic-circuit", 2}}
data.raw.recipe["repair-pack"].result_count = 2


data:extend(
{

--
--TOOLS
--
--MINING AXE
--Bronze Axe
{
	type = "recipe",
    name = "axe-1",
	category = "crafting",
	energy_required = 1,
	ingredients = {{"wood", 4}, {"bronze-plate", 5}},
	result = "axe-1"
},
--Base "iron-axe" placeholder
--Base "steel-axe" placeholder
--Alloy Steel Axe
{
	type = "recipe",
    name = "axe-4",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"rod-2", 1}, {"forging-alloy", 5}, {"rubber", 4}},
	result = "axe-4"
},
--Tungsten Axe
{
	type = "recipe",
    name = "axe-5",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"rod-4", 1}, {"forging-alloy", 5}, {"rubber", 4}, {"tungsten-cermet", 5}},
	result = "axe-5"
},
--Nitride Axe
{
	type = "recipe",
    name = "axe-6",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"rod-4", 1}, {"forging-alloy", 5}, {"rubber", 4}, {"nitride-block", 5}},
	result = "axe-6"
},
--
--REPAIR PACK
--Base "repair-pack" placeholder
--Repair Pack 2
{
	type = "recipe",
    name = "repair-pack-2",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"tooling-2", 1}, {"gear-3", 1}, {"forging-steel", 1}, {"advanced-circuit", 2}, {"rubber", 4}, {"concrete", 4}},
	result = "repair-pack-2"
},
--Repair Pack 3
{
	type = "recipe",
    name = "repair-pack-3",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"tooling-3", 1}, {"gear-4", 2}, {"forging-titanium", 1}, {"processing-unit", 2}, {"plastic-bar", 4}, {"fused-basalt", 4}},
	result = "repair-pack-3"
}

})