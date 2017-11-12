
--Base Overrides

--Base "lubricant"
data.raw.fluid["lubricant"].base_color = {r = 0.1, g = 0.32, b = 0.03}
data.raw.fluid["lubricant"].subgroup = "fluid-other"
data.raw.fluid["lubricant"].order = "05-10"


data:extend(
{

--Blasting Fluid
{
	type = "fluid",
	name = "blasting-fluid",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.88, g = 0, b = 0},
	flow_color = {r = 1, g = 0.71, b = 0},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/blasting-fluid.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-00"--,
	--auto_barrel = false
},
--Carbon Tetrafluoride
{
	type = "fluid",
	name = "carbon-tetrafluoride",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.55, g = 0.60, b = 0.15},
	flow_color = {r = 0.66, g = 0.02, b = 0.24},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/carbon-tetrafluoride.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-01"--,
	--auto_barrel = false
},
--Chlorobenzene
{
	type = "fluid",
	name = "chlorobenzene",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.4, g = 0.59, b = 0.4},
	flow_color = {r = 0.36, g = 0.60, b = 0.36},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/chlorobenzene.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-02"--,
	--auto_barrel = false
},
--Dimethyl Carbonate
{
	type = "fluid",
	name = "dimethyl-carbonate",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0, g = 0.17, b = 0.3},
	flow_color = {r = 0.47, g = 0.58, b = 0.65},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/dimethyl-carbonate.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-03"--,
	--auto_barrel = false
},
--Epichlorohydrin
{
	type = "fluid",
	name = "epichlorohydrin",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.29, g = 0.4, b = 0.2},
	flow_color = {r = 0.4, g = 0.4, b = 0.4},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/epichlorohydrin.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-04"--,
	--auto_barrel = false
},
--Epoxy Hardener
{
	type = "fluid",
	name = "epoxy-hardener",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.92, g = 0.84, b = 0.47},
	flow_color = {r = 1, g = 0.94, b = 0.66},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/epoxy-hardener.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-05"--,
	--auto_barrel = false
},
--Epoxy Resin
{
	type = "fluid",
	name = "epoxy-resin",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.8, g = 0.8, b = 0.8},
	flow_color = {r = 0.75, g = 0.75, b = 0.75},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/epoxy-resin.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-06"--,
	--auto_barrel = false
},
--Ethylene Dichloride
{
	type = "fluid",
	name = "ethylene-dichloride",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.68, g = 1, b = 0.68},
	flow_color = {r = 0.37, g = 1, b = 0.37},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/ethylene-dichloride.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-07"--,
	--auto_barrel = false
},
--Formaldehyde
{
	type = "fluid",
	name = "formaldehyde",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 1, g = 0.5, b = 0.5},
	flow_color = {r = 0.76, g = 0.61, b = 0.61},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/formaldehyde.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-08"--,
	--auto_barrel = false
},
--Formic Acid
{
	type = "fluid",
	name = "formic-acid",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 1, g = 0.3, b = 0.3},
	flow_color = {r = 0.44, g = 0.22, b = 0.22},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/formic-acid.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-09"--,
	--auto_barrel = false
},
--Base "lubricant" placeholder
	--order = "05-10"
--Methanol
{
	type = "fluid",
	name = "methanol",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0, g = 0, b = 1},
	flow_color = {r = 0.68, g = 0.16, b = 0.16},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/methanol.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-11"--,
	--auto_barrel = false
},
--Uncured Epoxy
{
	type = "fluid",
	name = "uncured-epoxy",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.95, g = 0.89, b = 0.66},
	flow_color = {r = 0.94, g = 0.85, b = 0.5},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/uncured-epoxy.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-12"--,
	--auto_barrel = false
},
--Uncured Resol
{
	type = "fluid",
	name = "uncured-resol",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.85, g = 0.6, b = 0.59},
	flow_color = {r = 0.39, g = 0.19, b = 0.07},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/other-organic/uncured-resol.png",
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid-other",
	order = "05-13"--,
	--auto_barrel = false
}

})

