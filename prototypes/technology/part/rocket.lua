--New XM Technologies
--Group 5, subgroup 10
for i, entry in ipairs(xm_rocket_technologies) do
	if entry [2] then 
		data:extend({xm_technology(entry[1], entry[3], entry[4], entry[5], entry[6], entry[7], entry[8], 5, 10, i)})
	end
end