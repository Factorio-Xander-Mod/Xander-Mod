
data:extend(
{

--Fayalite Slag
{
	type = "item",
	name = "fayalite-slag",
	icon = "__xander-mod__/graphics/item/material/raw/fayalite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "02",
	stack_size = 200
},
--Gravel
{
	type = "item",
	name = "gravel",
	icon = "__xander-mod__/graphics/item/material/raw/gravel.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "07",
	stack_size = 200
},
--Magnesite
{
	type = "item",
	name = "magnesite",
	icon = "__xander-mod__/graphics/item/material/raw/magnesite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "06",
	stack_size = 200
},
--Modified Gravel
{
	type = "item",
	name = "modified",
	icon = "__xander-mod__/graphics/item/material/raw/modified.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "07",
	stack_size = 200,
	place_as_tile =
	{
		result = "gravel",
		condition_size = 3,
		condition = {"water-tile"}
	}
},
--Slag (Calcaerous)
{
	type = "item",
	name = "slag",
	icon = "__xander-mod__/graphics/item/material/raw/slag.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "09",
	stack_size = 200
},
--Sludge
{
	type = "item",
	name = "sludge",
	icon = "__xander-mod__/graphics/item/material/raw/sludge.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "10",
	stack_size = 200
},
--Inert Waste (for burial)
{
	type = "item",
	name = "inert-waste",
	icon = "__xander-mod__/graphics/item/material/raw/inert-waste.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "11",
	stack_size = 200
},
--Vanadium Slag
{
	type = "item",
	name = "vanadium-slag",
	icon = "__xander-mod__/graphics/item/material/raw/vanadium-slag.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "12",
	stack_size = 200
}

}
)