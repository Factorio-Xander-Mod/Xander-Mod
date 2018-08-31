--Base Overrides

--Base "advanced-material-processing"
data.raw.technology["advanced-material-processing"].effects = {{type = "unlock-recipe", recipe = "brick-clay-graphite-a"}, 
	{type = "unlock-recipe", recipe = "steel-furnace"}, {type = "unlock-recipe", recipe = "iron-plate-b"}, 
	{type = "unlock-recipe", recipe = "forging-iron-b"}, {type = "unlock-recipe", recipe = "copper-plate-b"}}
data.raw.technology["advanced-material-processing"].prerequisites = {"plumbing-steel"}
data.raw.technology["advanced-material-processing"].unit = {count = 20, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["advanced-material-processing"].order = "07-08"

--Base "advanced-material-processing-2"
data.raw.technology["advanced-material-processing-2"].icon = "__xander-mod__/graphics/technology/production/furnace_5.png"
data.raw.technology["advanced-material-processing-2"].icon_size = 128
data.raw.technology["advanced-material-processing-2"].effects = {{type = "unlock-recipe", recipe = "electric-furnace"}, 
	{type = "unlock-recipe", recipe = "brick-clay-graphite-b"}, {type = "unlock-recipe", recipe = "fiber-glass"}}
data.raw.technology["advanced-material-processing-2"].prerequisites = {"advanced-material-processing", "electronics", "logistics"}
data.raw.technology["advanced-material-processing-2"].unit = {count = 400, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 45}
data.raw.technology["advanced-material-processing-2"].order = "07-10"

--Base "automation"
data.raw.technology["automation"].icon = "__xander-mod__/graphics/technology/production/automation-1.png"
data.raw.technology["automation"].icon_size = 128
table.remove(data.raw["technology"]["automation"].effects, 2)
data.raw.technology["automation"].prerequisites = {"automation_0", "machines_1", "inserter-a", "electronics"}
data.raw.technology["automation"].unit.count = 40
data.raw.technology["automation"].order = "07-22"

--Base "automation-2"
data.raw.technology["automation-2"].icon = "__xander-mod__/graphics/technology/production/automation-2.png"
data.raw.technology["automation-2"].icon_size = 128
data.raw.technology["automation-2"].effects = {{type = "unlock-recipe", recipe = "assembling-machine-2"}, 
	{type = "unlock-recipe", recipe = "production-science-pack"}}
data.raw.technology["automation-2"].prerequisites = {"automation", "machines_1", "inserter-fast"}
data.raw.technology["automation-2"].unit = {count = 100, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["automation-2"].order = "07-23"

--Base "automation-3"
data.raw.technology["automation-3"].icon = "__xander-mod__/graphics/technology/production/automation-3.png"
data.raw.technology["automation-3"].icon_size = 128
data.raw.technology["automation-3"].prerequisites = {"automation-2", "machines_2", "inserter-filter"}
data.raw.technology["automation-3"].unit = {count = 200, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"production-science-pack", 1}}, time = 30}
data.raw.technology["automation-3"].order = "07-24"

--Base "effect-transmission"
data.raw.technology["effect-transmission"].prerequisites = {"modules", "machines_3", "radar_1"}
data.raw.technology["effect-transmission"].unit = {count = 300, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"production-science-pack", 1}, {"high-tech-science-pack", 1}}, time = 45}
data.raw.technology["effect-transmission"].order = "07-27"

--Base "nuclear-power"
data.raw.technology["nuclear-power"].effects = {{type = "unlock-recipe", recipe = "nuclear-reactor"}, {type = "unlock-recipe", recipe = "fuel-pellet"}, 
	{type = "unlock-recipe", recipe = "uranium-fuel-cell"}}
data.raw.technology["nuclear-power"].prerequisites = {"machines_2", "boiler_3", "forging-zirconium", "fuel-enrichment"}
data.raw.technology["nuclear-power"].order = "07-32"

--Base "solar-energy"
data.raw.technology["solar-energy"].icon = "__xander-mod__/graphics/technology/production/solar-energy_1.png"
data.raw.technology["solar-energy"].icon_size = 128
data.raw.technology["solar-energy"].effects = {{type = "unlock-recipe", recipe = "wafer-solar"}, {type = "unlock-recipe", recipe = "solar-panel"}}
data.raw.technology["solar-energy"].prerequisites = {"advanced-electronics", "semiconductors_1"}
data.raw.technology["solar-energy"].order = "07-33"

