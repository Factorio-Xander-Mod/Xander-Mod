--Base Overrides

--Base "steel-processing"
data.raw.technology["steel-processing"].effects = {{type = "unlock-recipe", recipe = "steel-plate"}, {type = "unlock-recipe", recipe = "forging-steel-a"}, 
	{type = "unlock-recipe", recipe = "blank-3-a"}, {type = "unlock-recipe", recipe = "steel-axe"}}
data.raw.technology["steel-processing"].prerequisites = {"coke-a"}
data.raw.technology["steel-processing"].unit.count = 20
data.raw.technology["steel-processing"].unit.ingredients = {{"science-pack-0", 1}}
data.raw.technology["steel-processing"].unit.time = 10
data.raw.technology["steel-processing"].order = "00-06"

--Base "concrete"
data.raw.technology["concrete"].prerequisites = {"cement-a", "landfill"}
data.raw.technology["concrete"].effects = {{type = "unlock-recipe", recipe = "concrete"}, {type = "unlock-recipe", recipe = "hazard-concrete"}, 
	{type = "unlock-recipe", recipe = "reverse-hazard"}}
data.raw.technology["concrete"].order = "02-20"

--Base "landfill"
data.raw.technology["landfill"].icon = "__xander-mod__/graphics/technology/bulk/landfill.png"
data.raw.technology["landfill"].icon_size = 128
data.raw.technology["landfill"].prerequisites = {"bauxite-sediment"}
data.raw.technology["landfill"].effects = {{type = "unlock-recipe", recipe = "landfill"}, {type = "unlock-recipe", recipe = "modified-a"}}
data.raw.technology["landfill"].order = "02-21"
	
--Base "sulfur-processing"
data.raw.technology["sulfur-processing"].prerequisites = {"light-cracking"}
data.raw.technology["sulfur-processing"].effects = {{type = "unlock-recipe", recipe = "hydrogen-sulfide"}, 
	{type = "unlock-recipe", recipe = "sulfur-dioxide"}, {type = "unlock-recipe", recipe = "sulfur"}}
data.raw.technology["sulfur-processing"].unit.count = 200
data.raw.technology["sulfur-processing"].order = "02-33"


--Move in from "part"
data:extend(
{
--Carbon Fiber
{
	type = "technology",
	name = "fiber-carbon",
	icon = "__xander-mod__/graphics/technology/part/fiber-carbon.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fiber-carbon"
		}
	},
	prerequisites = {"plastics", "advanced-material-processing-2", "carbon-processing"},
	unit =
	{
		count = 400,
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
	order = "04-04"
},
--Tungsten Carbide Cermet with Cobalt
{
	type = "technology",
	name = "tungsten-cermet",
	icon = "__xander-mod__/graphics/technology/part/tungsten-cermet.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "tungsten-carbide"
		},
		{
			type = "unlock-recipe",
			recipe = "tungsten-cermet"
		}
	},
	prerequisites = {"tungsten-refining", "acheson-process", "cobalt-refining"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "04-05"
}

})

--Main bulk material techs
data:extend(
{

--Improved Iron Casting
{
	type = "technology",
	name = "forging-iron",
	icon = "__xander-mod__/graphics/technology/bulk/forging-iron.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "forging-iron-c"
		},
		{
			type = "unlock-recipe",
			recipe = "blank-1-b"
		}
	},
	prerequisites = {"iron-refining", "carbon-processing", "acheson-process"},
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
	order = "02-00",
},
--Base "steel-processing" placeholder
	--order = "00-06"
