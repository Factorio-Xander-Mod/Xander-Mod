--Base Overrides

--Base "chemical-plant" - renamed to XM "Basic Chemical Reactor"
data.raw.item["chemical-plant"].subgroup = "chemical-machine"
data.raw.item["chemical-plant"].order = "0"
--Centrifuge
data.raw.item["centrifuge"].subgroup = "chemical-machine"
data.raw.item["centrifuge"].order = "4"
 --Base "oil-refinery" - renamed to XM "Distillation Column"
data.raw.item["oil-refinery"].subgroup = "chemical-machine"
data.raw.item["oil-refinery"].order = "5"


data:extend(
{

--Base "chemical-plant" placeholder - remade to XM Burner Chemical Reactor
	--order = "0"
--Standard Chemical Reactor
{
	type = "item",
	name = "reactor-1",
	icon = "__xander-mod__/graphics/item/production/chemical/reactor-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "chemical-machine",
	order = "1",
	place_result = "reactor-1",
	stack_size = 50
},
--Catalytic Reactor (Improved Chemical Reactor)
{
	type = "item",
	name = "reactor-2",
	icon = "__xander-mod__/graphics/item/production/chemical/reactor-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "chemical-machine",
	order = "1",
	place_result = "reactor-2",
	stack_size = 50
},
--Basic Electrolyzer
{
	type = "item",
	name = "electrolyzer-1",
	icon = "__xander-mod__/graphics/item/production/chemical/electrolyzer-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "chemical-machine",
	order = "2",
	place_result = "electrolyzer-1",
	stack_size = 50
},
--Platinum Electrolyzer (Improved Electrolyzer)
{
	type = "item",
	name = "electrolyzer-2",
	icon = "__xander-mod__/graphics/item/production/chemical/electrolyzer-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "chemical-machine",
	order = "3",
	place_result = "electrolyzer-2",
	stack_size = 50
},
--Base "centrifuge" placeholder
	--order = "4"
--Base "oil-refinery" placeholder - renamed to XM "Distillation Column"
	--order = "5"
--XM True Chemical Plant
{
	type = "item",
	name = "reactor-3",
	icon = "__xander-mod__/graphics/item/production/chemical/reactor-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "chemical-machine",
	order = "6",
	place_result = "reactor-3",
	stack_size = 50
}

}
)