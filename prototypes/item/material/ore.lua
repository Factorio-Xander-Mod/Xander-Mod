
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
data.raw.item["copper-ore"].icon = "__base__/graphics/icons/icons-new/iron-ore.png"
data.raw.item["copper-ore"].subgroup = "raw-resource"
data.raw.item["copper-ore"].order = "07"

--Iron Ore
data.raw.item["iron-ore"].stack_size = 200
data.raw.item["iron-ore"].icon = "__xander-mod__/graphics/item/material/resource/iron.png"
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
	icon = "__xander-mod__/graphics/item/material/resource/apatite.png",
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
	icon = "__xander-mod__/graphics/item/material/resource/bauxite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "01",
	stack_size = 200
},
--Cassiterite
{
	type = "item",
	name = "cassiterite",
	icon = "__xander-mod__/graphics/item/material/resource/cassiterite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "02",
	stack_size = 200
},
--Chalcocite
{
	type = "item",
	name = "chalcocite",
	icon = "__xander-mod__/graphics/item/material/resource/chalcocite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "03",
	stack_size = 200
},
--Chalcopyrite
{
	type = "item",
	name = "chalcopyrite",
	icon = "__xander-mod__/graphics/item/material/resource/chalcopyrite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "04",
	stack_size = 200
},
--Chromite
{
	type = "item",
	name = "chromite",
	icon = "__xander-mod__/graphics/item/material/resource/chromite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "05",
	stack_size = 200
},
--Base "coal" placeholder
	--order = "06"
--Base "copper-ore" placeholder
	--order = "07"
--Fluorite
{
	type = "item",
	name = "fluorite",
	icon = "__xander-mod__/graphics/item/material/resource/fluorite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "08",
	stack_size = 200
},
--Galena
{
	type = "item",
	name = "galena",
	icon = "__xander-mod__/graphics/item/material/resource/galena.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "09",
	stack_size = 200
},
--Garnierite
{
	type = "item",
	name = "garnierite",
	icon = "__xander-mod__/graphics/item/material/resource/garnierite.png",
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
	icon = "__xander-mod__/graphics/item/material/resource/granitic.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "11",
	stack_size = 200
},
--Heavy sand
{
	type = "item",
	name = "heavy-sand",
	icon = "__xander-mod__/graphics/item/material/resource/heavy.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "12",
	stack_size = 200
},
--Hematite
{
	type = "item",
	name = "hematite",
	icon = "__xander-mod__/graphics/item/material/resource/hematite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "13",
	stack_size = 200
},
--Base "iron-ore" placeholder
	--order = "14"
--Lead ore
{
	type = "item",
	name = "lead-ore",
	icon = "__xander-mod__/graphics/item/material/resource/lead.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "15",
	stack_size = 200
},
--Monazite
{
	type = "item",
	name = "monazite",
	icon = "__xander-mod__/graphics/item/material/resource/monazite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "16",
	stack_size = 200
},
--Phosphate Rock
{
	type = "item",
	name = "phosphate-rock",
	icon = "__xander-mod__/graphics/item/material/resource/phosphate-rock.png",
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
	icon = "__xander-mod__/graphics/item/material/resource/rutile.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "18",
	stack_size = 200
},
--Scheelite
{
	type = "item",
	name = "scheelite",
	icon = "__xander-mod__/graphics/item/material/resource/scheelite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "19",
	stack_size = 200
},
--Sphalerite
{
	type = "item",
	name = "sphalerite",
	icon = "__xander-mod__/graphics/item/material/resource/sphalerite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "20",
	stack_size = 200
},
--Base "stone" placeholder
	--order = "21"
--Sulfidic ore
{
	type = "item",
	name = "sulfidic-ore",
	icon = "__xander-mod__/graphics/item/material/resource/sulfidic.png",
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
	icon = "__xander-mod__/graphics/item/material/resource/vanadium-magnetite.png",
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
	icon = "__xander-mod__/graphics/item/material/resource/zirconia.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-resource",
	order = "25",
	stack_size = 200
}

}
)