--Base "electric-energy-accumulators-1"
data.raw.technology["electric-energy-accumulators-1"].order = "07-36"

--Base "modules"
data.raw.technology["modules"].order = "07-43"

--Base "speed-module"
data.raw.technology["speed-module"].prerequisites = {"modules", "machines_1", "forging-aluminum"}
data.raw.technology["speed-module"].order = "07-44"

--Base "speed-module-2"
data.raw.technology["speed-module-2"].prerequisites = {"speed-module", "machines_2", "oil-processing"}
data.raw.technology["speed-module-2"].order = "07-45"

--Base "speed-module-3"
data.raw.technology["speed-module-3"].prerequisites = {"speed-module-2", "machines_3", "chromium-refining"}
data.raw.technology["speed-module-3"].order = "07-46"

--Base "productivity-module"
data.raw.technology["productivity-module"].prerequisites = {"modules", "machines_1", "pump_1"}
data.raw.technology["productivity-module"].order = "07-47"

--Base "productivity-module-2"
data.raw.technology["productivity-module-2"].prerequisites = {"productivity-module", "machines_2", "pump_2"}
data.raw.technology["productivity-module-2"].order = "07-48"

--Base "productivity-module-3"
data.raw.technology["productivity-module-3"].prerequisites = {"productivity-module-2", "machines_3", "pump_3", "laser_3"}
data.raw.technology["productivity-module-3"].order = "07-49"

--Base "effectivity-module"
data.raw.technology["effectivity-module"].prerequisites = {"modules", "machines_1", "forging-aluminum", "battery"}
data.raw.technology["effectivity-module"].order = "07-50"

--Base "effectivity-module-2"
data.raw.technology["effectivity-module-2"].prerequisites = {"effectivity-module", "machines_2", "glass-b", "battery_2"}
data.raw.technology["effectivity-module-2"].order = "07-51"

--Base "effectivity-module-3"
data.raw.technology["effectivity-module-3"].prerequisites = {"effectivity-module-2", "machines_3", "silver-refining", "battery_3"}
data.raw.technology["effectivity-module-3"].order = "07-52"

--Base "rocket-silo"
data.raw.technology["rocket-silo"].effects = {{type = "unlock-recipe", recipe = "rocket-silo"}, {type = "unlock-recipe", recipe = "rocket-part"}, 
	{type = "unlock-recipe", recipe = "satellite"}}
data.raw.technology["rocket-silo"].prerequisites = {"rocket-fuel", "rocket-structure", "rocket-control", "rocket-engine", "rocket-mechanism", "rocket-speed-6"}
--null
data.raw.technology["rocket-silo"].order = "08-53"


