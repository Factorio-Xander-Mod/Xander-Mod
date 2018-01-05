
--Base Overrides

--Base "plastics"
data.raw.technology["plastics"].prerequisites = {"heavy-reforming", "light-cracking"}
data.raw.technology["plastics"].effects = {{type = "unlock-recipe", recipe = "styrene"}, {type = "unlock-recipe", recipe = "plastic-bar"}, 
	{type = "unlock-recipe", recipe = "fiber-plastic"}, {type = "unlock-recipe", recipe = "xm-plastic-bar"}}
data.raw.technology["plastics"].order = "03-06"

--Base "explosives"
data.raw.technology["explosives"].prerequisites = {"nitrocellulose", "heavy-reforming", "flammables"}
data.raw.technology["explosives"].effects = {{type = "unlock-recipe", recipe = "unstable-explosives"}, {type = "unlock-recipe", recipe = "explosives"}}
data.raw.technology["explosives"].unit = {count = 200, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["explosives"].order = "03-08"

--Base "flammables" placeholder
data.raw.technology["flammables"].effects = {{type = "unlock-recipe", recipe = "solid-fuel-from-light-oil"}, 
	{type = "unlock-recipe", recipe = "solid-fuel-from-petroleum-gas"}, {type = "unlock-recipe", recipe = "solid-fuel-from-heavy-oil"}}
data.raw.technology["flammables"].unit = {count = 150, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["flammables"].order = "03-12"


data:extend(
{

--Crude Phenol Washing from Coke
{
	type = "technology",
	name = "phenol-a",
	icon = "__xander-mod__/graphics/technology/organic/phenol-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "phenol-a"
		}
	},
	prerequisites = {"coke-a", "reactor_0"},
	unit =
	{
		count = 20,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-09",
},
--Selective Flotation of Ore for Concentrating (Version I - Oil Clumping Aid)
{
	type = "technology",
	name = "flotation_1",
	icon = "__xander-mod__/graphics/technology/organic/flotation_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "surfactant-a"
		}
	},
	prerequisites = {"ore-processor_1", "sulfur-processing", "organics_1"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 15
	},
	order = "03-00",
},
--Ore Flotation II (Xanthate Surfactant)
{
	type = "technology",
	name = "flotation_2",
	icon = "__xander-mod__/graphics/technology/organic/flotation_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "surfactant-b"
		}
	},
	prerequisites = {"flotation_1", "electrolysis-salt-water", "sulfur-processing", "organics_2"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 15
	},
	order = "03-00",
},
--Organics 1
{
	type = "technology",
	name = "organics_1",
	icon = "__base__/graphics/technology/chemistry.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cotton"
		},
		{
			type = "unlock-recipe",
			recipe = "methanol-a"
		},
		{
			type = "unlock-recipe",
			recipe = "formaldehyde-a"
		},
		{
			type = "unlock-recipe",
			recipe = "formic-acid"
		}
	},
	prerequisites = {"reactor_0", "machine-tool_0"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "03-01",
},
--Organics 2
{
	type = "technology",
	name = "organics_2",
	icon = "__base__/graphics/technology/advanced-chemistry.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "methanol-b"
		},
		{
			type = "unlock-recipe",
			recipe = "formaldehyde-b"
		}
	},
	prerequisites = {"organics_1", "carbon-oxides", "light-cracking"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "03-02",
},
--Organics 3
{
	type = "technology",
	name = "organics_3",
	icon = "__base__/graphics/technology/advanced-chemistry.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "carbon-tetrafluoride"
		},
		{
			type = "unlock-recipe",
			recipe = "dimethyl-carbonate"
		}
	},
	prerequisites = {"organics_2", "fluorine-processing"},
	unit =
	{
		count = 800,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "03-03",
},
--Rubber A (From Natural Raw Latex)
{
	type = "technology",
	name = "rubber-a",
	icon = "__xander-mod__/graphics/technology/organic/rubber-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "latex"
		},
		{
			type = "unlock-recipe",
			recipe = "rubber-a"
		},
		{
			type = "unlock-recipe",
			recipe = "cable-insulated"
		}
	},
	prerequisites = {"organics_1"},
	unit =
	{
		count = 30,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "03-04",
},
--Rubber B (From Synthetic Styrene-Butadiene Precursor)
{
	type = "technology",
	name = "rubber-b",
	icon = "__xander-mod__/graphics/technology/organic/rubber-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "styrene"
		},
		{
			type = "unlock-recipe",
			recipe = "sbr"
		},
		{
			type = "unlock-recipe",
			recipe = "rubber-b"
		}
	},
	prerequisites = {"rubber-a", "heavy-reforming", "zinc-refining"},
	unit =
	{
		count = 350,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 30
	},
	order = "03-05",
},
--Base "plastics" placeholder
	--order = "03-06"
