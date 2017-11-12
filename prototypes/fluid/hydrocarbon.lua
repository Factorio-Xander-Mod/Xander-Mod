
--Base Overrides

--Base "crude-oil"
data.raw.fluid["crude-oil"].subgroup = "fluid-hydrocarbon"
data.raw.fluid["crude-oil"].order = "02-02"
--Base "heavy-oil"
data.raw.fluid["heavy-oil"].base_color = {r = 0.5, g = 0.15, b = 0.6}
data.raw.fluid["heavy-oil"].subgroup = "fluid-hydrocarbon"
data.raw.fluid["heavy-oil"].order = "02-04"
--Base "light-oil"
data.raw.fluid["light-oil"].base_color = {r = 0.56, g = 0.39, b = 0}
data.raw.fluid["light-oil"].subgroup = "fluid-hydrocarbon"
data.raw.fluid["light-oil"].order = "02-05"
--Base "petroleum-gas"
data.raw.fluid["petroleum-gas"].subgroup = "fluid-hydrocarbon"
data.raw.fluid["petroleum-gas"].order = "02-08"


data:extend(
{

--Benzene
{
	type = "fluid",
	name = "benzene",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.4, g = 0.4, b = 0.4},
	flow_color = {r = 0.4, g = 0.4, b = 0.2},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/benzene.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-hydrocarbon",
	order = "02-00"--,
	--auto_barrel = false
},
--Butadiene
{
	type = "fluid",
	name = "butadiene",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.2, g = 0.2, b = 0.2},
	flow_color = {r = 0.25, g = 0.25, b = 0.12},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/butadiene.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-hydrocarbon",
	order = "02-01"--,
	--auto_barrel = false
},
--Base "crude-oil" placeholder
	--order = "02-02"
--Heavy Naptha
{
	type = "fluid",
	name = "heavy-naptha",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.74, g = 0.21, b = 0},
	flow_color = {r = 0.9, g = 0.37, b = 0.18},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/heavy-naptha.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-hydrocarbon",
	order = "02-03"--,
	--auto_barrel = false
},
--Base "heavy-oil" placeholder
	--order = "02-04"
--Base "light-oil" placeholder
	--order = "02-05"
--Methane
{
	type = "fluid",
	name = "methane",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 1, g = 1, b = 0},
	flow_color = {r = 0.92, g = 0.92, b = 0.92},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/methane.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-hydrocarbon",
	order = "02-06"--,
	--auto_barrel = false
},
--Natural Gas
{
	type = "fluid",
	name = "natural-gas",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.19, g = 0.95, b = 0.95},
	flow_color = {r = 1, g = 1, b = 0.6},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/natural-gas.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-hydrocarbon",
	order = "02-07"--,
	--auto_barrel = false
},
--Base "petroleum-gas" placeholder
	--order = "02-08"
--Propylene
{
	type = "fluid",
	name = "propylene",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.5, g = 0.27, b = 0.5},
	flow_color = {r = 0.49, g = 0.42, b = 0.49},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/propylene.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-hydrocarbon",
	order = "02-09"--,
	--auto_barrel = false
},
--Styrene
{
	type = "fluid",
	name = "styrene",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.27, g = 0.17, b = 0.29},
	flow_color = {r = 0.66, g = 0.54, b = 0.64},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/hydrocarbon/styrene.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-hydrocarbon",
	order = "02-10"--,
	--auto_barrel = false
}

})