data:extend(
{

--Logging Camp
{
	type = "technology",
	name = "logging",
	icon = "__xander-mod__/graphics/technology/production/logging.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "logging-camp"
		},
		{
			type = "unlock-recipe",
			recipe = "wood-multiplication"
		}
	},
	prerequisites = {"machine-tool_0"},
	unit =
	{
		count = 40,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 20
	},
	order = "07-00",
},
--Burner Mining Drill
{
	type = "technology",
	name = "mining-drill_1",
	icon = "__xander-mod__/graphics/technology/production/mining-drill_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "burner-mining-drill"
		},
		{
			type = "unlock-recipe",
			recipe = "offshore-pump"
		}
	},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "07-00",
},
--Electric Mining Drill
{
	type = "technology",
	name = "mining-drill_2",
	icon = "__base__/graphics/technology/mining-productivity.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "electric-mining-drill"
		},
		{
			type = "unlock-recipe",
			recipe = "offshore-pump-1"
		}
	},
	prerequisites = {"mining-drill_1", "machines_1", "logistics"},
	unit =
	{
		count = 80,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 30
	},
	order = "07-01",
},
--Electric Shovel Excavator
{
	type = "technology",
	name = "mining-drill_3",
	icon = "__xander-mod__/graphics/technology/production/mining-drill_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "mining-drill-3"
		}
	},
	prerequisites = {"mining-drill_2", "machines_2", "logistics-2"},
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
	order = "07-02",
},
--Bucket Wheel Excavator
{
	type = "technology",
	name = "mining-drill_4",
	icon = "__xander-mod__/graphics/technology/production/mining-drill_4.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "mining-drill-4"
		}
	},
	prerequisites = {"mining-drill_3", "machines_3", "logistics-3"},
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
	order = "07-03",
},
--Standard Pumpjack
{
	type = "technology",
	name = "pumpjack",
	icon = "__base__/graphics/technology/oil-gathering.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pumpjack"
		},
		{
			type = "unlock-recipe",
			recipe = "water-saltpeter"
		}
	},
	prerequisites = {"machines_1", "plumbing-steel"},
	unit =
	{
		count = 40,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "07-04",
},
--High-Pressure Pumpjack
{
	type = "technology",
	name = "pumpjack_2",
	icon = "__xander-mod__/graphics/technology/production/pumpjack_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pumpjack-2"
		}
	},
	prerequisites = {"pumpjack", "fluid-handling_2", "machines_3"},
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
	order = "07-05",
},
--Crude Burner Ore Sluice
{
	type = "technology",
	name = "ore-processor_0",
	icon = "__xander-mod__/graphics/technology/production/ore-processor_0.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "ore-processor-0"
		}
	},
	prerequisites = {"mining-drill_1", "machine-tool_0"},
	unit =
	{
		count = 40,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "07-06",
},
--Electric Ore Sluice
{
	type = "technology",
	name = "ore-processor_1",
	icon = "__xander-mod__/graphics/technology/production/ore-processor_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "ore-processor-1"
		},
		{
			type = "unlock-recipe",
			recipe = "gravel-crushing"
		}
	},
	prerequisites = {"pump_1", "ore-processor_0", "machine-tool_1"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 30
	},
	order = "07-06",
},
--Ore Plant
{
	type = "technology",
	name = "ore-processor_2",
	icon = "__xander-mod__/graphics/technology/production/ore-processor_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "ore-processor-2"
		}
	},
	prerequisites = {"ore-processor_1", "flotation_1", "pump_2"},
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
		time = 60
	},
	order = "07-07",
},
--Base "advanced-material-processing" placeholder
	--order = "07-08"
--Refining Furnace
{
	type = "technology",
	name = "furnace_4",
	icon = "__xander-mod__/graphics/technology/production/furnace_4.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "furnace-4-a"
		},
		{
			type = "unlock-recipe",
			recipe = "production-science-pack"
		}
	},
	prerequisites = {"advanced-material-processing", "pump_1"},
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
	order = "07-09",
},
--Base "advanced-material-processing-2" placeholder
	--order = "07-10"
