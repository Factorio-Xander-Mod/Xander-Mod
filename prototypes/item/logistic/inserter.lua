 
--Base Overrides

--Base "burner-inserter"
data.raw.item["burner-inserter"].order = "00"
--Base "inserter"
data.raw.item["inserter"].order = "01"
--Base "long-handed-inserter"
data.raw.item["long-handed-inserter"].order = "02"
--Base "fast-inserter"
data.raw.item["fast-inserter"].order = "03"
--Base "filter-inserter"
data.raw.item["filter-inserter"].order = "05"
--Base "stack-inserter"
data.raw.item["stack-inserter"].order = "06"
--Base "stack-filter-inserter"
data.raw.item["stack-filter-inserter"].order = "08"


data:extend(
{

--Base "burner-inserter" placeholder
	--order = "00"
--Chemical-Fuel Burner Inserter
{
	type = "item",
	name = "inserter-chemical-burner",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-chemical-burner.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "inserter",
	order = "00",
	place_result = "inserter-chemical-burner",
	stack_size = 50
},
--Slow Electric Inserter
{
	type = "item",
	name = "inserter-slow",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-slow.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "inserter",
	order = "00",
	place_result = "inserter-slow",
	stack_size = 50
},
--Base "inserter" placeholder
	--order = "01"
--Base "long-handed-inserter" placeholder
	--order = "02"
--Base "fast-inserter" placeholder
	--order = "03"
--XM Long Fast Inserter
{
	type = "item",
	name = "inserter-long-fast",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-long-fast.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "inserter",
	order = "04",
	place_result = "inserter-long-fast",
	stack_size = 50
},
--Base "filter-inserter" placeholder
	--order = "05"
--Base "stack-inserter" placeholder
	--order = "06"
--XM Long Stack Inserter
{
	type = "item",
	name = "inserter-long-stack",
	icon = "__xander-mod__/graphics/item/logistic/inserter/inserter-long-stack.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "inserter",
	order = "07",
	place_result = "inserter-long-stack",
	stack_size = 50
}
--Base "stack-filter-inserter" placeholder
	--order = "08"

}
)