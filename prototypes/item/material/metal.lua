
--Base Overrides

--Base "copper-plate"
data.raw.item["copper-plate"].icon = "__xander-mod__/graphics/item/material/metal/copper.png"
data.raw.item["copper-plate"].subgroup = "metal"
data.raw.item["copper-plate"].order = "03"
data.raw.item["copper-plate"].stack_size = 200

--Base "iron-plate"
data.raw.item["iron-plate"].subgroup = "metal"
data.raw.item["iron-plate"].order = "05"
data.raw.item["iron-plate"].stack_size = 200

--Base "uranium-238" -> XM U-238 Metal Plate
data.raw.item["uranium-238"].icon = "__xander-mod__/graphics/item/material/metal/uranium-238.png"
data.raw.item["uranium-238"].subgroup = "metal"
data.raw.item["uranium-238"].order = "15"
data.raw.item["uranium-238"].stack_size = 200

--Base "uranium-235" -> XM Weapons-Grade Uranium Metal Plate
data.raw.item["uranium-235"].icon = "__xander-mod__/graphics/item/material/metal/uranium-weapons.png"
data.raw.item["uranium-235"].subgroup = "metal"
data.raw.item["uranium-235"].order = "16"
data.raw.item["uranium-235"].stack_size = 200


data:extend(
{

--Aluminum Plate
{
	type = "item",
	name = "aluminum-plate",
	icon = "__xander-mod__/graphics/item/material/metal/aluminum.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "00",
	stack_size = 200
},
--Chromium Plate
{
	type = "item",
	name = "chromium-plate",
	icon = "__xander-mod__/graphics/item/material/metal/chromium.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "01",
	stack_size = 200
},
--Cobalt plate
{
	type = "item",
	name = "cobalt-plate",
	icon = "__xander-mod__/graphics/item/material/metal/cobalt.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "02",
	stack_size = 200
},
--Base "copper-plate" placeholder
	--order = "03"
--Gold plate
{
	type = "item",
	name = "gold-plate",
	icon = "__xander-mod__/graphics/item/material/metal/gold.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "04",
	stack_size = 200
},
--Base "iron-plate" placeholder
	--order = "05"
--Lead Plate
{
	type = "item",
	name = "lead-plate",
	icon = "__xander-mod__/graphics/item/material/metal/lead.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "06",
	stack_size = 200
},
--Magnesium Plate
{
	type = "item",
	name = "magnesium-plate",
	icon = "__xander-mod__/graphics/item/material/metal/magnesium.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "07",
	stack_size = 200
},
--Nickel Plate
{
	type = "item",
	name = "nickel-plate",
	icon = "__xander-mod__/graphics/item/material/metal/nickel.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "08",
	stack_size = 200
},
--Platinum Plate
{
	type = "item",
	name = "platinum-plate",
	icon = "__xander-mod__/graphics/item/material/metal/platinum.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "09",
	stack_size = 200
},
--Rare Earth Metals Plate
{
	type = "item",
	name = "re-plate",
	icon = "__xander-mod__/graphics/item/material/metal/re.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "10",
	stack_size = 200
},
--Silver Plate
{
	type = "item",
	name = "silver-plate",
	icon = "__xander-mod__/graphics/item/material/metal/silver.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "11",
	stack_size = 200
},
--Tin Plate
{
	type = "item",
	name = "tin-plate",
	icon = "__xander-mod__/graphics/item/material/metal/tin.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "12",
	stack_size = 200
},
--Titanium Plate
{
	type = "item",
	name = "titanium-plate",
	icon = "__xander-mod__/graphics/item/material/metal/titanium.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "13",
	stack_size = 200
},
--Tungsten Block
{
	type = "item",
	name = "tungsten-block",
	icon = "__xander-mod__/graphics/item/material/metal/tungsten.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "14",
	stack_size = 200
},
--Vanadium Plate
{
	type = "item",
	name = "vanadium-plate",
	icon = "__xander-mod__/graphics/item/material/metal/vanadium.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "17",
	stack_size = 200
},
--Zinc plate
{
	type = "item",
	name = "zinc-plate",
	icon = "__xander-mod__/graphics/item/material/metal/zinc.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "metal",
	order = "18",
	stack_size = 200
}

}
)