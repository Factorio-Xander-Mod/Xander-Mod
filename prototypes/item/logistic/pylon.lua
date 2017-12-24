--Base Overrides

--Small Electric Pole
data.raw.item["small-electric-pole"].order = "0"
data.raw.item["small-electric-pole"].fuel_category = "crude"
--Medium Electric Pole
data.raw.item["medium-electric-pole"].order = "1"
--Big Electric Pole
data.raw.item["big-electric-pole"].order = "3"
--Substation
data.raw.item["substation"].order = "5"


data:extend(
{

--Base "small-electric-pole" placeholder
	--order = "0"
--Base "medium-electric-pole" placeholder
	--order = "1"
--High-Tension Medium Power Pole
{
	type = "item",
	name = "medium-electric-pole-2",
	icon = "__xander-mod__/graphics/item/logistic/pylon/medium-electric-pole-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy-pipe-distribution",
	order = "2",
	place_result = "medium-electric-pole-2",
	stack_size = 50
},
--Base "big-electric-pole" placeholder
	--order = "3"
--High-Tension Big Power Pole
{
	type = "item",
	name = "big-electric-pole-2",
	icon = "__xander-mod__/graphics/item/logistic/pylon/big-electric-pole-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy-pipe-distribution",
	order = "4",
	place_result = "big-electric-pole-2",
	stack_size = 50
},
--Base "substation" placeholder
	--order = "5"
--High-Tension Substation
{
	type = "item",
	name = "substation-2",
	icon = "__xander-mod__/graphics/item/logistic/pylon/substation-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy-pipe-distribution",
	order = "6",
	place_result = "substation-2",
	stack_size = 50
}

}
)