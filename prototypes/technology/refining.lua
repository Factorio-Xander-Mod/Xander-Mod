
--Base Overrides

--Base "coal-liquefaction"
data.raw.technology["coal-liquefaction"].prerequisites = {"reactor_3", "naptha-processing"}
data.raw.technology["coal-liquefaction"].unit.count = 500
data.raw.technology["coal-liquefaction"].order = "01-07"
--Base "oil-processing"
data.raw.technology["oil-processing"].icon = "__xander-mod__/graphics/technology/refining/oil-processing.png"
data.raw.technology["oil-processing"].icon_size = 128
data.raw.technology["oil-processing"].prerequisites = {"pumpjack", "distillation-column"}
data.raw.technology["oil-processing"].effects = {{type = "unlock-recipe", recipe = "basic-oil-processing"}, 
	{type = "unlock-recipe", recipe = "lubricant"}}
data.raw.technology["oil-processing"].unit.count = 150	
data.raw.technology["oil-processing"].order = "01-11"
--Base "advanced-oil-processing"
data.raw.technology["advanced-oil-processing"].prerequisites = {"oil-processing", "reactor_2", "heavy-cracking"}
data.raw.technology["advanced-oil-processing"].effects = {{type = "unlock-recipe", recipe = "advanced-oil-processing"}}
data.raw.technology["advanced-oil-processing"].order = "01-12"
--Base "kovarex-enrichment-process"
data.raw.technology["kovarex-enrichment-process"].prerequisites = {"nuclear-power", "weapons-enrichment"}
data.raw.technology["kovarex-enrichment-process"].order = "01-45"
--Base "nuclear-fuel-reprocessing"
data.raw.technology["nuclear-fuel-reprocessing"].order = "01-46"


data:extend(
{

--Fluorine Processing (Compounds only, not the pure element.)
{
	type = "technology",
	name = "fluorine-processing",
	icon = "__xander-mod__/graphics/technology/refining/fluorine-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fluorite"
		},
		{
			type = "unlock-recipe",
			recipe = "hydrogen-fluoride"
		},
		{
			type = "unlock-recipe",
			recipe = "cryolite-mixture"
		}
	},
	prerequisites = {"flotation_1", "reactor_1", "sulfuric-acid-a"}, --"blasting", 
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 60
	},
	order = "01-00",
},
--Phosphorus Processing
{
	type = "technology",
	name = "phosphorus-processing",
	icon = "__xander-mod__/graphics/technology/refining/phosphorus-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "phosphate-rock"
		},
		{
			type = "unlock-recipe",
			recipe = "phosphoric-acid"
		},
		{
			type = "unlock-recipe",
			recipe = "phosphorus-smelting"
		}
	},
	prerequisites = {"flotation_1", "sulfuric-acid-a"}, --"blasting", 
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 20
	},
	order = "01-02",
},
--Aluminum Refining
{
	type = "technology",
	name = "aluminum-refining",
	icon = "__xander-mod__/graphics/technology/refining/aluminum-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "bayer-process"
		},
		{
			type = "unlock-recipe",
			recipe = "gibbsite-calcining"
		},
		{
			type = "unlock-recipe",
			recipe = "hall-heroult"
		}
	},
	prerequisites = {"ore-processor_1", "electrolysis-salt-water", "carbon-processing", "fluorine-processing"},
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
	order = "01-03",
},
--Bauxite Sediment
{
	type = "technology",
	name = "bauxite-sediment",
	icon = "__xander-mod__/graphics/technology/refining/bauxite-sediment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "bauxite-clay"
		},
		{
			type = "unlock-recipe",
			recipe = "bauxite-sand"
		}
	},
	prerequisites = {"ore-processor_1"},
	unit =
	{
		count = 75,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "01-04",
},
--Acheson Process
{
	type = "technology",
	name = "acheson-process",
	icon = "__xander-mod__/graphics/technology/refining/acheson-process.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "acheson-silicon"
		},
		{
			type = "unlock-recipe",
			recipe = "acheson-carbide"
		},
		{
			type = "unlock-recipe",
			recipe = "acheson-graphite"
		},
		{
			type = "unlock-recipe",
			recipe = "metallurgical-powder"
		}
	},
	prerequisites = {"furnace_4", "smelting-graphite"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "01-05",
},
--Crude Glass Melting
{
	type = "technology",
	name = "glass-a",
	icon = "__xander-mod__/graphics/technology/refining/glass-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "hand-sand"
		},
		{
			type = "unlock-recipe",
			recipe = "hand-limestone"
		},
		{
			type = "unlock-recipe",
			recipe = "glass-a"
		}
	},
	prerequisites = {"hand-saltpeter", "kiln-soda"},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-03",
},
--Advanced Glass
{
	type = "technology",
	name = "glass-b",
	icon = "__xander-mod__/graphics/technology/refining/glass-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "glass-b"
		},
		{
			type = "unlock-recipe",
			recipe = "fused-quartz"
		}
	},
	prerequisites = {"advanced-material-processing-2", "boron-processing", "aluminum-refining"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "01-06",
},
--Crude Coke from Coal
{
	type = "technology",
	name = "coke-a",
	icon = "__xander-mod__/graphics/technology/refining/coke-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "coke-a"
		}
	},
	unit =
	{
		count = 5,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-02",
},
--Crude Grapite Making
{
	type = "technology",
	name = "smelting-graphite",
	icon = "__xander-mod__/graphics/technology/refining/smelting-graphite.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "smelting-graphite"
		},
		{
			type = "unlock-recipe",
			recipe = "graphite-block-a"
		}
	},
	prerequisites = {"ore-processor_0"},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-04",
},
--Base "coal-liquefaction" placeholder
	--order = "01-07"
