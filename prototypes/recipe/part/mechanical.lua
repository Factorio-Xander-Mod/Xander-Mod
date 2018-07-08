--New XM Recipes
for i, entry in ipairs(xm_mechanical_recipes) do
	if entry [2] then 
		data:extend({xm_recipe(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], entry[9], entry[10])})
	end
end


--Base Overrides

--Base "iron-gear-wheel"
data.raw.recipe["iron-gear-wheel"].category = "basic-machine"
data.raw.recipe["iron-gear-wheel"].normal = {energy_required = 4, ingredients = {{"blank-1", 1}}, result = "iron-gear-wheel"}
data.raw.recipe["iron-gear-wheel"].expensive = {energy_required = 4, ingredients = {{"blank-1", 2}}, result = "iron-gear-wheel"}

--Base "iron-stick"
data.raw.recipe["iron-stick"].category = "basic-machine"
data.raw.recipe["iron-stick"].energy_required = 1
data.raw.recipe["iron-stick"].ingredients = {{"iron-plate", 1}}
data.raw.recipe["iron-stick"].result_count = 1