--Bessemer Process Steel Smelting
{
	type = "technology",
	name = "bessemer-process",
	icon = "__xander-mod__/graphics/technology/bulk/bessemer-process.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "steel-plate-b"
		}
	},
	prerequisites = {"advanced-material-processing", "reactor_0"},
	unit =
	{
		count = 40,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 20
	},
	order = "02-01",
},
--Improved Steel Forging
{
	type = "technology",
	name = "forging-steel",
	icon = "__xander-mod__/graphics/technology/bulk/forging-steel.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "forging-steel-b"
		},
		{
			type = "unlock-recipe",
			recipe = "steel-plate-c"
		},
		{
			type = "unlock-recipe",
			recipe = "blank-3-b"
		}
	},
	prerequisites = {"iron-refining", "carbon-processing", "zinc-refining"},
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
	order = "02-01",
},
--Duralumin Casting
{
	type = "technology",
	name = "forging-aluminum",
	icon = "__xander-mod__/graphics/technology/bulk/forging-aluminum.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "forging-aluminum"
		}
	},
	prerequisites = {"aluminum-refining", "magnesium-refining", "zinc-refining"},
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
	order = "02-02",
},
--Alloy Steel A
{
	type = "technology",
	name = "forging-alloy-a",
	icon = "__xander-mod__/graphics/technology/bulk/forging-alloy-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "forging-alloy-a"
		},
		{
			type = "unlock-recipe",
			recipe = "blank-4"
		},
		{
			type = "unlock-recipe",
			recipe = "axe-4"
		}
	},
	prerequisites = {"forging-steel", "nickel-refining", "tungsten-refining"},
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
	order = "02-03",
},
--Alloy Steel B
{
	type = "technology",
	name = "forging-alloy-b",
	icon = "__xander-mod__/graphics/technology/bulk/forging-alloy-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "forging-alloy-b"
		}
	},
	prerequisites = {"forging-alloy-a", "chromium-refining", "cobalt-refining"},
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
		time = 60
	},
	order = "02-04",
},
--Stainless Steel
{
	type = "technology",
	name = "forging-stainless",
	icon = "__xander-mod__/graphics/technology/bulk/forging-stainless.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "forging-stainless"
		}
	},
	prerequisites = {"forging-steel", "nickel-refining", "chromium-refining"},
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
	order = "02-05",
},
--Titanium Alloy
{
	type = "technology",
	name = "forging-titanium",
	icon = "__xander-mod__/graphics/technology/bulk/forging-titanium.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "titanium-remelting"
		},
		{
			type = "unlock-recipe",
			recipe = "forging-titanium"
		}
	},
	prerequisites = {"titanium-refining", "aluminum-refining", "vanadium-refining"},
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
	order = "02-06",
},
--Super Alloys
{
	type = "technology",
	name = "forging-superalloy",
	icon = "__xander-mod__/graphics/technology/bulk/forging-superalloy.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "forging-superalloy"
		}
	},
	prerequisites = {"forging-alloy-b", "forging-titanium"},
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
		time = 60
	},
	order = "02-07",
},
--Phosphor Bronze
{
	type = "technology",
	name = "phosphor-bronze",
	icon = "__xander-mod__/graphics/technology/bulk/phosphor-bronze.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "bronze-plate-b"
		}
	},
	prerequisites = {"copper-refining", "tin-refining", "phosphorus-processing"},
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
	order = "02-08",
},
--Leaded Brass
{
	type = "technology",
	name = "lead-brass",
	icon = "__xander-mod__/graphics/technology/bulk/lead-brass.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "brass-plate"
		},
		{
			type = "unlock-recipe",
			recipe = "blank-2"
		},
		{
			type = "unlock-recipe",
			recipe = "gear-2"
		}
	},
	prerequisites = {"copper-refining", "zinc-refining", "lead-refining"},
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
	order = "02-09",
},
--Monel Metal
{
	type = "technology",
	name = "monel-metal",
	icon = "__xander-mod__/graphics/technology/bulk/monel-metal.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "monel-plate-b"
		}
	},
	prerequisites = {"copper-refining", "nickel-refining"},
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
	order = "02-10",
},
--Silicon Boule A: Zone Refining
{
	type = "technology",
	name = "silicon-boule-a",
	icon = "__xander-mod__/graphics/technology/bulk/silicon-boule.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "silicon-boule-a"
		}
	},
	prerequisites = {"acheson-process", "phosphorus-processing"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 60
	},
	order = "02-13",
},
--Silicon Boule B: Distillation-Purified Silicon
{
	type = "technology",
	name = "silicon-boule-b",
	icon = "__xander-mod__/graphics/technology/bulk/silicon-boule.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "silicon-boule-b"
		}
	},
	prerequisites = {"ultrapure-silicon"},
	unit =
	{
		count = 1000,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "02-14",
},
--Improved Clay Brick
{
	type = "technology",
	name = "brick-clay",
	icon = "__xander-mod__/graphics/technology/bulk/brick-clay.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "brick-clay-b"
		}
	},
	prerequisites = {"advanced-material-processing-2", "bauxite-sediment"},
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
	order = "02-15",
},
--Chromia-Magnesia Spinel Brick
{
	type = "technology",
	name = "brick-spinel",
	icon = "__xander-mod__/graphics/technology/bulk/brick-spinel.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "brick-spinel"
		},
		{
			type = "unlock-recipe",
			recipe = "furnace-4-b"
		},
		{
			type = "unlock-recipe",
			recipe = "furnace-5-b"
		}
	},
	prerequisites = {"brick-clay", "chromium-refining", "magnesium-processing"},
	unit =
	{
		count = 350,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "02-16",
},
--Yttria-Stabilized Zirconia Brick
{
	type = "technology",
	name = "brick-zirconia",
	icon = "__xander-mod__/graphics/technology/bulk/brick-zirconia.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "brick-zirconia"
		}
	},
	prerequisites = {"brick-spinel", "zirconium-refining", "re-refining"},
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
	order = "02-17",
},
--Cement A, with Lime
{
	type = "technology",
	name = "cement-a",
	icon = "__xander-mod__/graphics/technology/bulk/cement-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cement-a"
		}
	},
	prerequisites = {"bauxite-sediment", "calcium-processing"},
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
	order = "02-18",
},
--Cement B, with Slag
{
	type = "technology",
	name = "cement-b",
	icon = "__xander-mod__/graphics/technology/bulk/cement-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cement-b"
		}
	},
	prerequisites = {"cement-a", "slag-use"},
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
	order = "02-19",
},
--Base "concrete" placeholder
	--order = "02-20"
