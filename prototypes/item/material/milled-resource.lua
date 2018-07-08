--New XM tems
--Group 3, subgroup 3
for i, entry in ipairs(xm_milled_resource_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 3, i - 1, entry[3])})
	end
end