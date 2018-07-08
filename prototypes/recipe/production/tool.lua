--New XM Recipes
for i, entry in ipairs(xm_tool_recipes) do
	if entry [2] then 
		data:extend({xm_recipe(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], entry[9], entry[10])})
	end
end

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