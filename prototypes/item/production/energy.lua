--Base Overrides

--Base "boiler"
data.raw.item["boiler"].order = "00"
--Base "heat-exchanger"
data.raw.item["heat-exchanger"].order = "02"
--Base "steam-engine"
data.raw.item["steam-engine"].order = "04"
--Base "steam-turbine"
data.raw.item["steam-turbine"].order = "05"
--Base "heat-pipe"
data.raw.item["heat-pipe"].order = "06"
--Base "nuclear-reactor"
data.raw.item["nuclear-reactor"].order = "07"
--Base "solar-panel"
data.raw.item["solar-panel"].order = "08"
--Base "accumulator"
data.raw.item["accumulator"].order = "11"
--Base "small-lamp" - renamed to XM "Carbon Arc Lamp"
data.raw.item["small-lamp"].subgroup = "energy"
data.raw.item["small-lamp"].order = "13"


data:extend(
{

--Base "boiler" placeholder
	--order = "00"
--Superheating Boiler
{
	type = "item",
	name = "boiler-2",
	icon = "__xander-mod__/graphics/item/production/energy/boiler-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy",
	order = "01",
	place_result = "boiler-2",
	stack_size = 50
},
--Base "heat-exchanger" placeholder
	--order = "02"
--Electric Boiler
{
	type = "item",
	name = "boiler-4",
	icon = "__xander-mod__/graphics/item/production/energy/boiler-4.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy",
	order = "03",
	place_result = "boiler-4",
	stack_size = 50
},
--Base "steam-engine" placeholder
	--order = "04"
--Base "steam-turbine" placeholder (medium-temperature)
	--order = "05"
--XM High-Temperature Steam Turbine
{
	type = "item",
	name = "steam-turbine-2",
	icon = "__xander-mod__/graphics/item/production/energy/steam-turbine-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy",
	order = "05",
	place_result = "steam-turbine-2",
	stack_size = 50
},
--Base "heat-pipe" placeholder
	--order = "06"
--Base "nuclear-reactor" placeholder
	--order = "07"
--Base "solar-panel" placeholder
	--order = "08"
--Dense Solar Panel
{
	type = "item",
	name = "solar-panel-2",
	icon = "__xander-mod__/graphics/item/production/energy/solar-panel-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy",
	order = "09",
	place_result = "solar-panel-2",
	stack_size = 50
},
--High-Efficiency Solar Panel
{
	type = "item",
	name = "solar-panel-3",
	icon = "__xander-mod__/graphics/item/production/energy/solar-panel-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy",
	order = "10",
	place_result = "solar-panel-3",
	stack_size = 50
},
--Base "accumulator" placeholder
	--order = "11"
--Silver-Zinc Accumulator
{
	type = "item",
	name = "accumulator-2",
	icon = "__xander-mod__/graphics/item/production/energy/accumulator-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy",
	order = "12",
	place_result = "accumulator-2",
	stack_size = 50
},
--Base "small-lamp" placeholder
	--order = "13"
--Gas Discharge Lamp
{
	type = "item",
	name = "lamp-2",
	icon = "__xander-mod__/graphics/item/production/energy/lamp-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "energy",
	order = "14",
	place_result = "lamp-2",
	stack_size = 50
}

}
)