--Copper Refining
{
	type = "technology",
	name = "copper-refining",
	icon = "__xander-mod__/graphics/technology/refining/copper-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "chalcocite-washing"
		},
		{
			type = "unlock-recipe",
			recipe = "chalcocite-roasting"
		},
		{
			type = "unlock-recipe",
			recipe = "copper-smelting"
		}
	},
	prerequisites = {"ore-processor_1", "kiln-soda"},
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
	order = "01-08",
},
--Cobalt Refining
{
	type = "technology",
	name = "cobalt-refining",
	icon = "__xander-mod__/graphics/technology/refining/cobalt-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cobalt-oxide"
		},
		{
			type = "unlock-recipe",
			recipe = "cobalt-electrowinning"
		}
	},
	prerequisites = {"ore-processor_1", "electrolyzer_1", "calcium-processing", "haber-process"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "01-09",
},
--Copper-Cobalt Refining
{
	type = "technology",
	name = "copper-cobalt",
	icon = "__xander-mod__/graphics/technology/refining/copper-cobalt.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "copper-cobalt"
		}
	},
	prerequisites = {"ore-processor_2", "copper-refining", "cobalt-refining"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-10",
},
--Base "oil-processing" placeholder
	--order = "01-11"
--Base "advanced-oil-processing" placeholder
	--order = "01-12"
