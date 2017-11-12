
--Base Overrides

--Base "beacon"
data.raw.recipe["beacon"].category = "crafting"
data.raw.recipe["beacon"].energy_required = 15
data.raw.recipe["beacon"].ingredients = {{"forging-stainless", 10}, {"control-2", 10}, {"control-1", 10}, {"copper-cable", 20}, {"forging-aluminum", 5}, 
	{"transformer-2", 5}, {"motor-2", 2}, {"mechanism-2", 2}}

--Base "speed-module"
data.raw.recipe["speed-module"].category = "crafting"
data.raw.recipe["speed-module"].energy_required = 10
data.raw.recipe["speed-module"].ingredients = {{"forging-aluminum", 1}, {"control-1", 1}, {"mechanism-1", 1}, {"bronze-plate", 5}, 
	{"electric-engine-unit", 1}}

--Base "speed-module-2"
data.raw.recipe["speed-module-2"].category = "crafting-with-fluid"
data.raw.recipe["speed-module-2"].energy_required = 20
data.raw.recipe["speed-module-2"].ingredients = {{"speed-module", 4},  {"control-2", 2}, {"mechanism-2", 2}, {"brass-plate", 10}, {"motor-2", 2},
	{type = "fluid", name = "lubricant", amount = 20}}

--Base "speed-module-3"
data.raw.recipe["speed-module-3"].category = "crafting-with-fluid"
data.raw.recipe["speed-module-3"].energy_required = 40
data.raw.recipe["speed-module-3"].ingredients = {{"speed-module-2", 5}, {"control-3", 4}, {"mechanism-3", 4}, {"chromium-plate", 20}, {"motor-3", 4}, 
	{type = "fluid", name = "lubricant", amount = 40}, {"plastic-bar", 4}}

--Base "productivity-module"
data.raw.recipe["productivity-module"].category = "crafting"
data.raw.recipe["productivity-module"].energy_required = 10
data.raw.recipe["productivity-module"].ingredients = {{"forging-aluminum", 1}, {"control-1", 1}, {"mechanism-1", 1}, {"tooling-1", 1}, 
	{"transport-belt", 2}, {"pump", 1}}

--Base "productivity-module-2"
data.raw.recipe["productivity-module-2"].category = "advanced-crafting"
data.raw.recipe["productivity-module-2"].energy_required = 20
data.raw.recipe["productivity-module-2"].ingredients = {{"productivity-module", 4}, {"control-2", 2}, {"mechanism-2", 2}, {"tooling-2", 2}, 
	{"fast-transport-belt", 1}, {"pump-2", 2}}

--Base "productivity-module-3"
data.raw.recipe["productivity-module-3"].category = "advanced-crafting"
data.raw.recipe["productivity-module-3"].energy_required = 40
data.raw.recipe["productivity-module-3"].ingredients = {{"productivity-module-2", 5}, {"control-3", 4}, {"mechanism-3", 4}, {"tooling-3", 4}, 
	{"expedited-transport-belt", 8}, {"pump-3", 4}, {"lasing-3", 1}}

--Base "effectivity-module"
data.raw.recipe["effectivity-module"].category = "crafting"
data.raw.recipe["effectivity-module"].energy_required = 10
data.raw.recipe["effectivity-module"].ingredients = {{"forging-aluminum", 1}, {"control-1", 1}, {"battery-1", 1}, {"glass", 4}, {"rubber", 4}, 
	{"cable-insulated", 4}}

--Base "effectivity-module-2"
data.raw.recipe["effectivity-module-2"].category = "crafting-with-fluid"
data.raw.recipe["effectivity-module-2"].energy_required = 20
data.raw.recipe["effectivity-module-2"].ingredients = {{"effectivity-module", 4}, {"control-2", 2}, {"battery-2", 2}, {"fiber-glass", 8}, 
	{"plastic-bar", 8}, {"gold-plate", 8}, {type = "fluid", name = "lubricant", amount = 20}}

--Base "effectivity-module-3"
data.raw.recipe["effectivity-module-3"].category = "crafting-with-fluid"
data.raw.recipe["effectivity-module-3"].energy_required = 40
data.raw.recipe["effectivity-module-3"].ingredients = {{"effectivity-module-2", 5}, {"control-3", 1}, {"battery-3", 4}, {"fused-quartz", 16}, 	
	{"fiber-plastic", 16}, {"silver-plate", 16}, {type = "fluid", name = "lubricant", amount = 40}}

--Base "rocket-silo"
data.raw.recipe["rocket-silo"].category = "crafting"
data.raw.recipe["rocket-silo"].energy_required = 100
data.raw.recipe["rocket-silo"].ingredients = {{"concrete", 4000}, {"forging-stainless", 2000}, {"forging-alloy", 1000}, {"assembling-machine-4", 100}, 
	{"radar-2", 50}, {"pipe-superalloy", 400}, {"pump-3", 50}, {"storage-tank-2", 50}}


--[[
data:extend(
{

--Base "beacon" placeholder
--
--MODULES
--Base "speed-module" placeholder
--Base "speed-module-2" placeholder
--Base "speed-module-3" placeholder
--Base "efficiency-module-1" placeholder
--Base "efficiency-module-2" placeholder
--Base "efficiency-module-3" placeholder
--Base "productivity-module" placeholder
--Base "productivity-module-2" placeholder
--Base "productivity-module-3" placeholder

})

]]--
