
--Base Overrides

--coal
data.raw["autoplace-control"]["coal"].order = "02"
--copper-ore
data.raw["autoplace-control"]["copper-ore"].order = "03"
--crude-oil
data.raw["autoplace-control"]["crude-oil"].order = "04"
--iron-ore
data.raw["autoplace-control"]["iron-ore"].order = "03"
--uranium-ore
data.raw["autoplace-control"]["uranium-ore"].order = "12"
--stone
data.raw["autoplace-control"]["stone"].order = "13"


data:extend(
{

--Apatite
{
	type = "autoplace-control",
	name = "apatite",
	richness = true,
	order = "00"
},
--Bauxite
{
	type = "autoplace-control",
	name = "bauxite",
	richness = true,
	order = "01"
},
--Base "coal" placeholder
	--order = "02"
--Base "copper-ore" placeholder
	--order = "03"
--Base "crude-oil" placeholder
	--order = "04"
--Garnierite
{
	type = "autoplace-control",
	name = "garnierite",
	richness = true,
	order = "05"
},
--Granitic Ore
{
	type = "autoplace-control",
	name = "granitic-ore",
	richness = true,
	order = "06"
},
--Heavy Mineral Sand
{
	type = "autoplace-control",
	name = "heavy-sand",
	richness = true,
	order = "07"
},
--Base "iron-ore" placeholder
	--order = "08"
--Lead Ore
{
	type = "autoplace-control",
	name = "lead-ore",
	richness = true,
	order = "09"
},
--Mineral Water
{
	type = "autoplace-control",
	name = "mineral-water",
	richness = true,
	order = "10"
},
--Natural Gas
{
	type = "autoplace-control",
	name = "natural-gas",
	richness = true,
	order = "11"
},
--Base "uranium-ore" placeholder
	--order = "12"
--Base "stone" placeholder
	--order = "13"
--Sulfidic Ore
{
	type = "autoplace-control",
	name = "sulfidic-ore",
	richness = true,
	order = "14"
}

}
)