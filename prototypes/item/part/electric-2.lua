--Base Overrides

--Electric engine unit: renamed to Brushed Electric Motor-Generator
data.raw.item["electric-engine-unit"].icon = "__xander-mod__/graphics/item/part/electric-2/motor-1.png"
data.raw.item["electric-engine-unit"].subgroup = "electric-2"
data.raw.item["electric-engine-unit"].order = "03"


data:extend(
{

--Simple Inductive Coil
{
	type = "item",
	name = "coil-1",
	icon = "__xander-mod__/graphics/item/part/electric-2/coil-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "00",
	stack_size = 100
},
--Densely-Wound Inductive Coil
{
	type = "item",
	name = "coil-2",
	icon = "__xander-mod__/graphics/item/part/electric-2/coil-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "01",
	stack_size = 100
},
--Close-Coupled Inductive Coil
{
	type = "item",
	name = "coil-3",
	icon = "__xander-mod__/graphics/item/part/electric-2/coil-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "02",
	stack_size = 100
},
--Base "electric-engine-unit" placeholder
	--order = "03"
--Brushless Motor-Generator
{
	type = "item",
	name = "motor-2",
	icon = "__xander-mod__/graphics/item/part/electric-2/motor-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "04",
	stack_size = 100
},
--Induction Motor-Generator
{
	type = "item",
	name = "motor-3",
	icon = "__xander-mod__/graphics/item/part/electric-2/motor-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "05",
	stack_size = 100
},
--Inductive Electrical Transformer
{
	type = "item",
	name = "transformer-1",
	icon = "__xander-mod__/graphics/item/part/electric-2/transformer-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "06",
	stack_size = 100
},
--Semiconductor Power Supply
{
	type = "item",
	name = "transformer-2",
	icon = "__xander-mod__/graphics/item/part/electric-2/transformer-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "07",
	stack_size = 100
},
--High-Tension Converter
{
	type = "item",
	name = "transformer-3",
	icon = "__xander-mod__/graphics/item/part/electric-2/transformer-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "electric-2",
	order = "08",
	stack_size = 100
}

}
)