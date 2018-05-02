--Base Overrides

--Steel Plate
data.raw.item["steel-plate"].icon = "__xander-mod__/graphics/item/material/alloy/steel-plate.png"
data.raw.item["steel-plate"].subgroup = "alloy"
data.raw.item["steel-plate"].order = "10"
data.raw.item["steel-plate"].stack_size = 200
data.raw.item["steel-plate"].place_as_tile =
{
	result = "steel",
	condition_size = 1,
	condition = {"water-tile"}
}

for i, name in ipairs(alloy_item_names) do
	local order = "0"
	if i < 10 then order = "0" .. i - 1 else order = "" .. i - 1 end
	data:extend({xm_item(name, nil, 1, 1, order)})
end