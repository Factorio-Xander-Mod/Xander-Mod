
--Base Overrides

--Base "solar-panel-equipment"
data.raw.item["solar-panel-equipment"].icon = "__xander-mod__/graphics/item/combat/equipment/solar-panel-equipment-1.png"
data.raw.item["solar-panel-equipment"].order = "00"
--Base "fusion-reactor-equipment"
data.raw.item["fusion-reactor-equipment"].order = "03"
--Base "energy-shield-equipment"
data.raw.item["energy-shield-equipment"].order = "04"
--Base "energy-shield-mk2-equipment"
data.raw.item["energy-shield-mk2-equipment"].order = "05"
--Base "battery-equipment"
data.raw.item["battery-equipment"].order = "08"
--Base "battery-mk2-equipment"
data.raw.item["battery-mk2-equipment"].order = "09"
--Base "personal-laser-defense-equipment" placeholder
data.raw.item["personal-laser-defense-equipment"].order = "11"
--Base "discharge-defense-equipment" placeholder
data.raw.item["discharge-defense-equipment"].order = "14"
--Base "exoskeleton-equipment" placeholder
data.raw.item["exoskeleton-equipment"].order = "15"
--Base "personal-roboport-equipment" placeholder
data.raw.item["personal-roboport-equipment"].order = "17"
--Base "personal-roboport-mk2-equipment" placeholder
data.raw.item["personal-roboport-mk2-equipment"].order = "18"
--Base "night-vision-equipment" placeholder
data.raw.item["night-vision-equipment"].order = "20"
--Base "belt-immunity-equipment" placeholder
data.raw.item["belt-immunity-equipment"].order = "21"


data:extend(
{

--Base "solar-panel-equipment" placeholder
	--order = "00"
--Efficient Solar Panel Equipment
{
	type = "item",
	name = "solar-panel-equipment-2",
	icon = "__base__/graphics/icons/solar-panel-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "solar-panel-equipment-2",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "01",
	stack_size = 20
},
--Portable Fission Reactor
{
	type = "item",
	name = "fission-reactor-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/fission-reactor-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "fission-reactor-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "02",
	stack_size = 20
},
--Base "fusion-reactor-equipment" placeholder
	--order = "03"
--Base "energy-shield-equipment" placeholder
	--order = "04"
--Base "energy-shield-mk2-equipment" placeholder
	--order = "05"
--Energy Shield Mark 3
{
	type = "item",
	name = "energy-shield-mk3-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/energy-shield-mk3-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "energy-shield-mk3-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "06",
	stack_size = 50,
	default_request_amount = 10
},
--Energy Shield Mark 4
{
	type = "item",
	name = "energy-shield-mk4-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/energy-shield-mk4-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "energy-shield-mk4-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "07",
	stack_size = 50,
	default_request_amount = 10
},
--Base "battery-equipment" placeholder
	--order = "08"
--Base "battery-mk2-equipment" placeholder
	--order = "09"
--Battery Mark 3
{
	type = "item",
	name = "battery-mk3-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/battery-mk3-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "battery-mk3-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "10",
	stack_size = 50,
	default_request_amount = 10
},
--Base "personal-laser-defense-equipment" placeholder
	--order = "11"
--Personal Laser Defense Mark 2
{
	type = "item",
	name = "personal-laser-defense-mk2-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/personal-laser-defense-mk2-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "personal-laser-defense-mk2-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "12",
	stack_size = 20
},
--Personal Laser Defense Mark 3
{
	type = "item",
	name = "personal-laser-defense-mk3-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/personal-laser-defense-mk3-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "personal-laser-defense-mk3-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "13",
	stack_size = 20
},
--Base "discharge-defense-equipment" placeholder
	--order = "14"
--Base "exoskeleton-equipment" placeholder
	--order = "15"
--Exoskeleton Equipment Mark 2
{
	type = "item",
	name = "exoskeleton-mk2-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/exoskeleton-mk2-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "exoskeleton-mk2-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "16",
	stack_size = 10
},
--Base "personal-roboport-equipment" placeholder
	--order = "17"
--Base "personal-roboport-mk2-equipment" placeholder
	--order = "18"
--Personal Roboport Mark 3
{
	type = "item",
	name = "personal-roboport-mk3-equipment",
	icon = "__xander-mod__/graphics/item/combat/equipment/personal-roboport-mk3-equipment.png",
	icon_size = 32,
	placed_as_equipment_result = "personal-roboport-mk3-equipment",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "19",
	stack_size = 5
}
--Base "night-vision-equipment" placeholder
	--order = "20"
--Base "belt-immunity-equipment" placeholder
	--order = "21"

}
)