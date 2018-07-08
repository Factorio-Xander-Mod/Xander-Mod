--New XM Recipes
for i, entry in ipairs(xm_assembly_recipes) do
	if entry [2] then 
		data:extend({xm_recipe(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], entry[9], entry[10])})
	end
end


--Base Overrides

--Base "engine-unit"
data.raw.recipe["engine-unit"].energy_required = 5
data.raw.recipe["engine-unit"].ingredients = {{"piston-cylinder", 1}, {"mechanism-1", 1}, {"rubber", 2}}

--Base "flying-robot-frame"
data.raw.recipe["flying-robot-frame"].energy_required = 10
data.raw.recipe["flying-robot-frame"].ingredients = {{"battery-2", 1}, {"control-2", 1}, {"forging-aluminum", 1}, {"motor-3", 1}}