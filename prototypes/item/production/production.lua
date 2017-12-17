
--Base Overrides

--Assembling Machine 1
data.raw.item["assembling-machine-1"].order = "04"
data.raw.item["assembling-machine-1"].icon = "__xander-mod__/graphics/item/production/production/assembling-machine-1.png"
--Assembling Machine 2
data.raw.item["assembling-machine-2"].order = "05"
data.raw.item["assembling-machine-2"].icon = "__xander-mod__/graphics/item/production/production/assembling-machine-2.png"
--Assembling Machine 3
data.raw.item["assembling-machine-3"].order = "06"
data.raw.item["assembling-machine-3"].icon = "__xander-mod__/graphics/item/production/production/assembling-machine-3.png"
--Lab
data.raw.item["lab"].order = "09"


data:extend(
{

--Burner Machine Tool
{
	type = "item",
	name = "machine-tool-0",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-0.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "00",
	place_result = "machine-tool-0",
	stack_size = 50
},
--Automatic Feed Lathe-Mill
{
	type = "item",
	name = "machine-tool-1",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "01",
	place_result = "machine-tool-1",
	stack_size = 50
},
--Universal Machine Tool
{
	type = "item",
	name = "machine-tool-2",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "02",
	place_result = "machine-tool-2",
	stack_size = 50
},
--Computer-Numeric Controlled Machine Tool
{
	type = "item",
	name = "machine-tool-3",
	icon = "__xander-mod__/graphics/item/production/production/machine-tool-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "03",
	place_result = "machine-tool-3",
	stack_size = 50
},
--Burner Assembling Machine (Tier 0)
{
	type = "item",
	name = "assembling-machine-0",
	icon = "__base__/graphics/icons/assembling-machine-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "04",
	place_result = "assembling-machine-0",
	stack_size = 50
},
--Base "assembling-machine-1" placeholder
	--order = "04"
--Base "assembling-machine-1" placeholder
	--order = "05"
--Base "assembling-machine-1" placeholder
	--order = "06"
--Assembling Machine 4
{
	type = "item",
	name = "assembling-machine-4",
	icon = "__xander-mod__/graphics/item/production/production/assembling-machine-4.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "07",
	place_result = "assembling-machine-4",
	stack_size = 50
},
--Burner Lab
{
	type = "item",
	name = "lab-1",
	icon = "__xander-mod__/graphics/item/production/production/lab-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "08",
	place_result = "lab-1",
	stack_size = 50
}
--Base "lab" placeholder
	--order = "09"

}
)