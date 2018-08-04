--New XM Items
--Group 3, subgroup 2
for i, name in ipairs(xm_all_resources) do
	if xm_resources_xm_new[i] and xm_reources_solid[i] then
		data:extend({xm_item(name, nil, 3, 2, i - 1, false)})
	end
end


--Base Overrides
for i, name in ipairs(xm_all_resources) do
	if xm_reources_solid[i] and not xm_resources_xm_new[i] then
		xm_modify_base_item(name, 3, 2, i - 1)
	end
end

--Coal
data.raw.item["coal"].icon = "__base__/graphics/icons/icons-new/coal.png"
data.raw.item["coal"].fuel_value = "16MJ"
data.raw.item["coal"].fuel_category = "crude"

--Copper Ore
data.raw.item["copper-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/copper-ore.png"

--Iron Ore
data.raw.item["iron-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/iron-ore.png"

--Stone
data.raw.item["stone"].icon = "__base__/graphics/icons/icons-new/stone.png"