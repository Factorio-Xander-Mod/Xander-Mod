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


data:extend(
{

--Apatite
{
	type = "item",
	name = "apatite",
	icon = "__xander-mod__/graphics/item/material/raw-resource/phosphorite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "00",
	stack_size = 200
},
--Bauxite
{
	type = "item",
	name = "bauxite",
	icon = "__xander-mod__/graphics/item/material/raw-resource/laterite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "01",
	stack_size = 200
},
--Garnierite
{
	type = "item",
	name = "garnierite",
	icon = "__xander-mod__/graphics/item/material/raw-resource/magnetic.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "10",
	stack_size = 200
},
--Granitic Ore
{
	type = "item",
	name = "granitic-ore",
	icon = "__xander-mod__/graphics/item/material/raw-resource/skarn.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "11",
	stack_size = 200
},
--Lead ore
{
	type = "item",
	name = "lead-ore",
	icon = "__xander-mod__/graphics/item/material/raw-resource/massive-sulfide.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "15",
	stack_size = 200
},
--Phosphate Rock
{
	type = "item",
	name = "phosphate-rock",
	icon = "__xander-mod__/graphics/item/material/raw/phosphate-rock.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "17",
	stack_size = 200
},
--Rutile
{
	type = "item",
	name = "rutile",
	icon = "__xander-mod__/graphics/item/material/raw/rutile.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "18",
	stack_size = 200
},
--Sulfidic ore
{
	type = "item",
	name = "sulfidic-ore",
	icon = "__xander-mod__/graphics/item/material/raw-resource/igneous-sulfide.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "22",
	stack_size = 200
},
--Base "uranium-ore" placeholder
	--order = "23"
--Vanadium Magnetite
{
	type = "item",
	name = "vanadium-magnetite",
	icon = "__xander-mod__/graphics/item/material/raw/vanadium-magnetite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "24",
	stack_size = 200
},
--Zirconia Sand
{
	type = "item",
	name = "zirconia",
	icon = "__xander-mod__/graphics/item/material/raw/zirconia.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "25",
	stack_size = 200
}

})