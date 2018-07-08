--Base Overrides

--Base "stone-furnace" -> XM "Stone Brick Furnace"
data.raw.item["stone-furnace"].order = "0"
data.raw.item["stone-furnace"].icon = "__xander-mod__/graphics/item/production/smelting-machine/furnace-1.png"
data.raw.item["stone-furnace"].place_result = "furnace-1"

--Base "steel-furnace" -> XM "Blast Furnace"
data.raw.item["steel-furnace"].order = "2"
data.raw.item["steel-furnace"].place_result = "furnace-3"

--Base "electric-furnace" -> XM "Foundry Forge"
data.raw.item["electric-furnace"].order = "3"
data.raw.item["electric-furnace"].place_result = "furnace-5"

for i, entry in ipairs(xm_furnace_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], {"goes-to-quickbar"}, 6, 4, i - 1, entry[3])})
	end
end