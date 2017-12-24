
--Base Overrides

--Base "roboport"
data.raw.item["roboport"].order = "0"
--Base "construction-robot"
data.raw.item["construction-robot"].order = "2"
--Base "logistic-robot"
data.raw.item["logistic-robot"].order = "4"
--Base "logistic-chest-storage"
data.raw.item["logistic-chest-storage"].order = "6"
--Base "logistic-chest-passive-provider"
data.raw.item["logistic-chest-passive-provider"].order = "7"
--Base "logistic-chest-active-provider"
data.raw.item["logistic-chest-active-provider"].order = "8"
--Base "logistic-chest-requester"
data.raw.item["logistic-chest-requester"].order = "9"


data:extend(
{

--Base "roboport" placeholder
	--order = "0"
--XM Long-Range Roboport
{
	type = "item",
	name = "roboport-2",
	icon = "__xander-mod__/graphics/item/logistic/robot/roboport-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "logistic-network",
	order = "1",
	place_result = "roboport-2",
	stack_size = 50
},
--Base "construction-robot" placeholder
	--order = "2"
--XM Durable Construction Robot
{
	type = "item",
	name = "construction-robot-2",
	icon = "__xander-mod__/graphics/item/logistic/robot/construction-robot-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "logistic-network",
	order = "3",
	place_result = "construction-robot-2",
	stack_size = 50
},
--Base "logistic-robot" placeholder
	--order = "4"
--XM Fast Logistic Robot
{
	type = "item",
	name = "logistic-robot-2",
	icon = "__xander-mod__/graphics/item/logistic/robot/logistic-robot-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "logistic-network",
	order = "5",
	place_result = "logistic-robot-2",
	stack_size = 50
}
--Base "logistic-chest-storage" placeholder
	--order = "6"
--Base "logistic-chest-passive-provider" placeholder
	--order = "7"
--Base "logistic-chest-active-provider" placeholder
	--order = "8"
--Base "logistic-chest-requester" placeholder
	--order = "9"

}
)