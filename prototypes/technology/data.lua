
--Base Overrides

--Base "electronics"
data.raw.technology["electronics"].effects = {{type = "unlock-recipe", recipe = "components-1-a"}, {type = "unlock-recipe", recipe = "electronic-circuit"}, 
	{type = "unlock-recipe", recipe = "control-1"}}
data.raw.technology["electronics"].prerequisites = {"soldering_1"}
data.raw.technology["electronics"].unit = {count = 50, ingredients = {{"science-pack-1", 1}}, time = 20}
data.raw.technology["electronics"].order = "05-05"

--Base "advanced-electronics"
data.raw.technology["advanced-electronics"].effects = {{type = "unlock-recipe", recipe = "components-2-a"}, 
	{type = "unlock-recipe", recipe = "advanced-circuit"}, {type = "unlock-recipe", recipe = "control-2"}, 
	{type = "unlock-recipe", recipe = "science-pack-3"}}
data.raw.technology["advanced-electronics"].prerequisites = {"electronics", "substrate_2", "tungsten-refining"}
data.raw.technology["advanced-electronics"].unit = {count = 200, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["advanced-electronics"].order = "05-06"

--Base "advanced-electronics-2"
data.raw.technology["advanced-electronics-2"].effects = {{type = "unlock-recipe", recipe = "components-3"}, 
	{type = "unlock-recipe", recipe = "components-2-b"}, {type = "unlock-recipe", recipe = "processing-unit"}, 
	{type = "unlock-recipe", recipe = "control-3"}, {type = "unlock-recipe", recipe = "high-tech-science-pack"}}
data.raw.technology["advanced-electronics-2"].prerequisites = {"advanced-electronics", "substrate_3", "semiconductors_2", "soldering_2"}
data.raw.technology["advanced-electronics-2"].unit = {count = 400, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
	time = 45}
data.raw.technology["advanced-electronics-2"].order = "05-07"


data:extend(
{

--Wire Drawing 1
{
	type = "technology",
	name = "wire_1",
	icon = "__xander-mod__/graphics/technology/data/wire_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wire-copper"
		},
		{
			type = "unlock-recipe",
			recipe = "wire-tinned"
		},
		{
			type = "unlock-recipe",
			recipe = "solder-flux-a"
		},
		{
			type = "unlock-recipe",
			recipe = "wire-solder-1"
		}
	},
	prerequisites = {"soldering_1"},
	unit =
	{
		count = 30,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "05-00",
},
--Wire Drawing 2
{
	type = "technology",
	name = "wire_2",
	icon = "__xander-mod__/graphics/technology/data/wire_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wire-tungsten"
		},
		{
			type = "unlock-recipe",
			recipe = "wire-gold"
		},
		{
			type = "unlock-recipe",
			recipe = "sheet-gilded"
		}
	},
	prerequisites = {"wire_1", "gold-refining", "silver-refining", "machine-tool_1"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "05-01",
},
--Substrates 1
{
	type = "technology",
	name = "substrate_1",
	icon = "__xander-mod__/graphics/technology/data/substrate_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "metallized-1"
		}
	},
	prerequisites = {"machine-tool_0", "reactor_0"},
	unit =
	{
		count = 20,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "05-02",
},
--Substrates 2
{
	type = "technology",
	name = "substrate_2",
	icon = "__xander-mod__/graphics/technology/data/substrate_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sheet-tinned"
		},
		{
			type = "unlock-recipe",
			recipe = "metallized-2"
		},
		{
			type = "unlock-recipe",
			recipe = "etched-2-a"
		},
		{
			type = "unlock-recipe",
			recipe = "circuit-1-b"
		}
	},
	prerequisites = {"substrate_1", "wire_1", "phenolic-resin", "nitric-acid-a"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "05-03",
},
--Substrates 3
{
	type = "technology",
	name = "substrate_3",
	icon = "__xander-mod__/graphics/technology/data/substrate_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "metallized-3"
		},
		{
			type = "unlock-recipe",
			recipe = "etched-3"
		}
	},
	prerequisites = {"substrate_2", "wire_2", "epoxy-resin", "glass-b"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 60
	},
	order = "05-04",
},
--Base "electronics" placeholder
	--order = "05-05"
--Base "advanced-electronics" placeholder
	--order = "05-06"
--Base "advanced-electronics-2" placeholder
	--order = "05-07"
--Soldering 1
{
	type = "technology",
	name = "soldering_1",
	icon = "__xander-mod__/graphics/technology/data/soldering_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "solder-1-plate-a"
		}
	},
	prerequisites = {"substrate_1"},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "05-08",
},
--Soldering 2 - Improved Tin-Lead
{
	type = "technology",
	name = "soldering_2",
	icon = "__xander-mod__/graphics/technology/data/soldering_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "solder-1-plate-b"
		},
		{
			type = "unlock-recipe",
			recipe = "solder-flux-b"
		}
	},
	prerequisites = {"soldering_1", "advanced-material-processing-2", "haber-process"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 30
	},
	order = "05-09",
},
--Soldering 3 - Silver Solder
{
	type = "technology",
	name = "soldering_3",
	icon = "__xander-mod__/graphics/technology/data/soldering_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "solder-2-plate"
		},
		{
			type = "unlock-recipe",
			recipe = "wire-solder-2"
		}
	},
	prerequisites = {"soldering_2"},
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 30
	},
	order = "05-09",
},
--Semiconductors 1
{
	type = "technology",
	name = "semiconductors_1",
	icon = "__xander-mod__/graphics/technology/data/semiconductors.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wafer-1"
		},
		{
			type = "unlock-recipe",
			recipe = "wafer-2"
		}
	},
	prerequisites = {"silicon-boule-a", "sodium-processing"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "05-10",
},
--Semiconductors 2
{
	type = "technology",
	name = "semiconductors_2",
	icon = "__xander-mod__/graphics/technology/data/semiconductors.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wafer-3"
		}
	},
	prerequisites = {"semiconductors_1", "laser", "silicon-nitride", "organics_2"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 60
	},
	order = "05-10",
}

})