
--Base Overrides

--Raw Wood
data.raw.item["raw-wood"].subgroup = "organic"
data.raw.item["raw-wood"].fuel_category = "crude"
data.raw.item["raw-wood"].order = "00"
data.raw.item["raw-wood"].stack_size = 200

--Wood
data.raw.item["wood"].subgroup = "organic"
data.raw.item["wood"].order = "01"
data.raw.item["wood"].fuel_category = "crude"
data.raw.item["wood"].stack_size = 200

--Solid Fuel
data.raw.item["solid-fuel"].subgroup = "organic"
data.raw.item["solid-fuel"].order = "08"
data.raw.item["solid-fuel"].fuel_value = "32MJ"
data.raw.item["solid-fuel"].stack_size = 200

--Explosives
data.raw.item["explosives"].icon = "__xander-mod__/graphics/item/material/organic/trinitrotoluene.png"
data.raw.item["explosives"].subgroup = "organic"
data.raw.item["explosives"].order = "12"
data.raw.item["explosives"].stack_size = 200


data:extend(
{


--Base "raw-wood" placeholder
	--order = "00"
--Base "wood" placeholder
	--order = "01"
--Cotton (Gauze)
{
	type = "item",
	name = "cotton",
	icon = "__xander-mod__/graphics/item/material/organic/cotton.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "02",
	stack_size = 200
},
--Wood Resin
{
	type = "item",
	name = "wood-resin",
	icon = "__xander-mod__/graphics/item/material/organic/wood-resin.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "02",
	stack_size = 200
},
--Latex (Raw Natural)
{
	type = "item",
	name = "latex",
	icon = "__xander-mod__/graphics/item/material/organic/latex.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "03",
	stack_size = 200
},
--Styrene-Butadiene Rubber (SBR), Raw
{
	type = "item",
	name = "sbr",
	icon = "__xander-mod__/graphics/item/material/organic/sbr.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "04",
	stack_size = 200
},
--Finished Vulcanized Rubber
{
	type = "item",
	name = "rubber",
	icon = "__xander-mod__/graphics/item/material/organic/rubber.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "05",
	stack_size = 200
},
--Plastic Pellets
{
	type = "item",
	name = "plastic-pellets",
	icon = "__xander-mod__/graphics/item/material/organic/plastic-pellets.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "06",
	stack_size = 200
},
--Phenol
{
	type = "item",
	name = "phenol",
	icon = "__xander-mod__/graphics/item/material/organic/phenol.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "07",
	stack_size = 200
},
--Base "solid-fuel" placeholder
	--order = "08"
--Optimal Fuel for Internal Combustion
{
	type = "item",
	name = "optimal-fuel",
	icon = "__xander-mod__/graphics/item/material/organic/optimal-fuel.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	fuel_category = "chemical",
	fuel_value = "40MJ",
	fuel_acceleration_multiplier = 1.5,
	fuel_top_speed_multiplier = 1.1,
	subgroup = "organic",
	order = "09",
	stack_size = 200
},
--Nitrocellulose
{
	type = "item",
	name = "nitrocellulose",
	icon = "__xander-mod__/graphics/item/material/organic/nitrocellulose.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "10",
	stack_size = 200
},
--Unstable Explosives
{
	type = "item",
	name = "unstable-explosives",
	icon = "__xander-mod__/graphics/item/material/organic/unstable-explosives.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "11",
	stack_size = 200
},
--Base "explosives" placeholder
	--order = "12"
--Surfactant
{
	type = "item",
	name = "surfactant",
	icon = "__xander-mod__/graphics/item/material/organic/surfactant.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "13",
	stack_size = 200
},
--Solder Flux
{
	type = "item",
	name = "solder-flux",
	icon = "__xander-mod__/graphics/item/material/organic/solder-flux.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "14",
	stack_size = 200
},
--Synthetic Drugs
{
	type = "item",
	name = "synthetic-drugs",
	icon = "__xander-mod__/graphics/item/material/organic/synthetic-drugs.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "organic",
	order = "15",
	stack_size = 200
}

}
)