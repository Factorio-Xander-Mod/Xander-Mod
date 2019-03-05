--New XM Technologies
--Group 5, subgroup 3
for i, entry in ipairs(xm_electromagnetic_technologies) do
	if entry [2] then 
		data:extend({xm_technology(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], 5, 3, i)})
	end
end


--Base Overrides

--Base "electric-engine"
data.raw.technology["electric-engine"].prerequisites = {"induction_1", "parts_1", "electronics"}
data.raw.technology["electric-engine"].effects = {{type = "unlock-recipe", recipe = "motor-1-b"}, {type = "unlock-recipe", recipe = "transformer-1"}}
data.raw.technology["electric-engine"].unit.ingredients = {{"automation-science-pack", 1}}
data.raw.technology["electric-engine"].order = "04-16"
--Base "optics"
data.raw.technology["optics"].effects = {{type = "unlock-recipe", recipe = "crystal-quartz"}, {type = "unlock-recipe", recipe = "boule-ruby"},
	{type = "unlock-recipe", recipe = "crystal-ruby"}}
data.raw.technology["optics"].prerequisites = {"glass-b", "chromium-refining", "aluminum-refining", "acheson-process"}
data.raw.technology["optics"].unit = {count = 200, ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}}, time = 30}
data.raw.technology["optics"].order = "04-21"
--Base "laser"
data.raw.technology["laser"].effects = {{type = "unlock-recipe", recipe = "lasing-1"}}
data.raw.technology["laser"].prerequisites = {"optics", "machines_2", "lamp_1"}
data.raw.technology["laser"].unit = {count = 250, ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}, time = 45}
data.raw.technology["laser"].order = "04-24"
--Base "battery"
data.raw.technology["battery"].effects = {{type = "unlock-recipe", recipe = "battery"}, {type = "unlock-recipe", recipe = "battery-1"}}
data.raw.technology["battery"].prerequisites = {"plastics", "lead-refining", "sulfuric-acid-a", "electronics"}
data.raw.technology["battery"].order = "04-27"