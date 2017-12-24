--Base Overrides

--(Iron) Pipe-To-Ground
data.raw.item["pipe-to-ground"].order = "0"
data.raw.item["pipe-to-ground"].subgroup = "pipe-to-ground"


data:extend(
{

--Copper Pipe-To-Ground
{
	type = "item",
	name = "pipe-to-ground-copper",
	icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-to-ground-copper.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "pipe-to-ground",
	order = "1",
	place_result = "pipe-to-ground-copper",
	stack_size = 50
},
--Steel Pipe-To-Ground
{
	type = "item",
	name = "pipe-to-ground-steel",
	icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-to-ground-steel.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "pipe-to-ground",
	order = "2",
	place_result = "pipe-to-ground-steel",
	stack_size = 50
},
--Monel Pipe-To-Ground
{
	type = "item",
	name = "pipe-to-ground-monel",
	icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-to-ground-monel.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "pipe-to-ground",
	order = "3",
	place_result = "pipe-to-ground-monel",
	stack_size = 50
},
--Stainless Steel Pipe-To-Ground
{
	type = "item",
	name = "pipe-to-ground-stainless",
	icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-to-ground-stainless.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "pipe-to-ground",
	order = "4",
	place_result = "pipe-to-ground-stainless",
	stack_size = 50
},
--Superalloy Pipe-To-Ground
{
	type = "item",
	name = "pipe-to-ground-superalloy",
	icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-to-ground-superalloy.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "pipe-to-ground",
	order = "5",
	place_result = "pipe-to-ground-superalloy",
	stack_size = 50
},
--Plastic Pipe-To-Ground
{
	type = "item",
	name = "pipe-to-ground-plastic",
	icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-to-ground-plastic.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "pipe-to-ground",
	order = "6",
	place_result = "pipe-to-ground-plastic",
	stack_size = 50
}

}
)