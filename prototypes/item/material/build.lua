
--Base Overrides

--Landfill
data.raw.item["landfill"].icon = "__xander-mod__/graphics/item/material/build/landfill.png"
data.raw.item["landfill"].order = "00"
data.raw.item["landfill"].stack_size = 200
data.raw.item["landfill"].place_as_tile = {result = "gravel", condition_size = 1, condition = {"ground-tile"}}

--Stone Brick
data.raw.item["stone-brick"].order = "01"
data.raw.item["stone-brick"].stack_size = 200

--Concrete
data.raw.item["concrete"].order = "05"
data.raw.item["concrete"].stack_size = 200

--Hazard Concrete
data.raw.item["hazard-concrete"].order = "06"
data.raw.item["hazard-concrete"].stack_size = 200


data:extend(
{

--Base "landfill" placeholder
	--order = "00"
--Base "stone-brick" placeholder
	--order = "01"
--Clay Brick
{
	type = "item",
	name = "brick-clay",
	icon = "__xander-mod__/graphics/item/material/build/brick-clay.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "02",
	stack_size = 200,
	place_as_tile =
	{
		result = "brick",
		condition_size = 1,
		condition = {"water-tile"}
	}
},
--Clay-Graphite Refractory Brick
{
	type = "item",
	name = "brick-clay-graphite",
	icon = "__xander-mod__/graphics/item/material/build/brick-clay-graphite.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "02",
	stack_size = 200
},
--Glass
{
	type = "item",
	name = "glass",
	icon = "__xander-mod__/graphics/item/material/build/glass.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "03",
	stack_size = 200
},
--Cement Powder
{
	type = "item",
	name = "cement-powder",
	icon = "__xander-mod__/graphics/item/material/build/cement-powder.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "04",
	stack_size = 200
},
--Base "concrete" placeholder
	--order = "05"
--Base "hazard-concrete" placeholder
	--order = "06"
--Fused Basalt Slab
{
	type = "item",
	name = "fused-basalt",
	icon = "__xander-mod__/graphics/item/material/build/fused-basalt.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "07",
	stack_size = 200,
	place_as_tile =
	{
		result = "basalt",
		condition_size = 1,
		condition = {"water-tile"}
	}
},
--Fused Quartz
{
	type = "item",
	name = "fused-quartz",
	icon = "__xander-mod__/graphics/item/material/build/fused-quartz.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "08",
	stack_size = 200,
	place_as_tile =
	{
		result = "quartz",
		condition_size = 1,
		condition = {"water-tile"}
	}
},
--Chromia-Mgnesia Spinel Refractory Brick
{
	type = "item",
	name = "brick-spinel",
	icon = "__xander-mod__/graphics/item/material/build/brick-spinel.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "09",
	stack_size = 200
},
--Sintered Yttria-Stabilized Zirconia Refractory Brick
{
	type = "item",
	name = "brick-zirconia",
	icon = "__xander-mod__/graphics/item/material/build/brick-zirconia.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "terrain",
	order = "10",
	stack_size = 200
}

}
)