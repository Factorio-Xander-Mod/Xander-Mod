
--Base Overrides

--Base "green-wire"
data.raw.recipe["green-wire"].category = "basic-machine"
data.raw.recipe["green-wire"].energy_required = 1
data.raw.recipe["green-wire"].ingredients = {{"wire-tinned", 2}, {"rubber", 2}, {"electronic-circuit", 1}}
data.raw.recipe["green-wire"].result_count = 1

--Base "red-wire"
data.raw.recipe["red-wire"].category = "basic-machine"
data.raw.recipe["red-wire"].energy_required = 1
data.raw.recipe["red-wire"].ingredients = {{"wire-tinned", 2}, {"rubber", 2}, {"electronic-circuit", 1}}
data.raw.recipe["red-wire"].result_count = 1

--Base "arithmetic-combinator"
data.raw.recipe["arithmetic-combinator"].category = "crafting"
data.raw.recipe["arithmetic-combinator"].energy_required = 1
data.raw.recipe["arithmetic-combinator"].ingredients = {{"forging-steel", 1}, {"cable-insulated", 5}, {"control-2", 1}, {"brass-plate", 2}}

--Base "decider-combinator"
data.raw.recipe["decider-combinator"].category = "crafting"
data.raw.recipe["decider-combinator"].energy_required = 1
data.raw.recipe["decider-combinator"].ingredients = {{"forging-steel", 1}, {"cable-insulated", 5}, {"control-2", 1}, {"brass-plate", 2}}

--Base "constant-combinator"
data.raw.recipe["constant-combinator"].category = "crafting"
data.raw.recipe["constant-combinator"].energy_required = 1
data.raw.recipe["constant-combinator"].ingredients = {{"forging-steel", 1}, {"cable-insulated", 2}, {"control-1", 1}, {"brass-plate", 2}}

--Base "power-switch"
data.raw.recipe["power-switch"].category = "crafting"
data.raw.recipe["power-switch"].energy_required = 1
data.raw.recipe["power-switch"].ingredients = {{"forging-steel", 1}, {"cable-insulated", 5}, {"electronic-circuit", 2}, {"brass-plate", 4}}

--Base "programmable-speaker"
data.raw.recipe["programmable-speaker"].category = "crafting"
data.raw.recipe["programmable-speaker"].energy_required = 1
data.raw.recipe["programmable-speaker"].ingredients = {{"forging-steel", 1}, {"cable-insulated", 2}, {"control-2", 1}, {"plastic-bar", 4}}


data:extend(
{

--Shielded Green Circuit Wire
{
	type = "recipe",
    name = "green-wire-b",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"wire-tinned", 4}, {"rubber", 4}, {"electronic-circuit", 1}, {"sheet-mu", 1}},
	result = "green-wire",
	result_count = 4
},
--Shielded Red Circuit Wire
{
	type = "recipe",
    name = "red-wire-b",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"wire-tinned", 4}, {"rubber", 4}, {"electronic-circuit", 1}, {"sheet-mu", 1}},
	result = "red-wire",
	result_count = 4
}

})