--New XM Items
--Group 3, subgroup 10
for i, entry in ipairs(xm_alloy_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 11, i - 1, entry[3])})
	end
end