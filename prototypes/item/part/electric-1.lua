--Base Overrides

--Copper cable - renamed to Heavy Copper Cable
data.raw.item["copper-cable"].subgroup = "electric-1"
data.raw.item["copper-cable"].order = "04"
data.raw.item["copper-cable"].stack_size = 100


data:extend(
{

--Tinned Copper Sheet
{
	type = "item",
	name = "sheet-tinned",
	icon = "__xander-mod__/graphics/item/part/electric-1/sheet-tinned.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-1",
	order = "00",
	stack_size = 100
},
--Steel Sheet
{
	type = "item",
	name = "sheet-steel",
	icon = "__xander-mod__/graphics/item/part/electric-1/sheet-steel.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-1",
	order = "01",
	stack_size = 100
},
--Gilded Silver Sheet
{
	type = "item",
	name = "sheet-gilded",
	icon = "__xander-mod__/graphics/item/part/electric-1/sheet-gilded.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-1",
	order = "02",
	stack_size = 100
},
--Mu Metal Sheet
{
	type = "item",
	name = "sheet-mu",
	icon = "__xander-mod__/graphics/item/part/electric-1/sheet-mu.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-1",
	order = "03",
	stack_size = 100
},
--Base "copper-cable" placeholder
	--order = "04"
--Insulated Copper Cable 
{
	type = "item",
	name = "cable-insulated",
	icon = "__xander-mod__/graphics/item/part/electric-1/cable-insulated.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-1",
	order = "05",
	stack_size = 100
},
--Glass Insulator
{
	type = "item",
	name = "insulator-1",
	icon = "__xander-mod__/graphics/item/part/electric-1/insulator-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-1",
	order = "06",
	stack_size = 100
},
--Ceramic Insulator
{
	type = "item",
	name = "insulator-2",
	icon = "__xander-mod__/graphics/item/part/electric-1/insulator-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-1",
	order = "07",
	stack_size = 100
}

}
)