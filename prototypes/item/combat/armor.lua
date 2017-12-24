
--Base Overrides

--Base "light-armor"
data.raw.armor["light-armor"].order = "00"
--Base "heavy-armor"
data.raw.armor["heavy-armor"].order = "01"
--Base "modular-armor"
data.raw.armor["modular-armor"].order = "02"
--Base "power-armor"
data.raw.armor["power-armor"].order = "03"
--Base "power-armor-mk2"
data.raw.armor["power-armor-mk2"].order = "04"


data:extend(
{

--Base "light-armor" placeholder
	--order = "00"
--Base "heavy-armor" placeholder
	--order = "01"
--Base "modular-armor" placeholder
	--order = "02"
--Base "power-armor" placeholder
	--order = "03"
--Base "power-armor-mk2" placeholder
	--order = "04"
--Power Armor Mark III
{
	type = "armor",
	name = "power-armor-mk3",
	icon = "__xander-mod__/graphics/item/combat/equipment/power-armor-mk3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	resistances =
	{
		{
			type = "physical",
			decrease = 30,
			percent = 90
		},
		{
			type = "acid",
			decrease = 30,
			percent = 60
		},
		{
			type = "explosion",
			decrease = 100,
			percent = 70
		},
		{
			type = "fire",
			decrease = 0,
			percent = 80
		}
	},
	durability = 50000,
	subgroup = "armor",
	order = "05",
	stack_size = 1,
	equipment_grid = "12-square-equipment-grid",
	inventory_size_bonus = 40
}

}
)