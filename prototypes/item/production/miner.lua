--Base Overrides

--Offshore Pump
data.raw.item["offshore-pump"].order = "0"
--Burner Mining Drill
data.raw.item["burner-mining-drill"].order = "1"
--Mining Drill
data.raw.item["electric-mining-drill"].order = "2"
--Pumpjack
data.raw.item["pumpjack"].order = "4"


data:extend(
{

--Base "offshore-pump" placeholder
	--order = "0"
--XM Offshore Pump 1
{
	type = "item",
	name = "offshore-pump-1",
	icon = "__xander-mod__/graphics/item/production/miner/offshore-pump-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "0",
	place_result = "offshore-pump-1",
	stack_size = 50
},
--Logging Camp
{
	type = "item",
	name = "logging-camp",
	icon = "__xander-mod__/graphics/item/production/miner/logging-camp.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "1",
	place_result = "logging-camp",
	stack_size = 50
},
--Base "burner-mining-drill" placeholder
	--order = "1"
--Base "electric-mining-drill" placeholder
	--order = "2"
--Electric Shovel Excavator
{
	type = "item",
	name = "mining-drill-3",
	icon = "__xander-mod__/graphics/item/production/miner/mining-drill-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "3",
	place_result = "mining-drill-3",
	stack_size = 50
},
--Bucket Wheel Excavator!!
{
	type = "item",
	name = "mining-drill-4",
	icon = "__xander-mod__/graphics/item/production/miner/mining-drill-4.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "4",
	place_result = "mining-drill-4",
	stack_size = 50
},
--Base "pumpjack" placeholder
	--order = "4"
--High-Pressure Pumpjack
{
	type = "item",
	name = "pumpjack-2",
	icon = "__xander-mod__/graphics/item/production/miner/pumpjack-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "5",
	place_result = "pumpjack-2",
	stack_size = 50
},
{
	type = "item",
	name = "ore-processor-0",
	icon = "__xander-mod__/graphics/item/production/miner/ore-processor-0.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "6",
	place_result = "ore-processor-0",
	stack_size = 50
},
--Electric Ore Sluice
{
	type = "item",
	name = "ore-processor-1",
	icon = "__xander-mod__/graphics/item/production/miner/ore-processor-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "6",
	place_result = "ore-processor-1",
	stack_size = 50
},
--Ore Plant
{
	type = "item",
	name = "ore-processor-2",
	icon = "__xander-mod__/graphics/item/production/miner/ore-processor-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "extraction-machine",
	order = "6",
	place_result = "ore-processor-2",
	stack_size = 50
}

}
)