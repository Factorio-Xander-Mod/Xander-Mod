
--Base Overrides

--Base "transport-belt"
data.raw.item["transport-belt"].order = "00"
data.raw.item["transport-belt"].stack_size = 100
--Base "fast-transport-belt"
data.raw.item["fast-transport-belt"].order = "01"
data.raw.item["fast-transport-belt"].stack_size = 100
--Base "express-transport-belt"
data.raw.item["express-transport-belt"].order = "03"
data.raw.item["express-transport-belt"].stack_size = 100

--Base "underground-belt"
data.raw.item["underground-belt"].order = "04"
--Base "fast-underground-belt"
data.raw.item["fast-underground-belt"].order = "05"
--Base "express-underground-belt"
data.raw.item["express-underground-belt"].order = "07"

--Base "splitter"
data.raw.item["splitter"].order = "08"
--Base "fast-splitter"
data.raw.item["fast-splitter"].order = "09"
--Base "express-splitter"
data.raw.item["express-splitter"].order = "11"

--Base "loader"
data.raw.item["loader"].order = "12"
--Base "fast-loader"
data.raw.item["fast-loader"].order = "13"
--Base "express-loader"
data.raw.item["express-loader"].order = "15"


data:extend(
{

--Slow Transport Belt
{
	type = "item",
	name = "slow-transport-belt",
	icon = "__xander-mod__/graphics/item/logistic/belt/slow-transport-belt.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "belt",
	order = "00",
	place_result = "slow-transport-belt",
	stack_size = 50
},
--Base "transport-belt" placeholder
	--order = "00"
--Base "fast-transport-belt" placeholder
	--order = "01"
--XM Expedited Transport Belt
{
	type = "item",
	name = "expedited-transport-belt",
	icon = "__xander-mod__/graphics/item/logistic/belt/expedited-transport-belt.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "belt",
	order = "02",
	place_result = "expedited-transport-belt",
	stack_size = 100
},
--Base "express-transport-belt" placeholder
	--order = "03"
	
--Slow Underground Belt
{
	type = "item",
	name = "slow-underground-belt",
	icon = "__xander-mod__/graphics/item/logistic/belt/slow-underground-belt.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "belt",
	order = "04",
	place_result = "slow-underground-belt",
	stack_size = 50
},
--Base "underground-belt" placeholder
	--order = "04"
--Base "fast-underground-belt" placeholder
	--order = "05"
--XM Expedited Underground Belt
{
	type = "item",
	name = "expedited-underground-belt",
	icon = "__xander-mod__/graphics/item/logistic/belt/expedited-underground-belt.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "belt",
	order = "06",
	place_result = "expedited-underground-belt",
	stack_size = 50
},
--Base "express-underground-belt" placeholder
	--order = "07"
	
--Slow Splitter
{
	type = "item",
	name = "slow-splitter",
	icon = "__xander-mod__/graphics/item/logistic/belt/slow-splitter.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "belt",
	order = "08",
	place_result = "slow-splitter",
	stack_size = 50
},
--Base "splitter" placeholder
	--order = "08"
--Base "fast-splitter" placeholder
	--order = "09"
--XM Expedited Splitter
{
	type = "item",
	name = "expedited-splitter",
	icon = "__xander-mod__/graphics/item/logistic/belt/expedited-splitter.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "belt",
	order = "10",
	place_result = "expedited-splitter",
	stack_size = 50
},
--Base "express-splitter" placeholder
	--order = "11"

--Base "loader" placeholder
	--order = "12"
--Base "fast-loader" placeholder
	--order = "13"
--XM Expedited Loader
{
	type = "item",
	name = "expedited-loader",
	icon = "__xander-mod__/graphics/item/logistic/belt/expedited-loader.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "belt",
	order = "14",
	place_result = "expedited-loader",
	stack_size = 50
}
--Base "express-loader" placeholder
	--order = "15"

}
)