--Crude Nickel Smelting
{
	type = "technology",
	name = "nickel-smelting",
	icon = "__xander-mod__/graphics/technology/refining/nickel-smelting.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "smelting-nickel"
		}
	},
	prerequisites = {"advanced-material-processing"},
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
	order = "01-13"
},
--Nickel Refining
{
	type = "technology",
	name = "nickel-refining",
	icon = "__xander-mod__/graphics/technology/refining/nickel-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "nickel-oxide"
		},
		{
			type = "unlock-recipe",
			recipe = "nickel-smelting"
		}
	},
	prerequisites = {"ore-processor_1", "calcium-processing"}, --"blasting", 
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "01-13"
},
--Platinum Refining
{
	type = "technology",
	name = "platinum-refining",
	icon = "__xander-mod__/graphics/technology/refining/platinum-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "platinum-sponge"
		},
		{
			type = "unlock-recipe",
			recipe = "platinum-smelting"
		}
	},
	prerequisites = {"flotation_1", "boron-processing"}, --"blasting", 
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "01-14",
},
--Nickel-Platinum Refining
{
	type = "technology",
	name = "nickel-platinum",
	icon = "__xander-mod__/graphics/technology/refining/nickel-platinum.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "nickel-platinum"
		}
	},
	prerequisites = {"nickel-refining", "platinum-refining"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-15",
},
--Tin Refining
{
	type = "technology",
	name = "tin-refining",
	icon = "__xander-mod__/graphics/technology/refining/tin-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cassiterite-washing"
		},
		{
			type = "unlock-recipe",
			recipe = "tin-smelting"
		}
	},
	prerequisites = {"ore-processor_1", "furnace_4", "kiln-soda"},
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
	order = "01-16",
},
--Tungsten Refining
{
	type = "technology",
	name = "tungsten-refining",
	icon = "__xander-mod__/graphics/technology/refining/tungsten-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "scheelite-flotation"
		},
		{
			type = "unlock-recipe",
			recipe = "scheelite-dissolution"
		},
		{
			type = "unlock-recipe",
			recipe = "tungsten-reduction"
		},
		{
			type = "unlock-recipe",
			recipe = "tungsten-sintering"
		}
	},
	prerequisites = {"flotation_1", "furnace_4", "electrolysis-salt-water", "advanced-material-processing-2"},
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
	order = "01-17",
},
--Gold Refining
{
	type = "technology",
	name = "gold-refining",
	icon = "__xander-mod__/graphics/technology/refining/gold-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "gold-sponge"
		},
		{
			type = "unlock-recipe",
			recipe = "miller-process"
		}
	},
	prerequisites = {"flotation_1", "advanced-material-processing-2", "electrolysis-salt-water", "calcium-processing"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 45
	},
	order = "01-18",
},
--Cassiterite-Scheelinte Separation
{
	type = "technology",
	name = "cassiterite-scheelite",
	icon = "__xander-mod__/graphics/technology/refining/cassiterite-scheelite.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cassiterite-scheelite"
		}
	},
	prerequisites = {"ore-processor_2", "tin-refining", "tungsten-refining"},
	unit =
	{
		count = 350,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-19",
},
--Cassiterite-Gold Refining
{
	type = "technology",
	name = "cassiterite-gold",
	icon = "__xander-mod__/graphics/technology/refining/cassiterite-gold.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cassiterite-gold"
		}
	},
	prerequisites = {"tin-refining", "gold-refining", "boron-processing"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-20",
},
--Chromium Refining
{
	type = "technology",
	name = "chromium-refining",
	icon = "__xander-mod__/graphics/technology/refining/chromium-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "chromite-flotation"
		},
		{
			type = "unlock-recipe",
			recipe = "chromite-slagging"
		},
		{
			type = "unlock-recipe",
			recipe = "chromate-leaching"
		},
		{
			type = "unlock-recipe",
			recipe = "chromium-reduction"
		}
	},
	prerequisites = {"flotation_1", "electrolysis-salt-water", "magnesium-refining"},
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
	order = "01-21",
},
--Titanium Refining
{
	type = "technology",
	name = "titanium-refining",
	icon = "__xander-mod__/graphics/technology/refining/titanium-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rutile-flotation"
		},
		{
			type = "unlock-recipe",
			recipe = "rutile-chlorination"
		},
		{
			type = "unlock-recipe",
			recipe = "titanium-oxide"
		},
		{
			type = "unlock-recipe",
			recipe = "kroll-titanium"
		}
	},
	prerequisites = {"flotation_1", "electrolysis-salt-water", "magnesium-refining"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "01-22",
},
--Zirconium Refining
{
	type = "technology",
	name = "zirconium-refining",
	icon = "__xander-mod__/graphics/technology/refining/zirconium-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "zirconia-flotation"
		},
		{
			type = "unlock-recipe",
			recipe = "zirconia-chlorination"
		},
		{
			type = "unlock-recipe",
			recipe = "zirconium-oxide"
		},
		{
			type = "unlock-recipe",
			recipe = "kroll-zirconium"
		}
	},
	prerequisites = {"titanium-refining"},
	unit =
	{
		count = 750,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-23",
},
--Zirconium Remelting & Forging
{
	type = "technology",
	name = "forging-zirconium",
	icon = "__xander-mod__/graphics/technology/refining/forging-zirconium.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "zirconium-remelting"
		}
	},
	prerequisites = {"zirconium-refining"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 45
	},
	order = "01-24",
},
--Iron Refining
{
	type = "technology",
	name = "iron-refining",
	icon = "__xander-mod__/graphics/technology/refining/iron-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "hematite-washing"
		},
		{
			type = "unlock-recipe",
			recipe = "raw-iron"
		}
	},
	prerequisites = {"ore-processor_1", "calcium-processing", "bessemer-process"},
	unit =
	{
		count = 75,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 15
	},
	order = "01-25",
},
--Vanadium Refining
{
	type = "technology",
	name = "vanadium-refining",
	icon = "__xander-mod__/graphics/technology/refining/vanadium-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "vanadium-magnetite"
		},
		{
			type = "unlock-recipe",
			recipe = "magnetite-vanadium-slagging"
		},
		{
			type = "unlock-recipe",
			recipe = "vanadium-leaching"
		},
		{
			type = "unlock-recipe",
			recipe = "vanadate-decomposition"
		},
		{
			type = "unlock-recipe",
			recipe = "vanadium-reduction"
		}
	},
	prerequisites = {"ore-processor_1", "calcium-processing", "haber-process", "magnesium-refining"},
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
	order = "01-26",
},
--Iron-Vanadium Co-Refining
{
	type = "technology",
	name = "iron-vanadium",
	icon = "__xander-mod__/graphics/technology/refining/iron-vanadium.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "iron-vanadium"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-vanadium-slagging"
		}
	},
	prerequisites = {"iron-refining", "vanadium-refining"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-27",
},
--Crude Sulfur Melting from Ore
{
	type = "technology",
	name = "smelting-sulfur",
	icon = "__xander-mod__/graphics/technology/refining/smelting-sulfur.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "smelting-sulfur"
		}
	},
	unit =
	{
		count = 5,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-05",
},
--Lead Refining
{
	type = "technology",
	name = "lead-refining",
	icon = "__xander-mod__/graphics/technology/refining/lead-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "galena-washing"
		},
		{
			type = "unlock-recipe",
			recipe = "galena-roasting"
		},
		{
			type = "unlock-recipe",
			recipe = "lead-smelting"
		}
	},
	prerequisites = {"ore-processor_1", "kiln-soda"},
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
	order = "01-28",
},
--Silver Refining
{
	type = "technology",
	name = "silver-refining",
	icon = "__xander-mod__/graphics/technology/refining/silver-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "silver-sponge"
		},
		{
			type = "unlock-recipe",
			recipe = "silver-electrowinning"
		}
	},
	prerequisites = {"flotation_1", "electrolyzer_1", "nitric-acid-a"},
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
	order = "01-29",
},
--Parkes Process Lead-Silver Refining
{
	type = "technology",
	name = "parkes-process",
	icon = "__xander-mod__/graphics/technology/refining/parkes-process.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "parkes-process"
		}
	},
	prerequisites = {"lead-refining", "silver-refining", "zinc-refining"},
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
	order = "01-30"
},
--Crude Saltpeter from Various Mineral Deposits
{
	type = "technology",
	name = "hand-saltpeter",
	icon = "__xander-mod__/graphics/technology/refining/hand-saltpeter.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "hand-saltpeter"
		}
	},
	unit =
	{
		count = 5,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 5
	},
	order = "00-01",
},
--Boron Processing
{
	type = "technology",
	name = "boron-processing",
	icon = "__xander-mod__/graphics/technology/refining/boron-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "borax-evaporation"
		},
		{
			type = "unlock-recipe",
			recipe = "boron-oxide"
		}
	},
	prerequisites = {"pumpjack", "furnace_4", "electrolysis-salt-water"},
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
	order = "01-31"
},
--Lithium Precipitation
{
	type = "technology",
	name = "lithium-precipitation",
	icon = "__xander-mod__/graphics/technology/refining/lithium-precipitation.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "lithium-precipitation"
		}
	},
	prerequisites = {"pumpjack", "reactor_1", "calcium-processing"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 30
	},
	order = "01-32"
},
--Gas Distillation
{
	type = "technology",
	name = "gas-distillation",
	icon = "__xander-mod__/graphics/technology/refining/gas-distillation.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "gas-distillation"
		}
	},
	prerequisites = {"pumpjack", "distillation-column"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 30
	},
	order = "01-33"
},
--Advanced Gas Distillation
{
	type = "technology",
	name = "advanced-gas-distillation",
	icon = "__xander-mod__/graphics/technology/refining/gas-distillation.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "advanced-gas-distillation"
		}
	},
	prerequisites = {"reactor_3", "gas-distillation", "light-cracking", "light-reforming"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 30
	},
	order = "01-34"
},
--Calcium Processing
{
	type = "technology",
	name = "calcium-processing",
	icon = "__xander-mod__/graphics/technology/refining/calcium-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "limestone-washing"
		},
		{
			type = "unlock-recipe",
			recipe = "limestone-calcining"
		}
	},
	prerequisites = {"ore-processor_1", "furnace_4"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 20
	},
	order = "01-35"
},
--Magnesium Processing
{
	type = "technology",
	name = "magnesium-processing",
	icon = "__xander-mod__/graphics/technology/refining/magnesium-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "magnesite-washing"
		},
		{
			type = "unlock-recipe",
			recipe = "magnesite-calcining"
		},
		{
			type = "unlock-recipe",
			recipe = "magnesia-dissolution"
		}
	},
	prerequisites = {"ore-processor_1", "furnace_4"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 20
	},
	order = "01-36"
},
--Magnesium Refining
{
	type = "technology",
	name = "magnesium-refining",
	icon = "__xander-mod__/graphics/technology/refining/magnesium-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "magnesium-electrolysis"
		},
		{
			type = "unlock-recipe",
			recipe = "magnesia-precipitation"
		}
	},
	prerequisites = {"magnesium-processing", "electrolysis-salt-water", "carbon-processing"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 45
	},
	order = "01-37"
},
--Zinc Refining
{
	type = "technology",
	name = "zinc-refining",
	icon = "__xander-mod__/graphics/technology/refining/zinc-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sphalerite-flotation"
		},
		{
			type = "unlock-recipe",
			recipe = "sphalerite-roasting"
		},
		{
			type = "unlock-recipe",
			recipe = "zinc-electrowinning"
		}
	},
	prerequisites = {"flotation_1", "furnace_4", "electrolyzer_1"}, --"blasting", 
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
	order = "01-38"
},
--Chalcopyrite Processing
{
	type = "technology",
	name = "chalcopyrite-processing",
	icon = "__xander-mod__/graphics/technology/refining/chalcopyrite-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "chalcopyrite-washing"
		},
		{
			type = "unlock-recipe",
			recipe = "chalcopyrite-roasting"
		},
		{
			type = "unlock-recipe",
			recipe = "fayalite-cracking"
		}
	},
	prerequisites = {"ore-processor_1", "furnace_4"}, --"blasting", 
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "01-39"
},
--Chalcopyrite-Sphalerite Co-Flotation
{
	type = "technology",
	name = "chalcopyrite-sphalerite",
	icon = "__xander-mod__/graphics/technology/refining/chalcopyrite-sphalerite.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "chalcopyrite-sphalerite"
		}
	},
	prerequisites = {"zinc-refining", "chalcopyrite-processing", "ore-processor_2"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-40"
},
--Rare Earth (RE) Refining
{
	type = "technology",
	name = "re-refining",
	icon = "__xander-mod__/graphics/technology/refining/re-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "monazite-flotation"
		},
		{
			type = "unlock-recipe",
			recipe = "monazite-conversion"
		},
		{
			type = "unlock-recipe",
			recipe = "re-reduction"
		}
	},
	prerequisites = {"flotation_1", "haber-process", "magnesium-refining"}, --"blasting", 
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "01-41"
},
--Uranium Refining
{
	type = "technology",
	name = "uranium-refining",
	icon = "__xander-mod__/graphics/technology/refining/uranium-refining.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "uranyl-nitrate"
		},
		{
			type = "unlock-recipe",
			recipe = "uranium-hexafluoride"
		}
	},
	prerequisites = {"ore-processor_1", "nitric-acid-b", "fluorine-processing"}, --"blasting", 
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 45
	},
	order = "01-42"
},
--Uranium Enrichment to Fuel Grade
{
	type = "technology",
	name = "fuel-enrichment",
	icon = "__xander-mod__/graphics/technology/refining/fuel-enrichment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "uranium-processing"
		},
		{
			type = "unlock-recipe",
			recipe = "fuel-hydrolysis"
		},
		{
			type = "unlock-recipe",
			recipe = "238-hydrolysis"
		},
		{
			type = "unlock-recipe",
			recipe = "238-reduction"
		}
	},
	prerequisites = {"uranium-refining", "centrifuge"},
	unit =
	{
		count = 800,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "01-43"
},
--Uranium Enrichment to Weapons Grade
{
	type = "technology",
	name = "weapons-enrichment",
	icon = "__xander-mod__/graphics/technology/refining/weapons-enrichment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "weapons-enrichment"
		}
	},
	prerequisites = {"fuel-enrichment"},
	unit =
	{
		count = 2000,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "01-44"
},
--Base "kovarex-enrichment-process" placeholder
	--order = "01-45"
--Base "nuclear-fuel-reprocessing" placeholder
	--order = "01-46"
--Sodium Processing
{
	type = "technology",
	name = "sodium-processing",
	icon = "__xander-mod__/graphics/technology/refining/sodium-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "salt-evaporation"
		},
		{
			type = "unlock-recipe",
			recipe = "sodium-hydroxide"
		}
	},
	prerequisites = {"furnace_4", "leblanc-process", "calcium-processing"},
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
	order = "01-47"
},
--Air Processing
{
	type = "technology",
	name = "air-processing",
	icon = "__xander-mod__/graphics/technology/refining/air-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "air-compression"
		},
		{
			type = "unlock-recipe",
			recipe = "air-distillation-a"
		},
		{
			type = "unlock-recipe",
			recipe = "air-distillation-b"
		},
		{
			type = "unlock-recipe",
			recipe = "water-condensation"
		}
	},
	prerequisites = {"furnace_4", "reactor_1", "calcium-processing"},
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
	order = "01-48"
},
--Crude Soda from Charcoal
{
	type = "technology",
	name = "kiln-soda",
	icon = "__xander-mod__/graphics/technology/refining/kiln-soda.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "kiln-soda"
		}
	},
	unit =
	{
		count = 5,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-00",
}

})
