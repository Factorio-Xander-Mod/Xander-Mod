
--Base Overrides

--Base "electronic-circuit"
data.raw.recipe["electronic-circuit"].category = "basic-crafting"
data.raw.recipe["electronic-circuit"].normal = {energy_required = 2, enabled = false, ingredients = {{"metallized-1", 2}, {"components-1", 2}, 
	{"bronze-plate", 2}, {"solder-1-plate", 1}}, result = "electronic-circuit", result_count = 2}
data.raw.recipe["electronic-circuit"].expensive = {energy_required = 2, enabled = false, ingredients = {{"metallized-1", 2}, {"components-1", 4}, 
	{"bronze-plate", 2}, {"solder-1-plate", 2}}, result = "electronic-circuit", result_count = 2}

--Base "advanced-circuit"
data.raw.recipe["advanced-circuit"].normal = {energy_required = 5, enabled = false, ingredients = {{"etched-2", 1}, {"components-2", 1}, {"wire-solder-1", 2}, 
	{"steel-plate", 1}}, result = "advanced-circuit"}
data.raw.recipe["advanced-circuit"].expensive = {energy_required = 5, enabled = false, ingredients = {{"etched-2", 1}, {"components-2", 2}, 
	{"wire-solder-1", 4}, {"steel-plate", 1}}, result = "advanced-circuit"}

--Base "processing-unit"
data.raw.recipe["processing-unit"].category = "advanced-crafting"
data.raw.recipe["processing-unit"].normal = {energy_required = 10, enabled = false, ingredients = {{"etched-3", 1}, {"wire-solder-2", 2}, 
	{"components-3", 1}, {"aluminum-plate", 2}, {"plastic-bar", 2}}, result = "processing-unit"}
data.raw.recipe["processing-unit"].expensive = {energy_required = 10, enabled = false, ingredients = {{"etched-3", 1}, {"wire-solder-2", 4}, 
	{"components-3", 4}, {"aluminum-plate", 4}, {"plastic-bar", 4}}, result = "processing-unit"}


data:extend(
{

--
--BOARD
--
--METALLIZED BOARD
--Wiring Board (Board 1)
{
	type = "recipe",
    name = "metallized-1",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"wood", 2}, {"wood-resin", 1}, {"copper-cable", 4}},
	result = "metallized-1",
	result_count = 4
},
--Metallized Board 2
{
	type = "recipe",
    name = "metallized-2",
	category = "crafting-with-fluid",
	energy_required = 2,
	enabled = false,
	ingredients = {{"fiber-glass", 1}, {"sheet-tinned", 2}, {type = "fluid", name = "uncured-resol", amount = 10}},
	result = "metallized-2"
},
--Metallized Board 3
{
	type = "recipe",
    name = "metallized-3",
	category = "crafting-with-fluid",
	energy_required = 5,
	enabled = false,
	ingredients = {{"fiber-glass", 1}, {"sheet-gilded", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}},
	result = "metallized-3"
},
--
--ETCHED BOARD
--Etched Board 2 A
{
	type = "recipe",
    name = "etched-2-a",
	icon = "__xander-mod__/graphics/recipe/board/etched-2-a.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{"metallized-2", 4}, {type = "fluid", name = "nitric-acid", amount = 10}},
	results = {{"etched-2", 4}},
	subgroup = "board"
},
--Etched Board 2 B
{
	type = "recipe",
    name = "etched-2-b",
	icon = "__xander-mod__/graphics/recipe/board/etched-2-b.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 8,
	enabled = false,
	ingredients = {{"metallized-2", 16}, {type = "fluid", name = "hydrogen-chloride", amount = 30}, {"hematite", 1}},
	results = {{"etched-2", 16}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "board"
},
--Etched Board 3
{
	type = "recipe",
    name = "etched-3",
	icon = "__xander-mod__/graphics/recipe/board/etched-3.png",
	icon_size = 32,
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"metallized-3", 8}, {type = "fluid", name = "chlorine", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 10}},
	results = {{"etched-3", 8}, {type = "fluid", name = "waste-water", amount = 10}},
	subgroup = "board"
},


