--New XM Items
--Group 3, subgroup 8
for i, entry in ipairs(xm_plate_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 8, i - 1, entry[3])})
	end
end


--Base Overrides
for i, entry in ipairs(xm_plate_items) do
	if not entry[2] then
		xm_modify_base_item(entry[1], 3, 8, i - 1)
	end
end

--Steel Plate
data.raw.item["steel-plate"].icon = "__xander-mod__/graphics/item/material/plate/steel-plate.png"
data.raw.item["steel-plate"].place_as_tile =
{
	result = "steel",
	condition_size = 1,
	condition = {"water-tile"}
}