
data:extend(
{

--Temporary;
--Hand
{
	type = "recipe-category",
	name = "hand"
},
--Logging Camp
{
	type = "recipe-category",
	name = "temp-logging"
},

--Useless category, to occupy the base "electric-furnace" so it doesn't show up under the "made in" list of any recipes.
--Because the base "electric-furnace" is disabled in XM in favor of the Foundry-Forge
{
	type = "recipe-category",
	name = "empty"
},

--==========  Ore Processing  ==========
{
	type = "recipe-category",
	name = "basic-sluice"
},
{
	type = "recipe-category",
	name = "sluice"
},
{
	type = "recipe-category",
	name = "ore-plant"
},

--==========  Thermal  ==========
--Crude smelting: stone kiln only
{
	type = "recipe-category",
	name = "kiln"
},
--Base "smelting" placeholder - stone, brick, and steel furnaces
--Crude Refining, blast furnace only
{
	type = "recipe-category",
	name = "basic-refining"
},
--Electric Refining Furnace: improved smelting & refining
{
	type = "recipe-category",
	name = "refining"
},
--Electric Foundry-Forge: improved foundry & calcining operations
{
	type = "recipe-category",
	name = "forge"
},

--==========  Chemical  ==========
--Basic Chemistry - Burner Reactor Only
{
	type = "recipe-category",
	name = "basic-chemistry"
},
--Base "chemistry" placeholder
--Electrolysis
{
	type = "recipe-category",
	name = "electrolysis"
},
--Base "centrifuging" placeholder
--Base "oil-processing" placeholder - distillation in XM
--Chemical plant
{
	type = "recipe-category",
	name = "chemical-plant"
},

--==========  Mechanical  ==========
--Basic machine - hand and all machine tools
{
	type = "recipe-category",
	name = "basic-machine"
},
--Machine - proper machining operations, not hand-capable
{
	type = "recipe-category",
	name = "machine"
},
--Advanced machine - rapid, high-precision, complex machining operations
{
	type = "recipe-category",
	name = "advanced-machine"
},

--==========  Assembly  ==========
{
	type = "recipe-category",
	name = "basic-crafting"
}


})
