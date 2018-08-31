--New XM Technologies
--Group 5, subgroup 6
for i, entry in ipairs(xm_data_technologies) do
	if entry [2] then 
		data:extend({xm_technology(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], 5, 6, i)})
	end
end


--Base Overrides

--Base "electronics"
data.raw.technology["electronics"].effects = {{type = "unlock-recipe", recipe = "components-1-a"}, {type = "unlock-recipe", recipe = "electronic-circuit"}, 
	{type = "unlock-recipe", recipe = "control-1"}}
data.raw.technology["electronics"].prerequisites = {"soldering_1"}
data.raw.technology["electronics"].unit = {count = 50, ingredients = {{"science-pack-1", 1}}, time = 20}
data.raw.technology["electronics"].order = "05-05"

--Base "advanced-electronics"
data.raw.technology["advanced-electronics"].effects = {{type = "unlock-recipe", recipe = "components-2-a"}, 
	{type = "unlock-recipe", recipe = "advanced-circuit"}, {type = "unlock-recipe", recipe = "control-2"}, 
	{type = "unlock-recipe", recipe = "science-pack-3"}}
data.raw.technology["advanced-electronics"].prerequisites = {"electronics", "substrate_2", "tungsten-refining"}
data.raw.technology["advanced-electronics"].unit = {count = 200, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["advanced-electronics"].order = "05-06"

--Base "advanced-electronics-2"
data.raw.technology["advanced-electronics-2"].effects = {{type = "unlock-recipe", recipe = "components-3"}, 
	{type = "unlock-recipe", recipe = "processing-unit"}, 
	{type = "unlock-recipe", recipe = "control-3"}, {type = "unlock-recipe", recipe = "high-tech-science-pack"}}
data.raw.technology["advanced-electronics-2"].prerequisites = {"advanced-electronics", "substrate_3", "semiconductors_2", "soldering_2"}
data.raw.technology["advanced-electronics-2"].unit = {count = 400, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
	time = 45}
data.raw.technology["advanced-electronics-2"].order = "05-07"