
--Base Overrides

--Base "rail"
data.raw["rail-planner"]["rail"].order = "00"
--Base "train-stop"
data.raw.item["train-stop"].order = "01"
--Base "rail-signal"
data.raw.item["rail-signal"].order = "02"
--Base "rail-chain-signal"
data.raw.item["rail-chain-signal"].order = "03"
--Base "cargo-wagon"
data.raw["item-with-entity-data"]["cargo-wagon"].order = "04"
--Base "fluid-wagon"
data.raw["item-with-entity-data"]["fluid-wagon"].order = "06"
--Base "locomotive"
data.raw["item-with-entity-data"]["locomotive"].order = "08"


data:extend(
{

--Base "rail" placeholder
	--order = "00"
--Base "train-stop" placeholder
	--order = "01"
--Base "rail-signal" placeholder
	--order = "02"
--Base "rail-chain-signal" placeholder
	--order = "03"
--Base "cargo-wagon" placeholder
	--order = "04"
--Heavy Cargo Wagon
{
	type = "item-with-entity-data",
	name = "cargo-wagon-2",
	icon = "__xander-mod__/graphics/item/logistic/transport/cargo-wagon-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "transport",
	order = "05",
	place_result = "cargo-wagon-2",
	stack_size = 5
},
--Base "fluid-wagon" placeholder
	--order = "06"
--High-Pressure Fluid Wagon
{
	type = "item-with-entity-data",
	name = "fluid-wagon-2",
	icon = "__xander-mod__/graphics/item/logistic/transport/fluid-wagon-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "transport",
	order = "07",
	place_result = "fluid-wagon-2",
	stack_size = 5
},
--Base "locomotive" placeholder
	--order = "08"
--Diesel Locomotive (XM)
{
	type = "item-with-entity-data",
	name = "locomotive-2",
	icon = "__xander-mod__/graphics/item/logistic/transport/locomotive-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "transport",
	order = "09",
	place_result = "locomotive-2",
	stack_size = 5
},
--Turbine Locomotive
{
	type = "item-with-entity-data",
	name = "locomotive-3",
	icon = "__xander-mod__/graphics/item/logistic/transport/locomotive-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "transport",
	order = "10",
	place_result = "locomotive-3",
	stack_size = 5
}

}
)