--
--DATA PARTS
--
--WIRES
--Fine Copper Wire
{
	type = "recipe",
    name = "wire-copper",
	category = "basic-machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"copper-cable", 1}},
	result = "wire-copper",
	result_count = 4
},
--Tinned Fine Copper Wire
{
	type = "recipe",
    name = "wire-tinned",
	category = "basic-machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"copper-cable", 2}, {"tin-plate", 1}},
	result = "wire-tinned",
	result_count = 8
},
--Fine Tungsten Wire
{
	type = "recipe",
    name = "wire-tungsten",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"tungsten-block", 1}},
	result = "wire-tungsten",
	result_count = 4
},
--Fine Gold Wire
{
	type = "recipe",
    name = "wire-gold",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"gold-plate", 1}},
	result = "wire-gold",
	result_count = 4
},
--Fluxed Solder Wire
{
	type = "recipe",
    name = "wire-solder-1",
	category = "basic-machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"solder-1-plate", 2}, {"solder-flux", 1}},
	result = "wire-solder-1",
	result_count = 8
},
--Fluxed Silver Solder Paste
{
	type = "recipe",
    name = "wire-solder-2",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"solder-2-plate", 2}, {"solder-flux", 1}},
	result = "wire-solder-2",
	result_count = 8
},
--
--COMPONENT SETS
--Relay Component Set A (crude)
{
	type = "recipe",
    name = "components-1-a",
	category = "basic-machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"iron-stick", 1}, {"iron-gear-wheel", 1}, {"wire-copper", 8}, {"graphite-block", 1}},
	result = "components-1",
	result_count = 2
},
--Relay Component Set B
{
	type = "recipe",
    name = "components-1-b",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"rod-2", 1}, {"gear-2", 1}, {"wire-copper", 8}, {"graphite-powder", 2}},
	result = "components-1",
	result_count = 2
},
--Electron Valve Components A
{
	type = "recipe",
    name = "components-2-a",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"nickel-plate", 2}, {"tungsten-block", 1}, {"glass", 1}, {"wire-copper", 4}},
	result = "components-2"
},
--Electron Valve Components B
{
	type = "recipe",
    name = "components-2-b",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"monel-plate", 1}, {"wire-tungsten", 1}, {"wafer-2", 1}, {"plastic-bar", 1}, {"wire-tinned", 2}},
	result = "components-2"
},
--Digital Electronic Components
{
	type = "recipe",
    name = "components-3",
	category = "advanced-machine",
	energy_required = 5,
	enabled = false,
	ingredients = {{"wire-gold", 2}, {"crystal-quartz", 1}, {"plastic-bar", 1}},--more ingredients - 6 permissible
	result = "components-3"
},
--Components 4 (CPU + resonator)

--
--SILICON WAFERS
--Clean Silicon Wafer
{
	type = "recipe",
    name = "wafer-1",
	category = "machine",
	energy_required = 8,
	enabled = false,
	ingredients = {{"silicon-boule", 1}, {type = "fluid", name = "phosphoric-acid", amount = 10}},
	result = "wafer-1",
	result_count = 4
},
--Circuit Etched Silicon Wafer
{
	type = "recipe",
    name = "wafer-2",
	category = "chemistry",
	energy_required = 50,
	enabled = false,
	ingredients = {{"wafer-1", 10}, {"boron-oxide", 1}, {"sodium-hydroxide", 5}, {type = "fluid", name = "oxygen", amount = 20}},
	result = "wafer-2",
	result_count = 10
},
--VLSI (Very Large Scale Integration) Silicon Wafer
{
	type = "recipe",
    name = "wafer-3",
	category = "chemistry",
	energy_required = 200,
	enabled = false,
	ingredients = {{"wafer-2", 40}, {"crystal-ruby", 1}, {type = "fluid", name = "nitrogen", amount = 100}, {type = "fluid", name = "carbon-tetrafluoride", amount = 20}},
	result = "wafer-3",
	result_count = 20
},
--Solar Cell Wafer
{
	type = "recipe",
    name = "wafer-solar",
	category = "advanced-crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"wafer-2", 2}, {"wire-tinned", 2}},
	result = "wafer-solar"
},
--[[
--
--PRIMARY DATA PARTS
--Solenoid Relay
{
	type = "recipe",
    name = "data-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"wire-tinned", 2}, {"wire-copper", 8}, {"rod-2", 1}, {"bronze-plate", 1}},
	result = "data-1",
	result_count = 2
},
--Integrated Transistor Package
{
	type = "recipe",
    name = "data-2",
	category = "crafting-with-fluid",
	energy_required = 10,
	enabled = false,
	ingredients = {{"wire-tinned", 2}, {"wafer-2", 2}, {type = "fluid", name = "uncured-resol", amount = 10}, {"chromium-plate", 1}, 
		{"silver-plate", 1}},
	result = "data-2",
	result_count = 2
},
--Central Processing Unit
{
	type = "recipe",
    name = "data-3",
	category = "crafting-with-fluid",
	energy_required = 20,
	enabled = false,
	ingredients = {{"wire-gold", 4}, {"wafer-3", 2}, {type = "fluid", name = "uncured-epoxy", amount = 10}, {"tungsten-block", 1}, {"platinum-plate", 1}},
	result = "data-3",
	result_count = 2
},
]]--


--
--COMPLETE CIRCUITS
--Base "electronic-circuit" placeholder
--Basic Electromechanical Circuit B
{
	type = "recipe",
    name = "circuit-1-b",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"etched-2", 1}, {"components-1", 2}, {"bronze-plate", 2}, {"wire-solder-1", 2}},
	result = "electronic-circuit",
	result_count = 2
},
--Base "advanced-circuit" placeholder
--Base "processing-unit" placeholder

})