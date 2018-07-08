--New XM Items
--Group 5, subgroup 2
for i, entry in ipairs(xm_mechanical_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 5, 2, i - 1, entry[3])})
	end
end

--Base Overrides

--Iron gear
data.raw.item["iron-gear-wheel"].icon = "__xander-mod__/graphics/item/intermediate-products/mechanical/gear-1.png"
data.raw.item["iron-gear-wheel"].subgroup = "mechanical"
data.raw.item["iron-gear-wheel"].order = "00"

--Iron stick - renamed to Iron Rod
data.raw.item["iron-stick"].icon = "__xander-mod__/graphics/item/intermediate-products/mechanical/rod-1.png"
data.raw.item["iron-stick"].subgroup = "mechanical"
data.raw.item["iron-stick"].order = "07"