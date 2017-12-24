--Base Overrides

--Circuit 1
data.raw.item["electronic-circuit"].icon = "__xander-mod__/graphics/item/part/board/circuit-1.png"
data.raw.item["electronic-circuit"].subgroup = "board"
data.raw.item["electronic-circuit"].order = "06"
data.raw.item["electronic-circuit"].stack_size = 100

--Circuit 2
data.raw.item["advanced-circuit"].icon = "__xander-mod__/graphics/item/part/board/circuit-2.png"
data.raw.item["advanced-circuit"].subgroup = "board"
data.raw.item["advanced-circuit"].order = "07"
data.raw.item["advanced-circuit"].stack_size = 100

--Circuit 3
data.raw.item["processing-unit"].icon = "__xander-mod__/graphics/item/part/board/circuit-3.png"
data.raw.item["processing-unit"].subgroup = "board"
data.raw.item["processing-unit"].order = "08"
data.raw.item["processing-unit"].stack_size = 100


data:extend(
{

--Metallized Board 1
{
	type = "item",
	name = "metallized-1",
	icon = "__xander-mod__/graphics/item/part/board/metallized-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "board",
	order = "00",
	stack_size = 100
},
--Metallized Board 2
{
	type = "item",
	name = "metallized-2",
	icon = "__xander-mod__/graphics/item/part/board/metallized-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "board",
	order = "01",
	stack_size = 100
},
--Metallized Board 3
{
	type = "item",
	name = "metallized-3",
	icon = "__xander-mod__/graphics/item/part/board/metallized-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "board",
	order = "02",
	stack_size = 100
},
--Etched Board 2
{
	type = "item",
	name = "etched-2",
	icon = "__xander-mod__/graphics/item/part/board/etched-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "board",
	order = "04",
	stack_size = 100
},
--Etched Board 3
{
	type = "item",
	name = "etched-3",
	icon = "__xander-mod__/graphics/item/part/board/etched-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "board",
	order = "05",
	stack_size = 100
}
--Base "electronic-circuit" placeholder (Circuit 1)
	--order = "06"
--Base "advanced-circuit" placeholder (Circuit 2)
	--order = "07"
--Base "processing-unit" placeholder (Circuit 3)
	--order = "08"

}
)