
--Base Overrides

--Base "stone-furnace"
data.raw.recipe["stone-furnace"].category = "basic-crafting"
data.raw.recipe["stone-furnace"].energy_required = 1
data.raw.recipe["stone-furnace"].ingredients = {{"stone-brick", 5}}
data.raw.recipe["stone-furnace"].result = "stone-furnace"

--Base "steel-furnace" - redirected to make XM verson of blast furnace
data.raw.recipe["steel-furnace"].category = "crafting"
data.raw.recipe["steel-furnace"].energy_required = 5
data.raw.recipe["steel-furnace"].ingredients = {{"brick-clay-graphite", 20}, {"forging-iron", 5}, {"pipe-steel", 5}, {"mechanism-1", 2}}
data.raw.recipe["steel-furnace"].result = "furnace-3"

--Base "electric-furnace"
data.raw.recipe["electric-furnace"].category = "crafting"
data.raw.recipe["electric-furnace"].energy_required = 10
data.raw.recipe["electric-furnace"].ingredients = {{"brick-clay-graphite", 40}, {"graphite-block", 10}, {"forging-steel", 10}, {"transformer-1", 2}, 
	{"control-1", 2}, {"mechanism-1", 10}}
data.raw.recipe["electric-furnace"].result = "furnace-5"


data:extend(
{

--Base "stone-furnace" placeholder
--Clay Brick Furnace
{
	type = "recipe",
    name = "furnace-2",
	category = "crafting",
	energy_required = 2,
	ingredients = {{"brick-clay", 10}, {"bronze-plate", 5}},
	result = "furnace-2"
},
--Base "steel-furnace" placeholder
--Electric Refining Furnace A (Clay-Graphite)
{
	type = "recipe",
    name = "furnace-4-a",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"brick-clay-graphite", 40}, {"graphite-block", 10}, {"forging-steel", 20}, {"transformer-1", 2}, {"control-1", 2}, {"pump", 2}},
	result = "furnace-4"
},
--Electric Refining Furnace B (Chromia-Magnesia Spinel)
{
	type = "recipe",
    name = "furnace-4-b",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"brick-spinel", 40}, {"monel-plate", 20}, {"forging-steel", 10}, {"transformer-2", 1}, {"control-1", 1}, {"pump", 1}},
	result = "furnace-4"
},
--Base "electric-furnace" placeholder
--Electric Foundry Forge B
{
	type = "recipe",
    name = "furnace-5-b",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"brick-spinel", 20}, {"monel-plate", 10}, {"forging-steel", 5}, {"transformer-1", 1}, {"control-1", 1}, {"mechanism-1", 5}},
	result = "furnace-5"
},
--Arc Furnace
{
	type = "recipe",
    name = "furnace-6",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"furnace-4", 2}, {"electric-furnace", 2}, {"brick-zirconia", 100}, {"tungsten-block", 50}, {"mechanism-3", 20}, {"forging-alloy", 50}, 
		{"transformer-3", 20}, {"control-3", 20}},
	result = "furnace-6"
}

})