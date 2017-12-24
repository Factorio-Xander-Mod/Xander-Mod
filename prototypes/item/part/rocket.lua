
--Base Overrides

--Base "uranium-fuel-cell"
data.raw.item["uranium-fuel-cell"].order = "1"
data.raw.item["uranium-fuel-cell"].fuel_value = "20GJ"
--Base "used-up-uranium-fuel-cell"
data.raw.item["used-up-uranium-fuel-cell"].order = "2"
--Base "low-density-structure"
data.raw.item["low-density-structure"].order = "3"
--Base "rocket-fuel"
data.raw.item["rocket-fuel"].fuel_category = ""
data.raw.item["rocket-fuel"].fuel_value = "0J"
data.raw.item["rocket-fuel"].fuel_acceleration_multiplier = 1
data.raw.item["rocket-fuel"].fuel_top_speed_multiplier = 1
data.raw.item["rocket-fuel"].order = "4"
--Base "rocket-control-unit"
data.raw.item["rocket-control-unit"].order = "5"
--Base "rocket-part"
data.raw.item["rocket-part"].order = "8"
--Base "satellite"
data.raw.item["satellite"].order = "9"


data:extend(
{

--Uranium Dioxide Fuel Pellet
{
	type = "item",
	name = "fuel-pellet",
	icon = "__xander-mod__/graphics/item/part/rocket/fuel-pellet.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "intermediate-product",
	order = "0",
	stack_size = 100
},
--Base "uranium-fuel-cell" placeholder
	--order = "1"
--Base "used-up-uranium-fuel-cell" placeholder
	--order = "2"
--Base "low-density-structure" placeholder - XM name "Rocket Structural Segment"
	--order = "3"
--Base "rocket-fuel" placeholder
	--order = "4"
--Base "rocket-control-unit" placeholder
	--order = "5"
--Rocket Mechanism
{
	type = "item",
	name = "rocket-mechanism",
	icon = "__xander-mod__/graphics/item/part/rocket/rocket-mechanism.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "intermediate-product",
	order = "6",
	stack_size = 100
},
--Rocket Thermal Segment
{
	type = "item",
	name = "rocket-thermal",
	icon = "__xander-mod__/graphics/item/part/rocket/rocket-thermal.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "intermediate-product",
	order = "6",
	stack_size = 100
}
--Base "rocket-part" placeholder
	--order = "8"
--Base "satellite" placeholder
	--order = "9"

}
)