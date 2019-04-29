--Base Overrides

--Base "copper-cable"
data.raw.recipe["copper-cable"].category = "basic-machine"
data.raw.recipe["copper-cable"].energy_required = 1
data.raw.recipe["copper-cable"].result_count = 1

--Base "electric-engine-unit"
data.raw.recipe["electric-engine-unit"].category = "basic-crafting"
data.raw.recipe["electric-engine-unit"].energy_required = 4
data.raw.recipe["electric-engine-unit"].ingredients = {{"iron-plate", 6}, {"shaft-0", 1}, {"coil-1", 2}, {"graphite-block", 1}}

--Base "battery"
data.raw.recipe["battery"].normal = {energy_required = 2, enabled = false, ingredients = {{"plastic-bar", 2}, {"lead-ingot", 2}, 
	{type = "fluid", name = "sulfuric-acid", amount = 10}}, result = "battery"}
data.raw.recipe["battery"].expensive = {energy_required = 2, enabled = false, ingredients = {{"plastic-bar", 4}, {"lead-ingot", 4}, 
	{type = "fluid", name = "sulfuric-acid", amount = 20}}, result = "battery"}


data:extend(
{

--
--ELECTRIC
--
--SHEET
--Tinned Copper Sheet
{
	type = "recipe",
    name = "sheet-tinned",
	category = "basic-machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"copper-plate", 4}, {"tin-ingot", 2}},
	result = "sheet-tinned",
	result_count = 8
},
--Steel Sheet
{
	type = "recipe",
    name = "sheet-steel",
	category = "basic-machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"steel-plate", 1}},
	result = "sheet-steel",
	result_count = 2
},
--Gilded Copper Sheet
{
	type = "recipe",
    name = "sheet-gilded",
	category = "machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"copper-plate", 4}, {"gold-ingot", 2}},
	result = "sheet-gilded",
	result_count = 8
},
--Mu Metal Sheet
{
	type = "recipe",
    name = "sheet-mu",
	category = "forge",
	energy_required = 4,
	enabled = false,
	ingredients = {{"steel-plate", 1}, {"cobalt-ingot", 1}, {"nickel-ingot", 1}, {"aluminum-ingot", 1}, {"re-ingot", 1}},
	result = "sheet-mu",
	result_count = 4
},
--
--CABLE
--Base "copper-cable" placeholder
--Insulated Copper Cable
{
	type = "recipe",
    name = "cable-insulated",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"copper-cable", 2}, {"rubber", 1}},
	result = "cable-insulated",
	result_count = 2
},
--
--COIL
--Simple Coil A
{
	type = "recipe",
    name = "coil-1-a",
	category = "basic-crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"copper-cable", 4}, {"iron-plate", 2}, {"wood-resin", 1}},
	result = "coil-1",
	result_count = 2
},
--Simple Coil B
{
	type = "recipe",
    name = "coil-1-b",
	category = "crafting-with-fluid",
	energy_required = 4,
	enabled = false,
	ingredients = {{"copper-cable", 4}, {"steel-plate", 2}, {type = "fluid", name = "uncured-resol", amount = 10}},
	result = "coil-1",
	result_count = 2
},
--Densely-Would Coil
{
	type = "recipe",
    name = "coil-2",
	category = "crafting-with-fluid",
	energy_required = 4,
	enabled = false,
	ingredients = {{"copper-cable", 4}, {"sheet-steel", 4}, {type = "fluid", name = "uncured-resol", amount = 10}},
	result = "coil-2"
},
--Close-Coupled Coil
{
	type = "recipe",
    name = "coil-3",
	category = "crafting-with-fluid",
	energy_required = 5,
	enabled = false,
	ingredients = {{"copper-cable", 4}, {"sheet-mu", 4}, {type = "fluid", name = "uncured-epoxy", amount = 10}},
	result = "coil-3"
},
--
--MOTOR-GENERATOR
--Base "electric-engine-unit" placeholder
--Bruched Motor B
{
	type = "recipe",
    name = "motor-1-b",
	category = "crafting",
	energy_required = 1,
	enabled = false,
	ingredients = {{"forging-iron", 2}, {"shaft-1", 2}, {"coil-1", 4}, {"graphite-block", 1}},
	result = "electric-engine-unit",
	result_count = 2
},
--Induction Motor
{
	type = "recipe",
    name = "motor-2",
	category = "crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"forging-iron", 1}, {"shaft-2", 1}, {"coil-2", 2}, {"advanced-circuit", 1}},
	result = "motor-2"
},
--Brushless Motor
{
	type = "recipe",
    name = "motor-3",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"forging-aluminum", 1}, {"shaft-3", 1}, {"coil-3", 2}, {"advanced-circuit", 2}},
	result = "motor-3"
},
--
--ELECTRICAL TRANSFORMER
--Inductive Transformer
{
	type = "recipe",
    name = "transformer-1",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"coil-1", 2}, {"insulator-1", 2}, {"forging-iron", 1}, {"electronic-circuit", 2}},
	result = "transformer-1"
},
--Semiconductor Power Supply
{
	type = "recipe",
    name = "transformer-2",
	category = "crafting-with-fluid",
	energy_required = 4,
	enabled = false,
	ingredients = {{"coil-2", 2}, {"insulator-2", 2}, {"forging-titanium", 1}, {"advanced-circuit", 4}, 
		{type = "fluid", name = "heavy-oil", amount = 40}},
	result = "transformer-2"
},
--High-Tension Converter
{
	type = "recipe",
    name = "transformer-3",
	category = "crafting-with-fluid",
	energy_required = 5,
	enabled = false,
	ingredients = {{"coil-3", 2}, {"insulator-2", 4}, {"forging-aluminum", 1}, {"processing-unit", 4}, 
		{type = "fluid", name = "heavy-oil", amount = 40}},
	result = "transformer-3"
},

