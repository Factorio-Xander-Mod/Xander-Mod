
--Base Overrides

--Steel Plate
data.raw.item["steel-plate"].icon = "__xander-mod__/graphics/item/material/alloy/steel-plate.png"
data.raw.item["steel-plate"].subgroup = "alloy"
data.raw.item["steel-plate"].order = "10"
data.raw.item["steel-plate"].stack_size = 200
data.raw.item["steel-plate"].place_as_tile =
{
	result = "steel",
	condition_size = 1,
	condition = {"water-tile"}
}


data:extend(
{

--Bronze Plate
{
	type = "item",
	name = "bronze-plate",
	icon = "__xander-mod__/graphics/item/material/alloy/bronze-plate.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "alloy",
	order = "04",
	stack_size = 200
},
--Brass Plate
{
	type = "item",
	name = "brass-plate",
	icon = "__xander-mod__/graphics/item/material/alloy/brass-plate.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "alloy",
	order = "05",
	stack_size = 200
},
--Monel Metal Plate
{
	type = "item",
	name = "monel-plate",
	icon = "__xander-mod__/graphics/item/material/alloy/monel-plate.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "alloy",
	order = "06",
	stack_size = 200
},
--Solder Plate
{
	type = "item",
	name = "solder-1-plate",
	icon = "__xander-mod__/graphics/item/material/alloy/solder-1-plate.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "alloy",
	order = "07",
	stack_size = 200
},
--Silver Solder Plate
{
	type = "item",
	name = "solder-2-plate",
	icon = "__xander-mod__/graphics/item/material/alloy/solder-2-plate.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "alloy",
	order = "08",
	stack_size = 200
},
--Doped Silicon Boule
{
	type = "item",
	name = "silicon-boule",
	icon = "__xander-mod__/graphics/item/material/alloy/silicon-boule.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "alloy",
	order = "09",
	stack_size = 50
}
--Base "steel-plate" placeholder

}
)