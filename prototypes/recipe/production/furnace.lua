--New XM Recipes
for i, entry in ipairs(xm_furnace_recipes) do
	if entry [2] then 
		data:extend({xm_recipe(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], entry[9], entry[10])})
	end
end

--Base Overrides

--Base "stone-furnace"
data.raw.recipe["stone-furnace"].category = "basic-crafting"
data.raw.recipe["stone-furnace"].energy_required = 1
data.raw.recipe["stone-furnace"].ingredients = {{"stone-brick", 5}}

--Base "steel-furnace"
data.raw.recipe["steel-furnace"].category = "crafting"
data.raw.recipe["steel-furnace"].energy_required = 5
data.raw.recipe["steel-furnace"].ingredients = {{"brick-clay-graphite", 20}, {"forging-iron", 5}, {"pipe-steel", 5}, {"mechanism-1", 2}}

--Base "electric-furnace"
data.raw.recipe["electric-furnace"].category = "crafting"
data.raw.recipe["electric-furnace"].energy_required = 10
data.raw.recipe["electric-furnace"].ingredients = {{"brick-clay-graphite", 40}, {"graphite-block", 10}, {"forging-steel", 10}, {"transformer-1", 2}, 
	{"control-1", 2}, {"mechanism-1", 10}}