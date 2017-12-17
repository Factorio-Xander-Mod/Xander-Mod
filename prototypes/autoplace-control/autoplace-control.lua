
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
	order = "00",
	category = "resource",
},
--Bauxite
{
	type = "autoplace-control",
	name = "bauxite",
	richness = true,
	order = "01",
	category = "resource",
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
	order = "05",
	category = "resource",
},
--Granitic Ore
{
	type = "autoplace-control",
	name = "granitic-ore",
	richness = true,
	order = "06",
	category = "resource",
},
--Heavy Mineral Sand
{
	type = "autoplace-control",
	name = "heavy-sand",
	richness = true,
	order = "07",
	category = "resource",
},
--Base "iron-ore" placeholder
	--order = "08"
--Lead Ore
{
	type = "autoplace-control",
	name = "lead-ore",
	richness = true,
	category = "resource",
	order = "09",
	category = "resource",
},
--Mineral Water
{
	type = "autoplace-control",
	name = "mineral-water",
	richness = true,
	order = "10",
	category = "resource",
},
--Natural Gas
{
	type = "autoplace-control",
	name = "natural-gas",
	richness = true,
	order = "11",
	category = "resource",
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
	order = "14",
	category = "resource",
}

}
)