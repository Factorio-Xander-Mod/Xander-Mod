--New XM Recipes
for i, entry in ipairs(xm_build_recipes) do
	if entry [2] then 
		data:extend({xm_recipe(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], entry[9], entry[10])})
	end
end

--Base Overrides

--Base "landfill"
data.raw.recipe["landfill"].category = "sluice"
data.raw.recipe["landfill"].energy_required = 1
data.raw.recipe["landfill"].ingredients = {{"stone", 6}, {"modified", 20}, {"sand", 3}, {"clay", 2}}
data.raw.recipe["landfill"].crafting_machine_tint = {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}

--Base "concrete"
data.raw.recipe["concrete"].category = "sluice"
data.raw.recipe["concrete"].energy_required = 10
data.raw.recipe["concrete"].ingredients = {{"modified", 6}, {"sand", 3}, {"cement-powder", 4}, {type = "fluid", name = "water", amount = 20}, {"rod-2", 1}}
data.raw.recipe["concrete"].crafting_machine_tint = {primary = {r = 0.48, g = 0.34, b = 0.24}, secondary = {r = 0.5, g = 0.5, b = 0.5}, tertiary = {r = 0.75, g = 0.75, b = 0.75}}

--Base "hazard-concrete"
data.raw.recipe["hazard-concrete"].energy_required = 0.2

--Base "stone-brick"
data.raw.recipe["stone-brick"].category = "basic-machine"
data.raw.recipe["stone-brick"].energy_required = 2