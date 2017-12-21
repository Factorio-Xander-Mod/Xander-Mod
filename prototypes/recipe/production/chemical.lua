
--Base Overrides

--Base "chemical-plant"
data.raw.recipe["chemical-plant"].category = "basic-crafting"
data.raw.recipe["chemical-plant"].energy_required = 5
data.raw.recipe["chemical-plant"].ingredients = {{"boiler", 1}, {"lead-plate", 10}, {"glass", 10}, {"mechanism-0", 4}, {"pipe-copper", 20}}

--Base "centrifuge"
data.raw.recipe["centrifuge"].category = "crafting"
data.raw.recipe["centrifuge"].energy_required = 10
data.raw.recipe["centrifuge"].ingredients = {{"pipe-plastic", 100}, {"fused-basalt", 200}, {"forging-titanium", 50}, {"mechanism-3", 50}, {"motor-3", 50}, 
	{"control-2", 20}, {"forging-alloy", 50}, {"pipe-superalloy", 50}}

--Base "oil-refinery"
data.raw.recipe["oil-refinery"].category = "crafting"
data.raw.recipe["oil-refinery"].energy_required = 10
data.raw.recipe["oil-refinery"].ingredients = {{"boiler", 2}, {"control-1", 5}, {"pipe-steel", 50}, {"concrete", 20}, {"pump", 10}, {"forging-steel", 20}}


data:extend(
{

--
--CHEMICAL
--Base "chemical-plant" placeholder
--Standard Chemical Reactor
{
	type = "recipe",
    name = "reactor-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"nickel-plate", 20}, {"glass", 20}, {"control-1", 2}, {"pump", 2}},
	result = "reactor-1"
},
--Catalytic Chemical Reactor
{
	type = "recipe",
    name = "reactor-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"reactor-1", 1}, {"boiler-2", 1}, {"control-2", 2}, {"platinum-plate", 5}, {"pipe-plastic", 20}, {"pump-2", 2}},
	result = "reactor-2"
},
--Standard Electrolyzer
{
	type = "recipe",
    name = "electrolyzer-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"reactor-1", 1}, {"transformer-1", 1}, {"control-1", 1}, {"forging-steel", 5}, {"rubber", 20}},
	result = "electrolyzer-1"
},
--Platinum Electrolyzer
{
	type = "recipe",
    name = "electrolyzer-2",
	category = "crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"electrolyzer-1", 1}, {"platinum-plate", 10}, {"transformer-2", 2}, {"control-2", 2}, {"fused-quartz", 20}, {"forging-titanium", 10}},
	result = "electrolyzer-2"
},
--Base "centrifuge" placeholder
--Base "oil-refinery" placeholder
--XM  Integrated Chemical Plant
{
	type = "recipe",
    name = "reactor-3",
	category = "crafting",
	energy_required = 20,
	enabled = false,
	ingredients = {{"reactor-1", 2}, {"oil-refinery", 2}, {"silicon-nitride", 50}, {"pipe-superalloy", 100}, {"forging-stainless", 50}, {"pump-3", 20}, 
		{"re-oxide", 50}, {"control-3", 20}},
	result = "reactor-3"
}

})