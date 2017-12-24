--Base Overrides

--Iron gear
data.raw.item["iron-gear-wheel"].icon = "__xander-mod__/graphics/item/part/mechanical/gear-1.png"
data.raw.item["iron-gear-wheel"].subgroup = "mechanical"
data.raw.item["iron-gear-wheel"].order = "00"

--Iron stick - renamed to Iron Rod
data.raw.item["iron-stick"].icon = "__xander-mod__/graphics/item/part/mechanical/rod-1.png"
data.raw.item["iron-stick"].subgroup = "mechanical"
data.raw.item["iron-stick"].order = "07"


data:extend(
{

--Base "iron-gear" placeholder
	--order = "00"
--Brass Gear
{
	type = "item",
	name = "gear-2",
	icon = "__xander-mod__/graphics/item/part/mechanical/gear-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "01",
	stack_size = 100
},
--Steel Gear
{
	type = "item",
	name = "gear-3",
	icon = "__xander-mod__/graphics/item/part/mechanical/gear-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "02",
	stack_size = 100
},
--Alloy Steel Gear
{
	type = "item",
	name = "gear-4",
	icon = "__xander-mod__/graphics/item/part/mechanical/gear-4.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "03",
	stack_size = 100
},
--Bronze Bearing
{
	type = "item",
	name = "bearing-1",
	icon = "__xander-mod__/graphics/item/part/mechanical/bearing-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "04",
	stack_size = 100
},
--Alloy Steel Bearing
{
	type = "item",
	name = "bearing-2",
	icon = "__xander-mod__/graphics/item/part/mechanical/bearing-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "05",
	stack_size = 100
},
--Silicon Nitride Bearing
{
	type = "item",
	name = "bearing-3",
	icon = "__xander-mod__/graphics/item/part/mechanical/bearing-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "06",
	stack_size = 100
},
--Base "iron-stick" placeholder
	--order = "07"
--Steel Rod
{
	type = "item",
	name = "rod-2",
	icon = "__xander-mod__/graphics/item/part/mechanical/rod-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "08",
	stack_size = 100
},
--Alloy Steel Rod
{
	type = "item",
	name = "rod-3",
	icon = "__xander-mod__/graphics/item/part/mechanical/rod-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "09",
	stack_size = 100
},
--Titanium Alloy Rod
{
	type = "item",
	name = "rod-4",
	icon = "__xander-mod__/graphics/item/part/mechanical/rod-4.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "10",
	stack_size = 100
},
--Iron Shaft
{
	type = "item",
	name = "shaft-0",
	icon = "__xander-mod__/graphics/item/part/mechanical/shaft-0.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "11",
	stack_size = 100
},
--Steel Shaft
{
	type = "item",
	name = "shaft-1",
	icon = "__xander-mod__/graphics/item/part/mechanical/shaft-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "11",
	stack_size = 100
},
--Alloy Steel Shaft
{
	type = "item",
	name = "shaft-2",
	icon = "__xander-mod__/graphics/item/part/mechanical/shaft-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "12",
	stack_size = 100
},
--Titanium Shaft
{
	type = "item",
	name = "shaft-3",
	icon = "__xander-mod__/graphics/item/part/mechanical/shaft-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "mechanical",
	order = "13",
	stack_size = 100
}

}
)