--Base "landfill" placeholder
	--order = "02-21"
--Landfill B, with Slag
{
	type = "technology",
	name = "landfill-b",
	icon = "__xander-mod__/graphics/technology/bulk/landfill.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "landfill-b"
		},
		{
			type = "unlock-recipe",
			recipe = "modified-b"
		}
	},
	prerequisites = {"landfill", "slag-use"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 30
	},
	order = "02-22",
},
--Fused Basalt A
{
	type = "technology",
	name = "basalt-a",
	icon = "__xander-mod__/graphics/technology/bulk/basalt-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "basalt-a"
		}
	},
	prerequisites = {"aluminum-refining", "magnesium-processing", "calcium-processing", "forging-alloy-a"},
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
	order = "02-23",
},
--Fused Basalt B
{
	type = "technology",
	name = "basalt-b",
	icon = "__xander-mod__/graphics/technology/bulk/basalt-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "basalt-b"
		}
	},
	prerequisites = {"basalt-a", "slag-use"},
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
		time = 60
	},
	order = "02-24",
},
--LeBlanc Process
{
	type = "technology",
	name = "leblanc-process",
	icon = "__xander-mod__/graphics/technology/bulk/leblanc-process.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "crude-salt"
		},
		{
			type = "unlock-recipe",
			recipe = "sodium-chloride-conversion"
		},
		{
			type = "unlock-recipe",
			recipe = "leblanc-process"
		}
	},
	prerequisites = {"sulfuric-acid-a", "reactor_1"},
	unit =
	{
		count = 80,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 20
	},
	order = "02-25",
},
--Solvay Process
{
	type = "technology",
	name = "solvay-process",
	icon = "__xander-mod__/graphics/technology/bulk/solvay-process.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "solvay-process"
		}
	},
	prerequisites = {"sodium-processing", "haber-process"},
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
	order = "02-25",
},
--Salt Water Electrolysis (Chloralkali Process)
{
	type = "technology",
	name = "electrolysis-salt-water",
	icon = "__xander-mod__/graphics/technology/bulk/electrolysis-salt-water.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "electrolysis-salt-water"
		},
		{
			type = "unlock-recipe",
			recipe = "hydrogen-chloride"
		}
	},
	prerequisites = {"electrolyzer_1", "sodium-processing"},
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
	order = "02-26",
},
--Advanced Lithium Chemistry
{
	type = "technology",
	name = "advanced-lithium",
	icon = "__xander-mod__/graphics/technology/bulk/advanced-lithium.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "lithium-tetrafluoroborate"
		},
		{
			type = "unlock-recipe",
			recipe = "lithium-perchlorate"
		},
		{
			type = "unlock-recipe",
			recipe = "lithium-titanate"
		}
	},
	prerequisites = {"electrolyzer_2", "lithium-precipitation", "fluorine-processing", "boron-processing", "titanium-refining"},
	unit =
	{
		count = 600,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "02-27",
},
--Silicon Nitride
{
	type = "technology",
	name = "silicon-nitride",
	icon = "__xander-mod__/graphics/technology/bulk/silicon-nitride.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "silicon-nitride"
		},
		{
			type = "unlock-recipe",
			recipe = "nitride-block"
		}
	},
	prerequisites = {"acheson-process", "air-processing"},
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
	order = "02-28",
},
--Acidified Water Electrolysis (A)
{
	type = "technology",
	name = "electrolysis-water-a",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "electrolysis-water-a"
		}
	},
	prerequisites = {"electrolyzer_1", "sulfuric-acid-a"},
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
	order = "02-29",
},
--Alkali Water Electrolysis (B)
{
	type = "technology",
	name = "electrolysis-water-b",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "electrolysis-water-b"
		}
	},
	prerequisites = {"electrolysis-water-a", "sodium-processing"},
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
	order = "02-30",
},
--Carbon Processing
{
	type = "technology",
	name = "carbon-processing",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "coke-b"
		},
		{
			type = "unlock-recipe",
			recipe = "graphite-block-b"
		},
		{
			type = "unlock-recipe",
			recipe = "graphite-powder"
		}
	},
	prerequisites = {"furnace_4", "coke-a", "graphite-washing"},
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
	order = "02-31",
},
--Kvaerner Process
{
	type = "technology",
	name = "kvaerner-process",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "kvaerner-process"
		}
	},
	prerequisites = {"carbon-processing", "oil-processing"},
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
	order = "02-32",
},
--Base "sulfur-processing" placeholder
	--order = "02-33"