--Arc Furnace
{
	type = "technology",
	name = "furnace_6",
	icon = "__xander-mod__/graphics/technology/production/furnace_6.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "furnace-6"
		}
	},
	prerequisites = {"furnace_4", "advanced-material-processing-2", "brick-zirconia", "machines_3"},
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
	order = "07-11",
},
--Burner Chemical Reactor
{
	type = "technology",
	name = "reactor_0",
	icon = "__xander-mod__/graphics/technology/production/reactor_0.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "chemical-plant"
		},
		{
			type = "unlock-recipe",
			recipe = "wood-resin"
		},
		{
			type = "unlock-recipe",
			recipe = "waste-water-clarifying-a"
		}
	},
	prerequisites = {"glass-a", "smelting-sulfur"},
	unit =
	{
		count = 40,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "07-12",
},
--Standard Chemical Reactor
{
	type = "technology",
	name = "reactor_1",
	icon = "__xander-mod__/graphics/technology/production/reactor_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "reactor-1"
		},
		{
			type = "unlock-recipe",
			recipe = "distilled-water"
		}
	},
	prerequisites = {"machines_1", "reactor_0", "pump_1"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 20
	},
	order = "07-12",
},
--Catalytic Chemical Reactor
{
	type = "technology",
	name = "reactor_2",
	icon = "__xander-mod__/graphics/technology/production/reactor_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "reactor-2"
		}
	},
	prerequisites = {"reactor_1", "machines_2", "platinum-refining", "pump_2"},
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
	order = "07-13",
},
--Standard Electrolyzer
{
	type = "technology",
	name = "electrolyzer_1",
	icon = "__xander-mod__/graphics/technology/production/electrolyzer_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "electrolyzer-1"
		}
	},
	prerequisites = {"reactor_1", "rubber-a"},
	unit =
	{
		count = 80,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 15
	},
	order = "07-14",
},
--Platinum Electrolyzer
{
	type = "technology",
	name = "electrolyzer_2",
	icon = "__xander-mod__/graphics/technology/production/electrolyzer_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "electrolyzer-2"
		}
	},
	prerequisites = {"electrolyzer_1", "machines_2", "glass-b", "forging-titanium"},
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
	order = "07-15",
},
--Centrifuge
{
	type = "technology",
	name = "centrifuge",
	icon = "__xander-mod__/graphics/technology/production/centrifuge.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "centrifuge"
		}
	},
	prerequisites = {"reactor_2", "machines_3", "plumbing-plastic", "basalt-a"},
	unit =
	{
		count = 550,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "07-16",
},
--Distillation Column
{
	type = "technology",
	name = "distillation-column",
	icon = "__base__/graphics/technology/oil-processing.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "oil-refinery"
		}
	},
	prerequisites = {"reactor_1", "machines_1", "concrete"},
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
	order = "07-17",
},
--Chemical Plant
{
	type = "technology",
	name = "reactor_3",
	icon = "__xander-mod__/graphics/technology/production/reactor_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "reactor-3"
		}
	},
	prerequisites = {"reactor_2", "distillation-column", "machines_3"},
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
	order = "07-18",
},
--Burner Machine Tool
{
	type = "technology",
	name = "machine-tool_0",
	icon = "__xander-mod__/graphics/technology/production/machine-tool_0.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "machine-tool-0"
		}
	},
	prerequisites = {"steel-processing"},
	unit =
	{
		count = 30,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 15
	},
	order = "07-19",
},
--Basic Lathe Mill
{
	type = "technology",
	name = "machine-tool_1",
	icon = "__xander-mod__/graphics/technology/production/machine-tool_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "tooling-1-a"
		},
		{
			type = "unlock-recipe",
			recipe = "machine-tool-1"
		}
	},
	prerequisites = {"machines_1"},
	unit =
	{
		count = 40,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "07-19",
},
--Universal Machine Tool
{
	type = "technology",
	name = "machine-tool_2",
	icon = "__xander-mod__/graphics/technology/production/machine-tool_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "machine-tool-2"
		}
	},
	prerequisites = {"machine-tool_1", "machines_2"},
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
	order = "07-20",
},
--CNC Machine Tool
{
	type = "technology",
	name = "machine-tool_3",
	icon = "__xander-mod__/graphics/technology/production/machine-tool_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "machine-tool-3"
		}
	},
	prerequisites = {"machine-tool_2", "machines_3", "laser_2"},
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
	order = "07-21",
},
--Automation 0 (Burner Assembling Machine)
{
	type = "technology",
	name = "automation_0",
	icon = "__xander-mod__/graphics/technology/production/automation_0.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "assembling-machine-0"
		}
	},
	prerequisites = {"steel-processing"},
	unit =
	{
		count = 40,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "07-22",
},
--Base "automation" placeholder
	--order = "07-22"
--Base "automation-2" placeholder
	--order = "07-23"
--Base "automation-3" placeholder
	--order = "07-24"
--Automation 4
{
	type = "technology",
	name = "automation-4",
	icon = "__xander-mod__/graphics/technology/production/automation-4.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "assembling-machine-4"
		}
	},
	prerequisites = {"automation-3", "machines_3", "laser_2"},
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
		time = 60
	},
	order = "07-25",
},
--Electric Lab
{
	type = "technology",
	name = "lab_2",
	icon = "__xander-mod__/graphics/technology/production/lab_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "lab"
		}
	},
	prerequisites = {"machines_1", "logistics", "inserter-b"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "07-26",
},
--Base "effect-transmission" placeholder
	--order = "07-27"
