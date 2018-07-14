--New XM Items
--Group 3, subgroup 2
for i, name in ipairs(xm_all_resources) do
	if xm_resources_xm_new[i] and xm_reources_solid[i] then
		data:extend({xm_item(name, nil, 3, 2, i - 1, false)})
	end
end


--Base Overrides

--Coal
data.raw.item["coal"].stack_size = 200
data.raw.item["coal"].icon = "__base__/graphics/icons/icons-new/coal.png"
data.raw.item["coal"].fuel_value = "16MJ"
data.raw.item["coal"].fuel_category = "crude"
data.raw.item["coal"].subgroup = "raw-resource"
data.raw.item["coal"].order = "06"

--Copper Ore
data.raw.item["copper-ore"].stack_size = 200
data.raw.item["copper-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/copper-ore.png"
data.raw.item["copper-ore"].subgroup = "raw-resource"
data.raw.item["copper-ore"].order = "07"

--Iron Ore
data.raw.item["iron-ore"].stack_size = 200
data.raw.item["iron-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/iron-ore.png"
data.raw.item["iron-ore"].subgroup = "raw-resource"
data.raw.item["iron-ore"].order = "14"

--Stone
data.raw.item["stone"].stack_size = 200
data.raw.item["stone"].icon = "__base__/graphics/icons/icons-new/stone.png"
data.raw.item["stone"].subgroup = "raw-resource"
data.raw.item["stone"].order = "21"

--Uranium Ore
data.raw.item["uranium-ore"].stack_size = 200
data.raw.item["uranium-ore"].subgroup = "raw-resource"
data.raw.item["uranium-ore"].order = "23"