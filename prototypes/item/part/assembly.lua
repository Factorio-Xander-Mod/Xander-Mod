--Base Overrides

--Engine unit - Renamed to Internal Combustion Engine Unit
data.raw.item["engine-unit"].subgroup = "assembly"
data.raw.item["engine-unit"].order = "04"
data.raw.item["engine-unit"].stack_size = 100

--Flying robot frame - renamed to Standard Flying Robot Frame
data.raw.item["flying-robot-frame"].subgroup = "assembly"
data.raw.item["flying-robot-frame"].order = "07"
data.raw.item["flying-robot-frame"].stack_size = 100


data:extend(
{

--Mechanical-Only Steam Engine (no electrical parts)
{
	type = "item",
	name = "mechanical-steam-engine",
	icon = "__xander-mod__/graphics/item/part/assembly/mechanical-steam-engine.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "00",
	stack_size = 100
},
--Piston-Cylinder Assembly
{
	type = "item",
	name = "piston-cylinder",
	icon = "__xander-mod__/graphics/item/part/assembly/piston-cylinder.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "00",
	stack_size = 100
},
--Iron Gear-Mechanism
{
	type = "item",
	name = "mechanism-0",
	icon = "__xander-mod__/graphics/item/part/assembly/mechanism-0.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "01",
	stack_size = 100
},
--Steel Gear-Mechanism
{
	type = "item",
	name = "mechanism-1",
	icon = "__xander-mod__/graphics/item/part/assembly/mechanism-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "01",
	stack_size = 100
},
--Alloy Steel Gear-Mechanism
{
	type = "item",
	name = "mechanism-2",
	icon = "__xander-mod__/graphics/item/part/assembly/mechanism-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "02",
	stack_size = 100
},
--Titanium Gear-Mechanism
{
	type = "item",
	name = "mechanism-3",
	icon = "__xander-mod__/graphics/item/part/assembly/mechanism-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "03",
	stack_size = 100
},
--Base "engine-unit" placeholder
	--order = "04"
--Steel Wheel
{
	type = "item",
	name = "wheel-1",
	icon = "__xander-mod__/graphics/item/part/assembly/wheel-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "05",
	stack_size = 100,
},
--Alloy Steel Wheel
{
	type = "item",
	name = "wheel-2",
	icon = "__xander-mod__/graphics/item/part/assembly/wheel-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "06",
	stack_size = 100,
},
--Base "flying-robot-frame" placeholder
	--order = "07"
--High-Performance Flying Robot Frame
{
	type = "item",
	name = "flying-robot-frame-2",
	icon = "__xander-mod__/graphics/item/part/assembly/flying-robot-frame-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "08",
	stack_size = 100
},
--Basic Tooling
{
	type = "item",
	name = "tooling-1",
	icon = "__xander-mod__/graphics/item/part/assembly/tooling-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "09",
	stack_size = 100,
},
--High-Speed Tooling
{
	type = "item",
	name = "tooling-2",
	icon = "__xander-mod__/graphics/item/part/assembly/tooling-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "10",
	stack_size = 100,
},
--Precision Tooling
{
	type = "item",
	name = "tooling-3",
	icon = "__xander-mod__/graphics/item/part/assembly/tooling-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "11",
	stack_size = 100,
},
--Electromechanical Control
{
	type = "item",
	name = "control-1",
	icon = "__xander-mod__/graphics/item/part/assembly/control-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "12",
	stack_size = 100
},
--Digital Control
{
	type = "item",
	name = "control-2",
	icon = "__xander-mod__/graphics/item/part/assembly/control-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "13",
	stack_size = 100
},
--Computerized Control
{
	type = "item",
	name = "control-3",
	icon = "__xander-mod__/graphics/item/part/assembly/control-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "14",
	stack_size = 100
},
--Ruby Lasing Generator
{
	type = "item",
	name = "lasing-1",
	icon = "__xander-mod__/graphics/item/part/assembly/lasing-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "15",
	stack_size = 100
},
--Carbon Dioxide Lasing Generator
{
	type = "item",
	name = "lasing-2",
	icon = "__xander-mod__/graphics/item/part/assembly/lasing-2.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "16",
	stack_size = 100
},
--Yttrium Aluminum Garnet Lasing Generator
{
	type = "item",
	name = "lasing-3",
	icon = "__xander-mod__/graphics/item/part/assembly/lasing-3.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "assembly",
	order = "17",
	stack_size = 100
}

}
)