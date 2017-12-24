
--Base Overrides

--Base "water"
data.raw.fluid["water"].order = "00-00"
--Base "steam"
data.raw.fluid["steam"].base_color = {r = 0.6, g = 0.6, b = 0.6}
data.raw.fluid["steam"].order = "00-01"
--Base "sulfuric-acid"
data.raw.fluid["sulfuric-acid"].order = "00-04"


data:extend(
{

--Base "water" placeholder
	--order = "00-00"
--Base "steam" placeholder
	--order = "00-01"
--Distilled Water (pure H2O)
{
	type = "fluid",
	name = "distilled-water",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.49, g = 0.9, b = 0.9},
	flow_color = {r = 0.9, g = 0.9, b = 0.9},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/distilled-water.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-02"
},
--Mineral Water
{
	type = "fluid",
	name = "mineral-water",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0, g = 0.6, b = 0.35},
	flow_color = {r = 0.7, g = 0.7, b = 0.7},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/mineral-water.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-03"
},
--Base "sulfuric-acid" placeholder
	--order = "00-04"
--Nitric Acid
{
	type = "fluid",
	name = "nitric-acid",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.32, g = 0.18, b = 0.6},
	flow_color = {r = 0.45, g = 0.2, b = 1},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/nitric-acid.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-05"
},
--Nitric-Sulfuric Acid Mixture
{
	type = "fluid",
	name = "nitric-sulfuric",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.7, g = 0.21, b = 0.7},
	flow_color = {r = 0.9, g = 0.18, b = 0.9},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/nitric-sulfuric.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-06"
},
--Oleum
{
	type = "fluid",
	name = "oleum",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.9, g = 0.75, b = 0},
	flow_color = {r = 0.88, g = 0.25, b = 0},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/oleum.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-07"
},
--Phosphoric Acid
{
	type = "fluid",
	name = "phosphoric-acid",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.9, g = 0.45, b = 0},
	flow_color = {r = 0.88, g = 0.88, b = 0.88},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/phosphoric-acid.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-08"
},
--Gray Water - Light Waste
{
	type = "fluid",
	name = "gray-water",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.4, g = 0.31, b = 0.24},
	flow_color = {r = 0.3, g = 0.3, b = 0.3},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/gray-water.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-09"
},
--Waste Water - Medium Waste
{
	type = "fluid",
	name = "waste-water",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.4, g = 0.31, b = 0.24},
	flow_color = {r = 0.3, g = 0.3, b = 0.3},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/waste-water.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-10"
},
--Waste Slurry - Heavy Waste
{
	type = "fluid",
	name = "waste-slurry",
	default_temperature = 25,
	heat_capacity = "0.1KJ",
	base_color = {r = 0.4, g = 0.31, b = 0.24},
	flow_color = {r = 0.3, g = 0.3, b = 0.3},
	max_temperature = 100,
	icon = "__xander-mod__/graphics/fluid/aqueous/waste-slurry.png",
	icon_size = 32,
	pressure_to_speed_ratio = 0.4,
	flow_to_energy_ratio = 0.59,
	subgroup = "fluid",
	order = "00-11"
}

})

