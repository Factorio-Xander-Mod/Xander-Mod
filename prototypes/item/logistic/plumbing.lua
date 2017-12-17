--Base Overrides

--Base "storage-tank"
data.raw.item["storage-tank"].order = "0"
data.raw.item["storage-tank"].subgroup = "plumbing"
--Base "pump" - renamed to XM "Reciprocating Pump"
data.raw.item["pump"].order = "2"
data.raw.item["pump"].subgroup = "plumbing"


data:extend(
{

--Base "storage-tank" placeholder
	--order = "0"
--XM High-Pressure Storage Tank
{
    type = "item",
    name = "storage-tank-2",
    icon = "__xander-mod__/graphics/item/logistic/plumbing/storage-tank-2.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "plumbing",
    order = "1",
    place_result = "storage-tank-2",
    stack_size = 100
},
--Base "pump" placeholder
	--order = "2"
--XM Impeller Pump
{
	type = "item",
	name = "pump-2",
	icon = "__xander-mod__/graphics/item/logistic/plumbing/pump-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "plumbing",
	order = "3",
	place_result = "pump-2",
	stack_size = 50
},
--XM Turbomolecular Pump
{
	type = "item",
	name = "pump-3",
	icon = "__xander-mod__/graphics/item/logistic/plumbing/pump-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "plumbing",
	order = "4",
	place_result = "pump-3",
	stack_size = 50
}

}
)