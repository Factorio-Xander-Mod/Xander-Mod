--Base Overrides

--Base "stone-furnace" -> XM "Stone Brick Furnace"
data.raw.item["stone-furnace"].order = "0"
data.raw.item["stone-furnace"].icon = "__xander-mod__/graphics/item/production/furnace/furnace-1.png"
data.raw.item["stone-furnace"].place_result = "furnace-1"

--Base "steel-furnace" -> XM "Blast Furnace"
data.raw.item["steel-furnace"].order = "2"
data.raw.item["steel-furnace"].place_result = "furnace-3"

--Base "electric-furnace" -> XM "Foundry Forge"
data.raw.item["electric-furnace"].order = "3"
data.raw.item["electric-furnace"].place_result = "furnace-5"


data:extend(
{

--Base "stone-furnace" - changed to result in the XM assembler-type "Stone Brick Furnace" when placed in the world
	--order = "0"
--[[Stone Brick Furnace - placeholder item to satisfy the "needs placer item" for the base stone furnace entity
{
	type = "item",
	name = "furnace-1",
	icon = "__base__/graphics/icons/stone-furnace.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "smelting-machine",
	order = "0",
	place_result = "stone-furnace",
	stack_size = 50
},]]--
--Clay Brick Furnace
{
	type = "item",
	name = "furnace-2",
	icon = "__xander-mod__/graphics/item/production/furnace/furnace-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "smelting-machine",
	order = "1",
	place_result = "furnace-2",
	stack_size = 50
},
--Base "steel-furnace" - replaced by XM "Blast Furnace"
	--order = "2"
--[[Blast Furnace (XM re-write of base "steel-furnace")
{
	type = "item",
	name = "furnace-3",
	icon = "__base__/graphics/icons/steel-furnace.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "smelting-machine",
	order = "2",
	place_result = "furnace-3",
	stack_size = 50
},]]--
--Electric Refining Furnace
{
	type = "item",
	name = "furnace-4",
	icon = "__xander-mod__/graphics/item/production/furnace/furnace-4.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "smelting-machine",
	order = "3",
	place_result = "furnace-4",
	stack_size = 50
},
--Base "electric-furnace" placeholder - replaced by XM "Foundry Forge"
	--order = "4"
--[[Electric Foundry-Forge
{
	type = "item",
	name = "furnace-5",
	icon = "__base__/graphics/icons/electric-furnace.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "smelting-machine",
	order = "5",
	place_result = "furnace-5",
	stack_size = 50
},]]--
--Arc Furnace
{
	type = "item",
	name = "furnace-6",
	icon = "__xander-mod__/graphics/item/production/furnace/furnace-6.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "smelting-machine",
	order = "6",
	place_result = "furnace-6",
	stack_size = 50
}

}
)