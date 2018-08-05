--==========terrain
--Group 3, subgroup 1
for i, entry in ipairs(xm_terrain_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 1, i - 1, entry[3])})
	end
end

--Base Override - Landfill
data.raw.item["landfill"].icon = "__xander-mod__/graphics/item/material/terrain/landfill.png"
data.raw.item["landfill"].place_as_tile = {result = "gravel", condition_size = 1, condition = {"ground-tile"}}

--==========raw-resource
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


--==========milled-resource
--Group 3, subgroup 3
for i, entry in ipairs(xm_milled_resource_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 3, i - 1, entry[3])})
	end
end


--==========concentrate
--Group 3, subgroup 4
for i, entry in ipairs(xm_concentrate_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 4, i - 1, entry[3])})
	end
end


--==========oxide
--Group 3, subgroup 5
for i, entry in ipairs(xm_oxide_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 5, i - 1, entry[3])})
	end
end


--==========sponge
--Group 3, subgroup 6
for i, entry in ipairs(xm_sponge_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 6, i - 1, entry[3])})
	end
end


--==========plate
--Group 3, subgroup 7
for i, entry in ipairs(xm_plate_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 7, i - 1, entry[3])})
	end
end

--Base Overrides
for i, entry in ipairs(xm_plate_items) do
	if not entry[2] then
		xm_modify_base_item(entry[1], 3, 7, i - 1)
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


--==========ingot
--Group 3, subgroup 8
for i, entry in ipairs(xm_ingot_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 8, i - 1, entry[3])})
	end
end

--Base Overrides
for i, entry in ipairs(xm_ingot_items) do
	if not entry[2] then
		xm_modify_base_item(entry[1], 3, 8, i - 1)
	end
end
--Uranium 238 Ingot
data.raw.item["uranium-238"].icon = "__xander-mod__/graphics/item/material/ingot/uranium-238.png"
--Uranium 235 Ingot (actually weapons-grade, 50% U-235)
data.raw.item["uranium-235"].icon = "__xander-mod__/graphics/item/material/ingot/uranium-235.png"


--==========billet
--Group 3, subgroup 9
for i, entry in ipairs(xm_billet_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 9, i - 1, entry[3])})
	end
end


--==========nonmetal
--Group 3, subgroup 10
for i, entry in ipairs(xm_nonmetal_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 10, i - 1, entry[3])})
	end
end
--Add special parameters to XM items
--Charcoal
data.raw.item["charcoal"].fuel_value = "5MJ"
data.raw.item["charcoal"].fuel_category = "chemical"
--Coke
data.raw.item["coke"].fuel_value = "5MJ"
data.raw.item["coke"].fuel_category = "chemical"
--Activated Carbon
data.raw.item["activated-carbon"].fuel_value = "4MJ"
data.raw.item["activated-carbon"].fuel_category = "chemical"

--Base Overrides
for i, entry in ipairs(xm_nonmetal_items) do
	if not entry[2] then
		xm_modify_base_item(entry[1], 3, 10, i - 1)
	end
end


--==========ceramic
--Group 3, subgroup 11
for i, entry in ipairs(xm_ceramic_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 11, i - 1, entry[3])})
	end
end

--Add special parameters to XM items
data.raw.item["brick-clay"].place_as_tile =
{
	result = "brick",
	condition_size = 1,
	condition = {"water-tile"}
}
data.raw.item["fused-basalt"].place_as_tile =
{
	result = "basalt",
	condition_size = 1,
	condition = {"water-tile"}
}
data.raw.item["fused-quartz"].place_as_tile =
{
	result = "quartz",
	condition_size = 1,
	condition = {"water-tile"}
}


--==========salt
--Group 3, subgroup 12
for i, entry in ipairs(xm_salt_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 12, i - 1, entry[3])})
	end
end


--==========organic
--Group 3, subgroup 13
for i, entry in ipairs(xm_organic_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 13, i - 1, entry[3])})
	end
end


--==========polymer
--Group 3, subgroup 14
for i, entry in ipairs(xm_polymer_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 14, i - 1, entry[3])})
	end
end

--Base Overrides
for i, entry in ipairs(xm_polymer_items) do
	if not entry[2] then
		xm_modify_base_item(entry[1], 3, 14, i - 1)
	end
end
--Raw Wood
data.raw.item["raw-wood"].fuel_category = "crude"
--Wood
data.raw.item["wood"].fuel_category = "crude"


--==========energetic
--Group 3, subgroup 15
for i, entry in ipairs(xm_energetic_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 15, i - 1, entry[3])})
	end
end

--Base Overrides
for i, entry in ipairs(xm_energetic_items) do
	if not entry[2] then
		xm_modify_base_item(entry[1], 3, 15, i - 1)
	end
end
--Solid Fuel
data.raw.item["solid-fuel"].fuel_value = "32MJ"
--Explosives
data.raw.item["explosives"].icon = "__xander-mod__/graphics/item/material/energetic/trinitrotoluene.png"


--==========waste
--Group 3, subgroup 16
for i, entry in ipairs(xm_waste_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 3, 16, i - 1, entry[3])})
	end
end


--==========fluid-recipes
--==========raw-material