--Hydrochloric Acid Electrolysis
{
	type = "technology",
	name = "electrolysis-hcl",
	icon = "__xander-mod__/graphics/technology/bulk/electrolysis-hcl.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "electrolysis-hcl"
		}
	},
	prerequisites = {"electrolysis-salt-water", "electrolyzer_2"},
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
		time = 45
	},
	order = "02-34",
},
--Activated Carbon Powder
{
	type = "technology",
	name = "activated-carbon",
	icon = "__xander-mod__/graphics/technology/bulk/activated-carbon.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "activated-carbon"
		},
		{
			type = "unlock-recipe",
			recipe = "sand-recovery"
		}
	},
	prerequisites = {"acheson-process", "carbon-processing"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "02-35",
},
--Ultrapure (Semiconductor-Grade) Silicon Powder
{
	type = "technology",
	name = "ultrapure-silicon",
	icon = "__xander-mod__/graphics/technology/bulk/ultrapure-silicon.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "silicon-tetrachloride"
		},
		{
			type = "unlock-recipe",
			recipe = "silane"
		},
		{
			type = "unlock-recipe",
			recipe = "ultrapure-powder"
		}
	},
	prerequisites = {"silicon-boule-a", "electrolysis-salt-water"},
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
		time = 100
	},
	order = "02-36",
},
--XM Crude Sulfuric Acid
{
	type = "technology",
	name = "sulfuric-acid-a",
	icon = "__xander-mod__/graphics/technology/bulk/sulfuric-acid-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sulfuric-acid"
		}
	},
	prerequisites = {"reactor_0"},
	unit =
	{
		count = 30,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-07",
},
--Improved Sulfuric Acid
{
	type = "technology",
	name = "sulfuric-acid-b",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sulfur-trioxide"
		},
		{
			type = "unlock-recipe",
			recipe = "oleum"
		},
		{
			type = "unlock-recipe",
			recipe = "sulfuric-acid-b"
		}
	},
	prerequisites = {"sulfur-processing", "vanadium-refining"},
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
	order = "02-37",
},
--Crude Nitric Acid by Distillation
{
	type = "technology",
	name = "nitric-acid-a",
	icon = "__xander-mod__/graphics/technology/bulk/nitric-acid-a.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "nitric-acid-a"
		},
		{
			type = "unlock-recipe",
			recipe = "nitric-sulfuric"
		}
	},
	prerequisites = {"sulfuric-acid-a"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "00-08",
},
--Ostwald Process (Improved Nitric Acid)
{
	type = "technology",
	name = "nitric-acid-b",
	icon = "__xander-mod__/graphics/technology/bulk/nitric-acid-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "ostwald-a"
		},
		{
			type = "unlock-recipe",
			recipe = "nitrogen-dioxide"
		},
		{
			type = "unlock-recipe",
			recipe = "ostwald-b"
		}
	},
	prerequisites = {"nitric-acid-a", "haber-process"},
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
	order = "02-38",
},
--Carbon Oxides
{
	type = "technology",
	name = "carbon-oxides",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "water-gas"
		},
		{
			type = "unlock-recipe",
			recipe = "bodouard-reaction"
		}
	},
	prerequisites = {"carbon-processing", "gas-scrubbing"},
	unit =
	{
		count = 450,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 45
	},
	order = "02-39",
},
--Haber Process Ammonia
{
	type = "technology",
	name = "haber-process",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "haber-process"
		}
	},
	prerequisites = {"air-processing", "electrolysis-water-a"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 45
	},
	order = "02-40",
},
--Water Clarifying
{
	type = "technology",
	name = "water-clarifying",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "gray-water-clarifying"
		},
		{
			type = "unlock-recipe",
			recipe = "waste-water-clarifying-b"
		},
		{
			type = "unlock-recipe",
			recipe = "waste-slurry-clarifying"
		}
	},
	prerequisites = {"leblanc-process", "magnesium-processing"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 60
	},
	order = "02-41",
},
--Gas Scrubbing
{
	type = "technology",
	name = "gas-scrubbing",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "gas-scrubbing"
		}
	},
	prerequisites = {"advanced-material-processing-2", "calcium-processing", "sulfur-processing"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 60
	},
	order = "02-42",
},
--Slag Use and Cracking
{
	type = "technology",
	name = "slag-use",
	icon = "__xander-mod__/graphics/technology/bulk/slag-use.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "slag-cracking"
		}
	},
	prerequisites = {"carbon-oxides", "calcium-processing"},
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
	order = "02-43",
},
--Calcium Sulfate Cracking
{
	type = "technology",
	name = "sulfate-cracking",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sulfate-cracking"
		}
	},
	prerequisites = {"slag-use", "carbon-processing", "sulfur-processing"},
	unit =
	{
		count = 250,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "02-44",
},
--Calcium Chloride Acid Conversion
{
	type = "technology",
	name = "chloride-conversion",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "calcium-chloride-conversion"
		}
	},
	prerequisites = {"sulfuric-acid-b", "solvay-process"},
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
	order = "02-45",
},
--Iron Machine Recycling
{
	type = "technology",
	name = "iron-recycling",
	icon = "__xander-mod__/graphics/technology/bulk/iron-recycling.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "recycle-slow-transport-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "recycle-slow-underground-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "recycle-slow-splitter"
		},
		{
			type = "unlock-recipe",
			recipe = "recycle-burner-inserter"
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
	order = "02-46",
},
--Waste Burial
{
	type = "technology",
	name = "waste-burial",
	icon = "__xander-mod__/graphics/technology/bulk/waste-burial.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sludge-burial-a"
		},
		{
			type = "unlock-recipe",
			recipe = "sludge-burial-b"
		},
		{
			type = "unlock-recipe",
			recipe = "inert-waste-burial"
		},
		{
			type = "unlock-recipe",
			recipe = "calcium-sulfate-burial"
		},
		{
			type = "unlock-recipe",
			recipe = "limestone-burial"
		},
		{
			type = "unlock-recipe",
			recipe = "coke-burial"
		},
		{
			type = "unlock-recipe",
			recipe = "gravel-burial"
		},
		{
			type = "unlock-recipe",
			recipe = "slag-burial"
		}
	},
	prerequisites = {"mining-drill_2", "slag-use"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "02-46",
},
--Waste Venting
{
	type = "technology",
	name = "waste-venting",
	icon = "__xander-mod__/graphics/technology/bulk/temp-placeholder.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "nitrogen-venting"
		},
		{
			type = "unlock-recipe",
			recipe = "oxygen-venting"
		},
		{
			type = "unlock-recipe",
			recipe = "co2-venting"
		},
		{
			type = "unlock-recipe",
			recipe = "water-venting"
		},
		{
			type = "unlock-recipe",
			recipe = "salt-water-venting"
		}
	},
	prerequisites = {"waste-burial"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "02-47",
}

})
