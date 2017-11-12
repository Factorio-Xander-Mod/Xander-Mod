
data:extend(
{

--
--
--Groups
--
--

--==========
--Bulk materials
{
	type = "item-group",
	name = "bulk",
	order = "0",
	inventory_order = "0",
	icon = "__xander-mod__/graphics/category/bulk.png",
	icon_size = 64
},
--==========


--
--
--Subgroups
--
--

--==========
--==========  Of "bulk"  ==========
--Base "raw-resource" placeholder, for ores
	--order = "00-00"
--Base "raw-material" placeholder, for raw, minimally refined materials, and ore concentrating recipes
	--order = "00-01"
--Metal sponges & powders
{
	type = "item-subgroup",
	name = "sponge",
	group = "bulk",
	order = "00-02"
},
--Salts
{
	type = "item-subgroup",
	name = "salt",
	group = "bulk",
	order = "00-03"
},
--Metal Oxides and Hydroxides
{
	type = "item-subgroup",
	name = "oxide",
	group = "bulk",
	order = "00-04"
},
--Elemental metal plates
{
	type = "item-subgroup",
	name = "metal",
	group = "bulk",
	order = "00-05"
},
--Alloy plates
{
	type = "item-subgroup",
	name = "alloy",
	group = "bulk",
	order = "00-06"
},
--Base "terrain" placeholder - building materials
	--order = "00-07"
--Nonmetallic elements
{
	type = "item-subgroup",
	name = "nonmetal",
	group = "bulk",
	order = "00-08"
},
--Organic - organic materials, finished for output
{
	type = "item-subgroup",
	name = "organic",
	group = "bulk",
	order = "00-09"
},
--Carbohydrate - organic materials, variety carbohydrate intermediates
{
	type = "item-subgroup",
	name = "carbohydrate",
	group = "bulk",
	order = "00-10"
},
--Base "fluid-recipes" placeholder - organic materials, variety hydrocarbon intermediates
	--order = "00-11"
--Other organic - organic materials, variety other intermediates
{
	type = "item-subgroup",
	name = "other-organic",
	group = "bulk",
	order = "00-12"
},
--Compounds - inorganic oxides and compounds
{
	type = "item-subgroup",
	name = "compound",
	group = "bulk",
	order = "00-13"
},
--Waste - for waste processing and voiding recipes
{
	type = "item-subgroup",
	name = "waste",
	group = "bulk",
	order = "00-14"
},





--==========  Of Fluids  ==========
--Base "fluid" placeholder - for aqueous (acids, mineral water, etc.)
	--order = "01-00"
--Elements
{
	type = "item-subgroup",
	name = "fluid-element",
	group = "fluids",
	order = "01-01"
},
--Hydrocarbons
{
	type = "item-subgroup",
	name = "fluid-hydrocarbon",
	group = "fluids",
	order = "01-02"
},
--Compounds of Hydrogen and Another Element
{
	type = "item-subgroup",
	name = "fluid-hydrogenated",
	group = "fluids",
	order = "01-03"
},
--Miscellaneous
{
	type = "item-subgroup",
	name = "fluid-misc",
	group = "fluids",
	order = "01-04"
},
--Other Organic Fluids
{
	type = "item-subgroup",
	name = "fluid-other",
	group = "fluids",
	order = "01-05"
},
--Oxides
{
	type = "item-subgroup",
	name = "fluid-oxide",
	group = "fluids",
	order = "01-06"
},





--==========  Of "intermediate-products"  ==========
--Structral parts
{
	type = "item-subgroup",
	name = "structure",
	group = "intermediate-products",
	order = "02-00"
},
--Mechanical parts
{
	type = "item-subgroup",
	name = "mechanical",
	group = "intermediate-products",
	order = "02-01"
},
--Electrical parts 1 (simple - wires, sheets, insulators)
{
	type = "item-subgroup",
	name = "electric-1",
	group = "intermediate-products",
	order = "02-02"
},
--Electrical parts 2 (complex - coils, motors, transformers)
{
	type = "item-subgroup",
	name = "electric-2",
	group = "intermediate-products",
	order = "02-03"
},
--Electrical parts 3 (batteries)
{
	type = "item-subgroup",
	name = "electric-3",
	group = "intermediate-products",
	order = "02-04"
},
--Data components
{
	type = "item-subgroup",
	name = "data",
	group = "intermediate-products",
	order = "02-05"
},
--Circuit boards
{
	type = "item-subgroup",
	name = "board",
	group = "intermediate-products",
	order = "02-06"
},
--Optical stuff
{
	type = "item-subgroup",
	name = "optic",
	group = "intermediate-products",
	order = "02-07"
},
--Assemblies
{
	type = "item-subgroup",
	name = "assembly",
	group = "intermediate-products",
	order = "02-08"
},
--Base "intermediate-product" placeholder - now used only for nuclear & rocket parts
	--order = "02-09"
--Base "science-pack" placeholder
	--order = "02-10"
--Base "fill-barrel" placeholder
	--order = "02-11"
--Base "empty-barrel" placeholder
	--order = "02-12"





--==========  Of "production"  ==========
--Base "tool" placeholder
	--order = "03-00"
--Base "energy" placeholder
	--order = "03-01"
--Base "extraction-machine" placeholder - miners & ore processors
	--order = "03-02"
--Base "smelting-machine" placeholder - refining & foundry furnaces
	--order = "03-03"
--Chemical machines
{
	type = "item-subgroup",
	name = "chemical-machine",
	group = "production",
	order = "03-04"
},
--Base "production-machine" placeholder -> for machine tools, assembling machines, and labs
	--order = "03-05"
--Base "module" placeholder - and beacon
	--order = "03-06"





--==========  Of "logistics"  ==========
--Base "storage" placeholder
	--order = "04-00"
--Base "belt" placeholder
	--order = "04-01"
--Base "inserter" placeholder
	--order = "04-02"
--Pipes - because we have 7 different kinds total
{
	type = "item-subgroup",
	name = "pipe",
	group = "logistics",
	order = "04-03"
},
--Pipes-to-ground - because we have 7 different kinds total
{
	type = "item-subgroup",
	name = "pipe-to-ground",
	group = "logistics",
	order = "04-04"
},
--Plumbing - other fluid network parts
{
	type = "item-subgroup",
	name = "plumbing",
	group = "logistics",
	order = "04-05"
},
--Base "energy-pipe-distribution" placeholder - only electric pylons
	--order = "04-06"
--Base "transport" placeholder - railroad, car, tank, artillery crawler
	--order = "04-07"
--Base "logistic-network" placeholder - robots and auto-chests
	--order = "04-08"
--Base "circuit-network" placeholder
	--order = "04-09"
--Base "terrain" placeholder - moved to "bulk", to represent building materials





--==========  Of "combat"  ==========
--Combat parts
{
	type = "item-subgroup",
	name = "combat-part",
	group = "combat",
	order = "05-00"
},
--Base "gun" placeholder
	--order = "05-01"
--Base "ammo" placeholder
	--order = "05-02"
--Base "capsule" placeholder
	--order = "05-03"
--Base "armor" placeholder
	--order = "05-04"
--Base "equipment" placeholder
	--order = "05-05"
--Base "defensive-structure" placeholder
	--order = "05-06"
  
})