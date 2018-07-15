--New XM Items
--Group 3, subgroup 6
for i, entry in ipairs(xm_oxide_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 6, i - 1, entry[3])})
	end
end