--Superheating Boiler
{
	type = "technology",
	name = "boiler_2",
	icon = "__xander-mod__/graphics/technology/production/boiler_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "boiler-2"
		}
	},
	prerequisites = {"machines_2", "plumbing-monel", "brick-spinel"},
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
	order = "07-28",
},
--Electric Boiler
{
	type = "technology",
	name = "boiler_4",
	icon = "__xander-mod__/graphics/technology/production/boiler_4.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "boiler-4"
		}
	},
	prerequisites = {"boiler_2"},
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
	order = "07-29",
},
--Medium-Temperature Steam Turbine
{
	type = "technology",
	name = "steam-turbine_1",
	icon = "__xander-mod__/graphics/technology/production/steam-turbine_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "steam-turbine"
		}
	},
	prerequisites = {"boiler_2", "machines_2", "plumbing-stainless"},
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"production-science-pack", 1}
		},
		time = 45
	},
	order = "07-30",
},
--High-Temperature Steam Turbine
{
	type = "technology",
	name = "steam-turbine_2",
	icon = "__xander-mod__/graphics/technology/production/steam-turbine_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "steam-turbine-2"
		}
	},
	prerequisites = {"steam-turbine_1", "machines_3", "plumbing-superalloy", "basalt-a"},
	unit =
	{
		count = 600,
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
	order = "07-30",
},
--Heat Transfer
{
	type = "technology",
	name = "boiler_3",
	icon = "__xander-mod__/graphics/technology/production/boiler_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "heat-pipe"
		},
		{
			type = "unlock-recipe",
			recipe = "heat-exchanger"
		}
	},
	prerequisites = {"plumbing-superalloy", "silver-refining", "glass-b"},
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
	order = "07-31",
},
--Base "nuclear-power" placeholder
	--order = "07-32"
--Base "solar-energy" placeholder
	--order = "07-33"
--Dense Solar Panel
{
	type = "technology",
	name = "solar-energy_2",
	icon = "__xander-mod__/graphics/technology/production/solar-energy_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "solar-panel-2"
		}
	},
	prerequisites = {"solar-energy"},
	unit =
	{
		count = 450,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "07-34",
},
--Eficient Solar Panel
{
	type = "technology",
	name = "solar-energy_3",
	icon = "__base__/graphics/technology/solar-energy.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "solar-panel-3"
		}
	},
	prerequisites = {"solar-energy_2", "silver-refining", "glass-b", "advanced-electronics-2"},
	unit =
	{
		count = 650,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "07-35",
},
--Base "electric-energy-accumulators-1" placeholder
	--order = "07-36"
--Silver Accumulator
{
	type = "technology",
	name = "electric-energy-accumulators_2",
	icon = "__xander-mod__/graphics/technology/production/electric-energy-accumulators_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "accumulator-2"
		}
	},
	prerequisites = {"electric-energy-accumulators-1", "forging-stainless", "battery_2", "insulator_2"},
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
	order = "07-37",
},
--Electric Light
{
	type = "technology",
	name = "lamp_1",
	icon = "__xander-mod__/graphics/technology/production/lamp_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "small-lamp"
		}
	},
	prerequisites = {"graphite-washing", "glass-a", "electronics"},
	unit =
	{
		count = 20,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "07-38",
},
--Arc Light
{
	type = "technology",
	name = "lamp_2",
	icon = "__xander-mod__/graphics/technology/production/lamp_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "lamp-2"
		},
		{
			type = "unlock-recipe",
			recipe = "lamp-1-b"
		}
	},
	prerequisites = {"lamp_1", "tungsten-refining", "glass-b"},
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
	order = "07-39",
},
--Basic Repair
{
	type = "technology",
	name = "repair_1",
	icon = "__xander-mod__/graphics/technology/production/repair_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "repair-pack"
		}
	},
	prerequisites = {"machines_1"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "07-40",
},
--Improved Repair
{
	type = "technology",
	name = "repair_2",
	icon = "__xander-mod__/graphics/technology/production/repair_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "repair-pack-2"
		}
	},
	prerequisites = {"repair_1", "machines_2", "concrete"},
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
	order = "07-41",
},
--Advanced Repair
{
	type = "technology",
	name = "repair_3",
	icon = "__xander-mod__/graphics/technology/production/repair_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "repair-pack-3"
		}
	},
	prerequisites = {"repair_2", "machines_3", "basalt-a"},
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
	order = "07-42",
}
--Base "modules" placeholder
	--order = "07-43"
--Base "speed-module" placeholder
	--order = "07-44"
--Base "speed-module-2" placeholder
	--order = "07-45"
--Base "speed-module-3" placeholder
	--order = "07-46"
--Base "productivity-module" placeholder
	--order = "07-47"
--Base "productivity-module-2" placeholder
	--order = "07-48"
--Base "productivity-module-3" placeholder
	--order = "07-49"
--Base "effectivity-module" placeholder
	--order = "07-50"
--Base "effectivity-module-2" placeholder
	--order = "07-51"
--Base "effectivity-module-3" placeholder
	--order = "07-52"
--Base "rocket-silo" placeholder
	--order = "08-53"

})