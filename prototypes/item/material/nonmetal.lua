--New XM Items
--Group 3, subgroup 12
for i, entry in ipairs(xm_nonmetal_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 12, i - 1, entry[3])})
	end
end

--Add special parameters
data.raw.item["charcoal"].fuel_value = "5MJ"
data.raw.item["charcoal"].fuel_category = "chemical"

data.raw.item["coke"].fuel_value = "5MJ"
data.raw.item["coke"].fuel_category = "chemical"

data.raw.item["activated-carbon"].fuel_value = "4MJ"
data.raw.item["activated-carbon"].fuel_category = "chemical"


--Base Overrides
for i, entry in ipairs(xm_nonmetal_items) do
	if not entry[2] then
		xm_modify_base_item(entry[1], 3, 12, i - 1)
	end
end