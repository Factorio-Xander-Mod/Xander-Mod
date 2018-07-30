--New XM Technologies
--Group 5, subgroup 2
for i, entry in ipairs(xm_mechanical_technologies) do
	if entry [2] then 
		data:extend({xm_technology(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], 5, 2, i)})
	end
end


--Base Overrides

--Base "engine"
data.raw.technology["engine"].effects = {{type = "unlock-recipe", recipe = "engine-unit"}}
data.raw.technology["engine"].prerequisites = {"parts_1", "plumbing-steel", "rubber-a"}
data.raw.technology["engine"].order = "04-03"
--Base "flying"
data.raw.technology["flying"].prerequisites = {"parts_2", "battery_2", "forging-aluminum"}
data.raw.technology["flying"].order = "04-06"