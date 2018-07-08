--New XM Recipes
for i, entry in ipairs(xm_plate_recipes) do
	if entry [2] then 
		data:extend({xm_recipe(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], entry[9], entry[10])})
	end
end

--Base Overrides

--Base "copper-plate"
data.raw.recipe["copper-plate"].category = "kiln"
data.raw.recipe["copper-plate"].energy_required = 4

--Base "iron-plate"
data.raw.recipe["iron-plate"].energy_required = 4

--Base "steel-plate"
data.raw.recipe["steel-plate"].energy_required = 8
data.raw.recipe["steel-plate"].normal = 
{
	enabled = false,
	energy_required = 8,
	ingredients = {{"iron-plate", 4}},
	result = "steel-plate"
}
data.raw.recipe["steel-plate"].expensive = 
{
	enabled = false,
	energy_required = 16,
	ingredients = {{"iron-plate", 8}},
	result = "steel-plate"
}