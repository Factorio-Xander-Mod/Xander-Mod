--Base Overrides

--Base "pipe" (Iron Pipe)
data.raw.item["pipe"].order = "0"
data.raw.item["pipe"].subgroup = "pipe"


data:extend(
{

--Base "pipe" placeholder
	--order = "00"
--Copper Pipe
{
    type = "item",
    name = "pipe-copper",
    icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-copper.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "pipe",
    order = "1",
    place_result = "pipe-copper",
    stack_size = 100
},
--Steel Pipe
{
    type = "item",
    name = "pipe-steel",
    icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-steel.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "pipe",
    order = "2",
    place_result = "pipe-steel",
    stack_size = 100
},
--Monel Pipe
{
    type = "item",
    name = "pipe-monel",
    icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-monel.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "pipe",
    order = "3",
    place_result = "pipe-monel",
    stack_size = 100
},
--Stainless Steel Pipe
{
    type = "item",
    name = "pipe-stainless",
    icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-stainless.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "pipe",
    order = "4",
    place_result = "pipe-stainless",
    stack_size = 100
},
--Superalloy Pipe
{
    type = "item",
    name = "pipe-superalloy",
    icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-superalloy.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "pipe",
    order = "5",
    place_result = "pipe-superalloy",
    stack_size = 100
},
--Plastic Pipe
{
    type = "item",
    name = "pipe-plastic",
    icon = "__xander-mod__/graphics/item/logistic/pipe/pipe-plastic.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "pipe",
    order = "6",
    place_result = "pipe-plastic",
    stack_size = 100
}

}
)