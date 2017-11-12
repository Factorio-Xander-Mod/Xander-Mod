
--Base Overrides

--Base "light-armor"
data.raw.recipe["light-armor"].category = "crafting"
data.raw.recipe["light-armor"].energy_required = 2
data.raw.recipe["light-armor"].enabled = false
data.raw.recipe["light-armor"].ingredients = {{"iron-plate", 50}}

--Base "heavy-armor"
data.raw.recipe["heavy-armor"].category = "crafting"
data.raw.recipe["heavy-armor"].energy_required = 4
data.raw.recipe["heavy-armor"].ingredients = {{"forging-steel", 50}, {"brass-plate", 100}, {"rubber", 50}}

--Base "modular-armor"
data.raw.recipe["modular-armor"].category = "crafting"
data.raw.recipe["modular-armor"].energy_required = 5
data.raw.recipe["modular-armor"].ingredients = {{"forging-steel", 50}, {"forging-stainless", 20}, {"mechanism-1", 5}, {"motor-2", 5}, {"control-2", 10}, 
	{"rubber", 50}}

--Base "power-armor"
data.raw.recipe["power-armor"].category = "crafting"
data.raw.recipe["power-armor"].energy_required = 10
data.raw.recipe["power-armor"].ingredients = {{"forging-aluminum", 100}, {"forging-alloy", 20}, {"mechanism-2", 5}, {"motor-2", 10}, {"control-2", 20}, 
	{"rubber", 50}, {"plastic-bar", 50}, {"crystal-quartz", 20}}

--Base "power-armor-mk2"
data.raw.recipe["power-armor-mk2"].category = "crafting"
data.raw.recipe["power-armor-mk2"].energy_required = 20
data.raw.recipe["power-armor-mk2"].ingredients = {{"forging-alloy", 100}, {"tungsten-block", 100}, {"mechanism-3", 10}, {"motor-3", 20}, {"control-3", 20}, 
	{"plastic-bar", 100}, {"effectivity-module-3", 10}, {"crystal-corundum", 20}}


data:extend(
{

--Power Armor Mark 3
{
	type = "recipe",
    name = "power-armor-mk3",
	category = "crafting",
	energy_required = 50,
	enabled = false,
	ingredients = {{"forging-titanium", 200}, {"nitride-block", 100}, {"mechanism-3", 20}, {"motor-3", 50}, {"control-3", 50}, {"plastic-bar", 200}, 
		{"speed-module-3", 10}, {"crystal-diamond", 20}},
	result = "power-armor-mk3"
}

})
