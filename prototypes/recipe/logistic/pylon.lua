--Base Overrides

--Base "small-electric-pole"
data.raw.recipe["small-electric-pole"].category = "crafting"
data.raw.recipe["small-electric-pole"].energy_required = 1
data.raw.recipe["small-electric-pole"].enabled = false
data.raw.recipe["small-electric-pole"].ingredients = {{"wood", 4}, {"insulator-1", 1}, {"copper-cable", 4}}

--Base "medium-electric-pole"
data.raw.recipe["medium-electric-pole"].category = "crafting"
data.raw.recipe["medium-electric-pole"].energy_required = 1
data.raw.recipe["medium-electric-pole"].ingredients = {{"forging-steel", 2}, {"insulator-1", 1}, {"cable-insulated", 5}}

--Base "big-electric-pole"
data.raw.recipe["big-electric-pole"].category = "crafting"
data.raw.recipe["big-electric-pole"].energy_required = 2
data.raw.recipe["big-electric-pole"].ingredients = {{"forging-steel", 8}, {"insulator-1", 4}, {"copper-cable", 20}}

--Base "substation"
data.raw.recipe["substation"].category = "crafting"
data.raw.recipe["substation"].energy_required = 2
data.raw.recipe["substation"].ingredients = {{"forging-steel", 8}, {"transformer-2", 2}, {"cable-insulated", 20}, {"control-2", 2}}


data:extend(
{

--High-Tension Medium Electric Pole
{
	type = "recipe",
    name = "medium-electric-pole-2",
	category = "crafting",
	energy_required = 1,
	enabled = false,
	ingredients = {{"medium-electric-pole", 1}, {"forging-stainless", 2}, {"insulator-2", 1}, {"cable-insulated", 5}},
	result = "medium-electric-pole-2"
},
--High-Tension Big Electric Pole
{
	type = "recipe",
    name = "big-electric-pole-2",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"big-electric-pole", 1}, {"forging-stainless", 8}, {"insulator-2", 4}, {"copper-cable", 20}},
	result = "big-electric-pole-2"
},
--High-Tension Substation
{
	type = "recipe",
    name = "substation-2",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"substation", 1}, {"forging-stainless", 8}, {"transformer-3", 2}, {"cable-insulated", 20}, {"control-3", 2}},
	result = "substation-2"
}

})