
--Base Overrides

--Base "engine-unit"
data.raw.recipe["engine-unit"].energy_required = 5
data.raw.recipe["engine-unit"].ingredients = {{"piston-cylinder", 1}, {"mechanism-1", 1}, {"rubber", 2}}

--Base "flying-robot-frame"
data.raw.recipe["flying-robot-frame"].energy_required = 10
data.raw.recipe["flying-robot-frame"].ingredients = {{"battery-2", 1}, {"control-2", 1}, {"forging-aluminum", 1}, {"motor-3", 1}}


data:extend(
{

--
--MECHANISM
--Mechanical Steam Engine
{
	type = "recipe",
    name = "mechanical-steam-engine",
	category = "basic-crafting",
	energy_required = 2,
	ingredients = {{"mechanism-0", 1}, {"pipe", 4}, {"forging-iron", 1}},
	result = "mechanical-steam-engine"
},
--Piston-Cylinder Assembly
{
	type = "recipe",
    name = "piston-cylinder",
	category = "basic-crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"forging-iron", 1}, {"pipe-steel", 2}},
	result = "piston-cylinder"
},
--Iron Mechanism
{
	type = "recipe",
    name = "mechanism-0",
	category = "basic-crafting",
	energy_required = 2,
	ingredients = {{"forging-iron", 1}, {"shaft-0", 1}, {"iron-gear-wheel", 2}, {"bronze-plate", 2}},
	result = "mechanism-0"
},
--Steel Mechanism
{
	type = "recipe",
    name = "mechanism-1",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-iron", 1}, {"shaft-1", 2}, {"iron-gear-wheel", 1}, {"gear-3", 1}},
	result = "mechanism-1"
},
--Alloy Steel Mechanism
{
	type = "recipe",
    name = "mechanism-2",
	category = "crafting-with-fluid",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-aluminum", 1}, {"shaft-2", 2}, {"gear-2", 2}, {"gear-3", 2}, {type = "fluid", name = "lubricant", amount = 10}},
	result = "mechanism-2"
},
--Titanium Alloy Mechanism
{
	type = "recipe",
    name = "mechanism-3",
	category = "crafting-with-fluid",
	energy_required = 5,
	enabled = false,
	ingredients = {{"forging-titanium", 1}, {"shaft-3", 2}, {"gear-4", 4}, {"plastic-bar", 2}, {type = "fluid", name = "lubricant", amount = 10}},
	result = "mechanism-3"
},
--
--OTHER MECHANICAL
--Base "engine-unit" placeholder
--Steel Wheel
{
	type = "recipe",
    name = "wheel-1",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-steel", 1}, {"forging-iron", 1}, {"steel-plate", 2}, {"bearing-1", 4}},
	result = "wheel-1",
	result_count = 2
},			
--Alloy Steel Wheel
{
	type = "recipe",
    name = "wheel-2",
	category = "forge",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-alloy", 1}, {"steel-plate", 1}, {"silicon-carbide", 1}, {"bearing-2", 2}},
	result = "wheel-2"
},
--
--FLYING ROBOT FRAMES
--Base "flying-robot-frame" placeholder
--High-Performance Flying Robot Frame
{
	type = "recipe",
    name = "flying-robot-frame-2",
	category = "crafting-with-fluid",
	energy_required = 20,
	enabled = false,
	ingredients = {{"battery-3", 1}, {"control-3", 1}, {"forging-titanium", 2}, {"motor-3", 2}, {"fiber-carbon", 1}, 
		{type = "fluid", name = "uncured-epoxy", amount = 10}},
	result = "flying-robot-frame-2"
},
--
--TOOLING SET
--Steel Tooling A
{
	type = "recipe",
    name = "tooling-1-a",
	category = "basic-machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"steel-plate", 4}, {"stone-brick", 10}, {"wood", 4}},
	result = "tooling-1"
},
--Steel Tooling B
{
	type = "recipe",
    name = "tooling-1-b",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-steel", 1}, {"silicon-carbide", 4}, {type = "fluid", name = "uncured-resol", amount = 20}},
	result = "tooling-1"
},
--Steel Tooling C
{
	type = "recipe",
    name = "tooling-1-c",
	category = "machine",
	energy_required = 5,
	enabled = false,
	ingredients = {{"forging-steel", 1}, {"silicon-carbide", 4}, {type = "fluid", name = "uncured-epoxy", amount = 10}, {"fiber-carbon", 1}},
	result = "tooling-1"
},
--High-Speed Tooling
{
	type = "recipe",
    name = "tooling-2",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-alloy", 1}, {"tungsten-cermet", 4}, {"aluminum-oxide", 2}, {"glass", 2}},
	result = "tooling-2"
},
--Precision Tooling
{
	type = "recipe",
    name = "tooling-3",
	category = "machine",
	energy_required = 5,
	enabled = false,
	ingredients = {{"forging-alloy", 2}, {"nitride-block", 4}, {"boule-diamond", 2}, {"brass-plate", 2}},
	result = "tooling-3"
},
--
--CONTROL ASSEMBLIES
--Electromechanicaml Control
{
	type = "recipe",
    name = "control-1",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"electronic-circuit", 4}, {"wire-copper", 8}, {"wire-tinned", 2}},
	result = "control-1"
},
--Digital Control
{
	type = "recipe",
    name = "control-2",
	category = "advanced-crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"advanced-circuit", 4}, {"electronic-circuit", 4}, {"wire-tinned", 8}, {"rubber", 4}, {"cable-insulated", 4}},
	result = "control-2"
},
--Computerized Control
{
	type = "recipe",
    name = "control-3",
	category = "advanced-crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"processing-unit", 4}, {"advanced-circuit", 4}, {"wire-tinned", 16}, {"wire-gold", 8}, {"plastic-bar", 4}, {"cable-insulated", 2}},
	result = "control-3"
},
--
--LASING GENERATOR
--Ruby Lasing Generator
{
	type = "recipe",
    name = "lasing-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"crystal-ruby", 1}, {"crystal-quartz", 5}, {"small-lamp", 2}, {"control-2", 2}, {"forging-stainless", 2}, {"aluminum-plate", 5}},
	result = "lasing-1"
},
--Carbon Dioxide Lasing Generator
{
	type = "recipe",
    name = "lasing-2",
	category = "advanced-crafting",
	energy_required = 8,
	enabled = false,
	ingredients = {{type = "fluid", name = "carbon-dioxide", amount = 50}, {"crystal-corundum", 5}, {"lamp-2", 2}, {"control-3", 2}, 
		{"forging-alloy", 2}, {"copper-plate", 5}},
	result = "lasing-2"
},
--Yttrium-Doped Aluminum Garnet Lasing Generator
{
	type = "recipe",
    name = "lasing-3",
	category = "advanced-crafting",
	energy_required = 10,
	enabled = false,
	ingredients = {{"crystal-yag", 1}, {"crystal-diamond", 5}, {"lamp-2", 4}, {"control-3", 4}, {"forging-titanium", 4}, 
		{"silver-plate", 10}},
	result = "lasing-3"
}

})