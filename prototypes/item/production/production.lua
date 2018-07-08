
--Base Overrides

--Assembling Machine 1
data.raw.item["assembling-machine-1"].order = "04"
data.raw.item["assembling-machine-1"].icon = "__xander-mod__/graphics/item/production/production-machine/assembling-machine-1.png"
--Assembling Machine 2
data.raw.item["assembling-machine-2"].order = "05"
data.raw.item["assembling-machine-2"].icon = "__xander-mod__/graphics/item/production/production-machine/assembling-machine-2.png"
--Assembling Machine 3
data.raw.item["assembling-machine-3"].order = "06"
data.raw.item["assembling-machine-3"].icon = "__xander-mod__/graphics/item/production/production-machine/assembling-machine-3.png"
--Lab
data.raw.item["lab"].order = "09"

for i, entry in ipairs(xm_production_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], {"goes-to-quickbar"}, 6, 6, i - 1, entry[3])})
	end
end