--
--EELCTROHEMISTRY
--
--ELECTROCHEMICAL CELL
--Base "battery" placeholder (Lead-Acid Electrochemical Cell)
--Silver-Zinc Electrochemical Cell
{
	type = "recipe",
    name = "cell-2",
	category = "chemistry",
	energy_required = 5,
	enabled = false,
	ingredients = {{"plastic-bar", 2}, {"silver-ingot", 2}, {type = "fluid", name = "water", amount = 10}, {"sodium-hydroxide", 2}, {"zinc-oxide", 2}},
	result = "cell-2"
},
--Lithium-Ion Supercapacitor Cell
{
	type = "recipe",
    name = "cell-3",
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"plastic-bar", 2}, {"activated-carbon", 2}, {type = "fluid", name = "dimethyl-carbonate", amount = 10}, {"lithium-tetrafluoroborate", 1}, 
		{"lithium-titanate", 1}},
	result = "cell-3"
},
--
--BATTERY
--Lead-Acid Battery
{
	type = "recipe",
    name = "battery-1",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"battery", 10}, {"copper-cable", 2}, {"electronic-circuit", 2}},
	result = "battery-1"
},
--Silver-Zinc Battery
{
	type = "recipe",
    name = "battery-2",
	category = "advanced-crafting",
	energy_required = 4,
	enabled = false,
	ingredients = {{"cell-2", 10}, {"cable-insulated", 2}, {"advanced-circuit", 2}},
	result = "battery-2"
},
--Lithium-Ion Supercapacitor Battery
{
	type = "recipe",
    name = "battery-3",
	category = "advanced-crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"cell-3", 10}, {"cable-insulated", 4}, {"processing-unit", 2}},
	result = "battery-3"
},
--
--INSULATOR
--Glass Insulator A
{
	type = "recipe",
    name = "insulator-1-a",
	category = "smelting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"glass", 2}},
	result = "insulator-1"
},
--Glass Insualtor B
{
	type = "recipe",
    name = "insulator-1-b",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"fused-quartz", 2}},
	result = "insulator-1"
},
--Ceramic Insualtor A
{
	type = "recipe",
    name = "insulator-2-a",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"clay", 2}, {"fused-quartz", 1}},
	result = "insulator-2"
},
--Ceramic Insualtor B
{
	type = "recipe",
    name = "insulator-2-b",
	category = "forge",
	energy_required = 5,
	enabled = false,
	ingredients = {{"silicon-nitride", 1}},
	result = "insulator-2",
	result_count = 2
},

