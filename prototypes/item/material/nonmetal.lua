
--Base Overrides

--Sulfur
data.raw.item["sulfur"].subgroup = "nonmetal"
data.raw.item["sulfur"].order = "9"
data.raw.item["sulfur"].stack_size = 200


data:extend(
{

--Charcoal
{
	type = "item",
	name = "charcoal",
	icon = "__xander-mod__/graphics/item/material/nonmetal/charcoal.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	fuel_value = "4MJ",
	fuel_category = "chemical",
	subgroup = "nonmetal",
	order = "0",
	stack_size = 200
},
--Coke
{
	type = "item",
	name = "coke",
	icon = "__xander-mod__/graphics/item/material/nonmetal/coke.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	fuel_value = "4MJ",
	fuel_category = "chemical",
	subgroup = "nonmetal",
	order = "1",
	stack_size = 200
},
--Graphite Powder
{
	type = "item",
	name = "graphite-powder",
	icon = "__xander-mod__/graphics/item/material/nonmetal/graphite-powder.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "nonmetal",
	order = "2",
	stack_size = 200
},
--Graphite Block
{
	type = "item",
	name = "graphite-block",
	icon = "__xander-mod__/graphics/item/material/nonmetal/graphite-block.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "nonmetal",
	order = "3",
	stack_size = 50
},
--Activated Carbon
{
	type = "item",
	name = "activated-carbon",
	icon = "__xander-mod__/graphics/item/material/nonmetal/activated-carbon.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	fuel_value = "4MJ",
	fuel_category = "chemical",
	subgroup = "nonmetal",
	order = "4",
	stack_size = 200
},
--Metallurgical Silicon Plate
{
	type = "item",
	name = "metallurgical-plate",
	icon = "__xander-mod__/graphics/item/material/nonmetal/metallurgical-plate.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "nonmetal",
	order = "5",
	stack_size = 200
},
--Metallurgical Silicon Powder
{
	type = "item",
	name = "metallurgical-powder",
	icon = "__xander-mod__/graphics/item/material/nonmetal/metallurgical-powder.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "nonmetal",
	order = "6",
	stack_size = 200
},
--Ultrapure Silicon Powder
{
	type = "item",
	name = "ultrapure-powder",
	icon = "__xander-mod__/graphics/item/material/nonmetal/ultrapure-powder.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "nonmetal",
	order = "7",
	stack_size = 200
},
--Phosphorous (Red)
{
	type = "item",
	name = "phosphorus",
	icon = "__xander-mod__/graphics/item/material/nonmetal/phosphorus.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "nonmetal",
	order = "8",
	stack_size = 200
}
--Base "sulfur" placeholder
	--order = "9"

}
)