--Nitrocellulose
{
	type = "technology",
	name = "nitrocellulose",
	icon = "__xander-mod__/graphics/technology/organic/nitrocellulose.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "nitrocellulose"
		}
	},
	prerequisites = {"organics_1", "nitric-acid-a"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 15
	},
	order = "03-07",
},
--Base "explosives" placeholder
	--order = "03-08"
--Smokeless Powder
{
	type = "technology",
	name = "powder_2",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "powder-2"
		}
	},
	prerequisites = {"nitrocellulose", "explosives", "magnesium-processing"},
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "03-09",
},
--Blasting
{
	type = "technology",
	name = "blasting",
	icon = "__xander-mod__/graphics/technology/organic/blasting.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "blasting-fluid"
		}
	},
	prerequisites = {"mining-drill_2", "ore-processor_1", "explosives"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 10
	},
	order = "03-10",
},
--Hydrocarbon Chlorination
{
	type = "technology",
	name = "hydrocarbon-chlorination",
	icon = "__xander-mod__/graphics/technology/organic/hydrocarbon-chlorination.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "chlorobenzene"
		},
		{
			type = "unlock-recipe",
			recipe = "phenol-b"
		},
		{
			type = "unlock-recipe",
			recipe = "ethylene-dichloride"
		},
		{
			type = "unlock-recipe",
			recipe = "epichlorohydrin"
		}
	},
	prerequisites = {"electrolysis-salt-water", "organics_2"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 45
	},
	order = "03-11",
},
--Base "flammables" placeholder
	--order = "03-12"
--Lubricant B (Lithium Grease)
{
	type = "technology",
	name = "lubricant-b",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "lubricant-b"
		}
	},
	prerequisites = {"oil-processing", "phenolic-resin", "lithium-precipitation"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"production-science-pack", 1}
		},
		time = 30
	},
	order = "03-13",
},
--Phenolic Resin
{
	type = "technology",
	name = "phenolic-resin",
	icon = "__xander-mod__/graphics/technology/organic/phenolic-resin.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "uncured-resol"
		}
	},
	prerequisites = {"organics_1", "phenol-a"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 45
	},
	order = "03-14",
},
--Heavy Naptha Processing
{
	type = "technology",
	name = "naptha-processing",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "naptha-heavy"
		},
		{
			type = "unlock-recipe",
			recipe = "naptha-benzene"
		}
	},
	prerequisites = {"heavy-cracking", "light-reforming"},
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
	order = "03-15",
},
--Heavy Cracking
{
	type = "technology",
	name = "heavy-cracking",
	icon = "__xander-mod__/graphics/technology/organic/heavy-cracking.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "heavy-oil-cracking"
		},
		{
			type = "unlock-recipe",
			recipe = "light-oil-cracking"
		}
	},
	prerequisites = {"oil-processing"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "03-16",
},
--Light Cracking
{
	type = "technology",
	name = "light-cracking",
	icon = "__xander-mod__/graphics/technology/organic/light-cracking.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "light-propylene"
		},
		{
			type = "unlock-recipe",
			recipe = "propylene-ethylene"
		},
		{
			type = "unlock-recipe",
			recipe = "ethylene-methane"
		}
	},
	prerequisites = {"oil-processing"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "03-17",
},
--Light Reforming
{
	type = "technology",
	name = "light-reforming",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "methane-ethylene"
		},
		{
			type = "unlock-recipe",
			recipe = "ethylene-propylene"
		}
	},
	prerequisites = {"light-cracking"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "03-18",
},
--Heavy Reforming
{
	type = "technology",
	name = "heavy-reforming",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "ethylene-butadiene"
		},
		{
			type = "unlock-recipe",
			recipe = "light-benzene"
		}
	},
	prerequisites = {"heavy-cracking"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "03-19",
},
--Synthesis Gas
{
	type = "technology",
	name = "synthesis-gas",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "coal-gasification"
		},
		{
			type = "unlock-recipe",
			recipe = "methane-gasification"
		}
	},
	prerequisites = {"carbon-oxides", "light-cracking"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 30
	},
	order = "03-20",
},
--Steam Cracking of Methane
{
	type = "technology",
	name = "methane-cracking",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "methane-cracking"
		}
	},
	prerequisites = {"synthesis-gas", "gas-distillation"},
	unit =
	{
		count = 450,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 45
	},
	order = "03-21",
},
--Epoxy
{
	type = "technology",
	name = "epoxy-resin",
	icon = "__xander-mod__/graphics/technology/organic/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "epoxy-resin"
		},
		{
			type = "unlock-recipe",
			recipe = "epoxy-hardener"
		},
		{
			type = "unlock-recipe",
			recipe = "uncured-epoxy"
		}
	},
	prerequisites = {"phenolic-resin", "hydrocarbon-chlorination", "haber-process"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 45
	},
	order = "03-22",
}

})