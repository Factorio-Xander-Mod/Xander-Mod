--Base Overrides

--Battery - renamed to Lead-Acid Cell
data.raw.item["battery"].subgroup = "electric-3"
data.raw.item["battery"].order = "00"
data.raw.item["battery"].stack_size = 100


data:extend(
{

--Base "battery" placeholder
	--order = "00"
--Silver-Zinc Rechargeable Cell
{
	type = "item",
	name = "cell-2",
	icon = "__xander-mod__/graphics/item/part/electric-3/cell-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-3",
	order = "01",
	stack_size = 100
},
--Lithium-Ion Supercapacitor Cell
{
	type = "item",
	name = "cell-3",
	icon = "__xander-mod__/graphics/item/part/electric-3/cell-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-3",
	order = "02",
	stack_size = 100
},
--Lead-Acid Battery
{
	type = "item",
	name = "battery-1",
	icon = "__xander-mod__/graphics/item/part/electric-3/battery-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-3",
	order = "03",
	stack_size = 100
},
--Sinver-Zinc Battery
{
	type = "item",
	name = "battery-2",
	icon = "__xander-mod__/graphics/item/part/electric-3/battery-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-3",
	order = "04",
	stack_size = 100
},
--Lithium-Ion Supercapacitor Battery
{
	type = "item",
	name = "battery-3",
	icon = "__xander-mod__/graphics/item/part/electric-3/battery-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-3",
	order = "05",
	stack_size = 100
}

}
)