--
--OPTICS
--
--RAW CRYSTAL BOULE
--Corundum Boule
{
	type = "recipe",
    name = "boule-corundum",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"aluminum-oxide", 1}, {type = "fluid", name = "hydrogen", amount = 20}},
	result = "boule-corundum"
},
--Diamond Boule
{
	type = "recipe",
    name = "boule-diamond",
	category = "forge",
	energy_required = 20,
	enabled = false,
	ingredients = {{"graphite-powder", 4}, {"forging-iron", 1}, {"silicon-nitride", 1}, {"clay", 1}},
	result = "boule-diamond"
},
--Ruby Boule
{
	type = "recipe",
    name = "boule-ruby",
	category = "forge",
	energy_required = 10,
	enabled = false,
	ingredients = {{"aluminum-oxide", 5}, {"chromium-oxide", 1}, {type = "fluid", name = "hydrogen", amount = 40}},
	result = "boule-ruby"
},
--Yttrium-Doped Aluminum Garnet Boule
{
	type = "recipe",
    name = "boule-yag",
	category = "forge",
	energy_required = 20,
	enabled = false,
	ingredients = {{"aluminum-oxide", 5}, {"re-oxide", 2}, {type = "fluid", name = "hydrogen", amount = 40}},
	result = "boule-yag"
},
--
--POLISHED CRYSTAL
--Quartz Crystal
{
	type = "recipe",
    name = "crystal-quartz",
	category = "machine",
	energy_required = 5,
	enabled = false,
	ingredients = {{"fused-quartz", 1}, {type = "fluid", name = "lubricant", amount = 10}, {"silicon-carbide", 2}, {"aluminum-oxide", 1}},
	result = "crystal-quartz"
},
--Corundum Crystal
{
	type = "recipe",
    name = "crystal-corundum",
	category = "machine",
	energy_required = 10,
	enabled = false,
	ingredients = {{"boule-corundum", 1}, {type = "fluid", name = "lubricant", amount = 10}, {"silicon-carbide", 2}, {"aluminum-oxide", 1}},
	result = "crystal-corundum"
},
--Diamond Crystal
{
	type = "recipe",
    name = "crystal-diamond",
	category = "machine",
	energy_required = 20,
	enabled = false,
	ingredients = {{"boule-diamond", 1}, {type = "fluid", name = "lubricant", amount = 10}, {"silicon-carbide", 2}, {"aluminum-oxide", 1}},
	result = "crystal-diamond"
},
--Ruby Crystal
{
	type = "recipe",
    name = "crystal-ruby",
	category = "machine",
	energy_required = 10,
	enabled = false,
	ingredients = {{"boule-ruby", 1}, {type = "fluid", name = "lubricant", amount = 10}, {"silicon-carbide", 2}, {"aluminum-oxide", 1}},
	result = "crystal-ruby"
},
--Yttrium-Doped Aluminum Garnet Crystal
{
	type = "recipe",
    name = "crystal-yag",
	category = "advanced-machine",
	energy_required = 20,
	enabled = false,
	ingredients = {{"boule-yag", 1}, {type = "fluid", name = "lubricant", amount = 10}, {"silicon-carbide", 2}, {"aluminum-oxide", 1}},
	result = "crystal-yag"
}

})