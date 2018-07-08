--New XM Items
--Group 3, subgroup 8
for i, entry in ipairs(xm_plate_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 8, i - 1, entry[3])})
	end
end


--Base Overrides

--Base "copper-plate"
data.raw.item["copper-plate"].subgroup = "plate"
data.raw.item["copper-plate"].order = "03"
data.raw.item["copper-plate"].stack_size = 200

--Base "iron-plate"
data.raw.item["iron-plate"].subgroup = "plate"
data.raw.item["iron-plate"].order = "05"
data.raw.item["iron-plate"].stack_size = 200

--Steel Plate
data.raw.item["steel-plate"].icon = "__xander-mod__/graphics/item/material/plate/steel-plate.png"
data.raw.item["steel-plate"].subgroup = "plate"
data.raw.item["steel-plate"].order = "10"
data.raw.item["steel-plate"].stack_size = 200
data.raw.item["steel-plate"].place_as_tile =
{
	result = "steel",
	condition_size = 1,
	condition = {"water-tile"}
}