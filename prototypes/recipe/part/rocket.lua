
--Base Overrides

--Base "uranium-fuel-cell"
data.raw.recipe["uranium-fuel-cell"].category = "advanced-crafting"
data.raw.recipe["uranium-fuel-cell"].ingredients = {{"fuel-pellet", 2}, {"forging-zirconium", 4}, {"boron-oxide", 2}, {"silver-plate", 4}, 
	{"graphite-block", 1}}
data.raw.recipe["uranium-fuel-cell"].result_count = 2

--Base "nuclear-fuel-reprocessing"
data.raw.recipe["nuclear-fuel-reprocessing"].category = "chemical-plant"
data.raw.recipe["nuclear-fuel-reprocessing"].energy_required = 20
data.raw.recipe["nuclear-fuel-reprocessing"].ingredients = {{"used-up-uranium-fuel-cell", 1}, {type = "fluid", name = "nitric-acid", amount = 40}, 
	{"zinc-plate", 1}}
data.raw.recipe["nuclear-fuel-reprocessing"].results = {{"238-uo2", 1}, {"zirconium-sponge", 6}, {type = "fluid", name = "waste-water", amount = 40}, 
	{"silver-sponge", 1}}

--Base "rocket-fuel"
data.raw.recipe["rocket-fuel"].energy_required = 50
data.raw.recipe["rocket-fuel"].category = "chemical-plant"
data.raw.recipe["rocket-fuel"].ingredients = {{"solid-fuel", 20}, {type = "fluid", name = "hydrogen", amount = 100}, 
	{type = "fluid", name = "oxygen", amount = 500}, {type = "fluid", name = "ammonia", amount = 50}, {"aluminum-plate", 8}, {"lithium-perchlorate", 3}}

--Base "low-density-structure"
data.raw.recipe["low-density-structure"].energy_required = 50
data.raw.recipe["low-density-structure"].category = "advanced-machine"
data.raw.recipe["low-density-structure"].ingredients = {{"forging-stainless", 5}, {"forging-alloy", 5}, {"forging-titanium", 5}, {"fiber-carbon", 20}, 
	{type = "fluid", name = "uncured-epoxy", amount = 100}, {"forging-aluminum", 10}, {"pipe-superalloy", 10}}

--Base "rocket-control-unit"
data.raw.recipe["rocket-control-unit"].energy_required = 50
data.raw.recipe["rocket-control-unit"].category = "advanced-crafting"
data.raw.recipe["rocket-control-unit"].ingredients = {{"control-3", 2}, {"control-2", 1}, {"speed-module", 1}, {"effectivity-module", 1}, 
	{"cable-insulated", 10}, {"plastic-bar", 5}, {"lasing-3", 1}}

--Base "rocket-part"
data.raw.recipe["rocket-part"].energy_required = 10
data.raw.recipe["rocket-part"].ingredients = {{"rocket-fuel", 1}, {"low-density-structure", 1}, {"rocket-control-unit", 1}, {"rocket-thermal", 1},
	{"rocket-mechanism", 1}}

--Base "satellite"
data.raw.recipe["satellite"].energy_required = 50
data.raw.recipe["satellite"].category = "advanced-crafting"
data.raw.recipe["satellite"].ingredients = {{"low-density-structure", 200}, {"solar-panel-3", 200}, {"accumulator-2", 200}, 
	{"radar-2", 10}, {"rocket-control-unit", 50}, {"rocket-fuel", 100}}


data:extend(
{

--
--NUCLEAR
--Uranium Dioxide Fuel Pellet Pressing
{
	type = "recipe",
    name = "fuel-pellet",
	category = "advanced-machine",
	energy_required = 5,
	enabled = false,
	ingredients = {{"fuel-uo2", 2}},
	result = "fuel-pellet"
},
--Base "uranium-fuel-cell" placeholder
--Base "nuclear-fuel-reprocessing" placeholder
--
--ROCKET SUB-PARTS
--Base "rocket-fuel" placeholder
--Base "low-density-structure" placeholder
--Base "rocket-control-unit" placeholder
--Rocket Thermal Segment (Engine Bell, Heat Shields, Etc.)
{
	type = "recipe",
    name = "rocket-thermal",
	category = "forge",
	energy_required = 50,
	enabled = false,
	ingredients = {{"forging-superalloy", 5}, {"brick-zirconia", 10}, {"nitride-block", 5}, {"tungsten-block", 10}, {"forging-zirconium", 5}, 
		{"graphite-block", 5}, {"fiber-glass", 20}},
	result = "rocket-thermal"
},
--Rocket Mechanism
{
	type = "recipe",
    name = "rocket-mechanism",
	category = "advanced-crafting",
	energy_required = 50,
	enabled = false,
	ingredients = {{"pump-3", 1}, {"explosives", 1}, {"mechanism-3", 1}, {"pipe-plastic", 5}, {"motor-3", 2}, 
		{"battery-3", 1}},
	result = "rocket-mechanism"
}
--
--ROCKET FULL-SIZE PARTS
--Base "rocket-part" placeholder
--Base "satellite" placeholder

})