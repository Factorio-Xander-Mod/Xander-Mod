
--Base Overrides

--Base "electric-energy-distribution-1"
data.raw.technology["electric-energy-distribution-1"].prerequisites = {"electronics", "steel-processing", "rubber-a"}
data.raw.technology["electric-energy-distribution-1"].order = "06-00"

--Base "electric-energy-distribution-2"
data.raw.technology["electric-energy-distribution-2"].effects = {{type = "unlock-recipe", recipe = "medium-electric-pole-2"}, 
	{type = "unlock-recipe", recipe = "big-electric-pole-2"}}
data.raw.technology["electric-energy-distribution-2"].prerequisites = {"electric-energy-distribution-1", "forging-stainless", "insulator_2"}
data.raw.technology["electric-energy-distribution-2"].order = "06-01"

--Base "logistics"
data.raw.technology["logistics"].effects = {{type = "unlock-recipe", recipe = "transport-belt"}, 
	{type = "unlock-recipe", recipe = "underground-belt"}, {type = "unlock-recipe", recipe = "splitter"}, {type = "unlock-recipe", recipe = "science-pack-2"}}
data.raw.technology["logistics"].prerequisites = {"steel-processing", "logistics_0", "inserter-a"}
data.raw.technology["logistics"].order = "06-04"

--Base "logistics-2"
data.raw.technology["logistics-2"].prerequisites = {"logistics", "machines_1"}
data.raw.technology["logistics-2"].order = "06-05"

--Base "logistics-3"
data.raw.technology["logistics-3"].effects = {{type = "unlock-recipe", recipe = "expedited-transport-belt"}, 
	{type = "unlock-recipe", recipe = "expedited-underground-belt"}, {type = "unlock-recipe", recipe = "expedited-splitter"}}
data.raw.technology["logistics-3"].prerequisites = {"logistics-2", "parts_2", "forging-aluminum", "advanced-electronics"}
data.raw.technology["logistics-3"].unit = {count = 350, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"production-science-pack", 1}}, time = 30}
data.raw.technology["logistics-3"].order = "06-06"

--Base "stack-inserter"
data.raw.technology["stack-inserter"].effects = {{type = "unlock-recipe", recipe = "stack-inserter"}, {type = "stack-inserter-capacity-bonus", modifier = 1}}
data.raw.technology["stack-inserter"].prerequisites = {"logistics-2", "inserter-long-fast", "advanced-electronics"}
data.raw.technology["stack-inserter"].unit = {count = 150, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, time = 30}
data.raw.technology["stack-inserter"].order = "06-17"

--Base "railway"
data.raw.technology["railway"].prerequisites = {"logistics", "plumbing-steel", "ore-processor_1"}
data.raw.technology["railway"].unit = {count = 100, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["railway"].order = "06-20"

--Base "fluid-wagon"
data.raw.technology["fluid-wagon"].prerequisites = {"railway", "fluid-handling"}
data.raw.technology["fluid-wagon"].order = "06-22"

--Base "automated-rail-transportation"
data.raw.technology["automated-rail-transportation"].prerequisites = {"railway", "machines_1", "lamp_1"}
data.raw.technology["automated-rail-transportation"].unit = {count = 100, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["automated-rail-transportation"].order = "06-23"

--Base "rail-signals"
data.raw.technology["rail-signals"].prerequisites = {"automated-rail-transportation", "forging-iron"}
data.raw.technology["rail-signals"].order = "06-24"

--Base "robotics"
data.raw.technology["robotics"].effects = {{type = "unlock-recipe", recipe = "flying-robot-frame"}, {type = "unlock-recipe", recipe = "roboport"}, 
	{type = "unlock-recipe", recipe = "logistic-chest-passive-provider"}, {type = "unlock-recipe", recipe = "logistic-chest-storage"}}
data.raw.technology["robotics"].prerequisites = {"flying", "radar_1"}
data.raw.technology["robotics"].order = "06-29"

--Base "construction-robotics"
data.raw.technology["construction-robotics"].effects = {{type = "unlock-recipe", recipe = "construction-robot"}, 
	{type = "ghost-time-to-live", modifier = 60 * 60 * 60}}
data.raw.technology["construction-robotics"].prerequisites = {"robotics", "tooling_2"}
data.raw.technology["construction-robotics"].unit = {count = 150, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
	time = 30}
data.raw.technology["construction-robotics"].order = "06-31"

--Base "logistic-robotics"
data.raw.technology["logistic-robotics"].effects = {{type = "unlock-recipe", recipe = "logistic-robot"}}
data.raw.technology["logistic-robotics"].prerequisites = {"robotics", "rubber-b"}
data.raw.technology["logistic-robotics"].unit = {count = 150, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
	time = 30}
data.raw.technology["logistic-robotics"].order = "06-33"

--Base "logistic-system"
data.raw.technology["logistic-system"].order = "06-35"

--Base "fluid-handling"
data.raw.technology["fluid-handling"].prerequisites = {"machines_1", "pump_1"}
data.raw.technology["fluid-handling"].unit = {count = 100, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["fluid-handling"].order = "06-45"

--Base "circuit-network"
data.raw.technology["circuit-network"].effects = {{type = "unlock-recipe", recipe = "red-wire"}, {type = "unlock-recipe", recipe = "green-wire"}, 
	{type = "unlock-recipe", recipe = "power-switch"}, {type = "unlock-recipe", recipe = "programmable-speaker"}}
data.raw.technology["circuit-network"].prerequisites = {"electronics", "rubber-a"}
data.raw.technology["circuit-network"].unit = {count = 150, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["circuit-network"].order = "06-47"


data:extend(
{

--Base "electric-energy-distribution-1" placeholder
	--order = "06-00"
--Base "electric-energy-distribution-2" placeholder
	--order = "06-01"
--Substation 1
{
	type = "technology",
	name = "substation_1",
	icon = "__xander-mod__/graphics/technology/logistic/substation_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "substation"
		}
	},
	prerequisites = {"electric-energy-distribution-1", "motor_2", "machines_2"},
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
	order = "06-02"
},
--Substation 2 (High-Tension)
{
	type = "technology",
	name = "substation_2",
	icon = "__xander-mod__/graphics/technology/logistic/substation_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "substation-2"
		}
	},
	prerequisites = {"substation_1", "motor_3", "machines_3"},
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
	order = "06-03"
},
--Slow Transport Belts Stuff
{
	type = "technology",
	name = "logistics_0",
	icon = "__base__/graphics/technology/logistics.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "slow-underground-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "slow-splitter"
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
	order = "06-04"
},
--Base "logistics" placeholder
	--order = "06-04"
--Base "logistics-2" placeholder
	--order = "06-05"
--Base "logistics-3" placeholder
	--order = "06-06"
--Logistics 4
{
	type = "technology",
	name = "logistics-4",
	icon = "__base__/graphics/technology/logistics.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "express-transport-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "express-underground-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "express-splitter"
		}
	},
	prerequisites = {"logistics-3", "parts_3", "forging-stainless", "advanced-electronics-2"},
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
	order = "06-07"
},
--Loader 1
{
	type = "technology",
	name = "loader_1",
	icon = "__xander-mod__/graphics/technology/logistic/loader.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "loader"
		}
	},
	prerequisites = {"logistics", "electric-engine"},
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
	order = "06-08"
},
--Loader 2
{
	type = "technology",
	name = "loader_2",
	icon = "__xander-mod__/graphics/technology/logistic/loader.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fast-loader"
		}
	},
	prerequisites = {"loader_1", "logistics-2", "machines_1"},
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
	order = "06-09"
},
--Loader 3
{
	type = "technology",
	name = "loader_3",
	icon = "__xander-mod__/graphics/technology/logistic/loader.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "expedited-loader"
		}
	},
	prerequisites = {"loader_2", "logistics-3", "motor_2", "machines_2"},
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
	order = "06-10"
},
--Loader 4
{
	type = "technology",
	name = "loader_4",
	icon = "__xander-mod__/graphics/technology/logistic/loader.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "express-loader"
		}
	},
	prerequisites = {"loader_3", "logistics-4", "motor_3", "machines_3"},
	unit =
	{
		count = 1200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "06-11"
},
--Crude Inserter (Iron Version)
{
	type = "technology",
	name = "inserter-a",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "inserter"
		}
	},
	prerequisites = {"induction_1"},
	unit =
	{
		count = 20,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-12"
},
--Electric Inserter B (Proper Steel Version)
{
	type = "technology",
	name = "inserter-b",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "inserter-b"
		}
	},
	prerequisites = {"inserter-a", "electric-engine"},
	unit =
	{
		count = 30,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "06-12"
},
--Long Inserter
{
	type = "technology",
	name = "inserter-long",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-long.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "long-handed-inserter"
		}
	},
	prerequisites = {"inserter-b"},
	unit =
	{
		count = 30,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "06-13"
},
--Fast Inserter
{
	type = "technology",
	name = "inserter-fast",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-fast.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fast-inserter"
		}
	},
	prerequisites = {"inserter-b", "motor_2"},
	unit =
	{
		count = 75,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 20
	},
	order = "06-14"
},
--Fast Long Inserter
{
	type = "technology",
	name = "inserter-long-fast",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-long-fast.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "inserter-long-fast"
		}
	},
	prerequisites = {"inserter-fast", "inserter-long", "parts_2", "forging-aluminum"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 20
	},
	order = "06-15"
},
--Filter Inserter
{
	type = "technology",
	name = "inserter-filter",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-filter.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "filter-inserter"
		}
	},
	prerequisites = {"inserter-fast", "advanced-electronics"},
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
	order = "06-16"
},
--Base "stack-inserter" placeholder
	--order = "06-17"
--Long Stack Inserter
{
	type = "technology",
	name = "inserter-long-stack",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-long-stack.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "inserter-long-stack"
		}
	},
	prerequisites = {"stack-inserter", "parts_3"},
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
	order = "06-18"
},
--Stack Filter Inserter
{
	type = "technology",
	name = "inserter-stack-filter",
	icon = "__xander-mod__/graphics/technology/logistic/inserter-stack-filter.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "stack-filter-inserter"
		}
	},
	prerequisites = {"stack-inserter", "advanced-electronics-2"},
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
	order = "06-19"
},
--Base "railway" placeholder
	--order = "06-20"
--Heavy Rail
{
	type = "technology",
	name = "rail-b",
	icon = "__xander-mod__/graphics/technology/logistic/rail-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rail-b"
		}
	},
	prerequisites = {"railway", "forging-alloy-a", "concrete"},
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
	order = "06-21"
},
--Base "fluid-wagon" placeholder
	--order = "06-22"
--Base "automated-rail-transportation" placeholder
	--order = "06-23"
--Base "rail-signals" placeholder
	--order = "06-24"
--Heavy Cargo Wagon
{
	type = "technology",
	name = "cargo-wagon_2",
	icon = "__xander-mod__/graphics/technology/logistic/cargo-wagon_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cargo-wagon-2"
		}
	},
	prerequisites = {"rail-b", "forging-stainless", "parts_2"},
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
	order = "06-25"
},
--Pressurized Fluid Wagon
{
	type = "technology",
	name = "fluid-wagon_2",
	icon = "__xander-mod__/graphics/technology/logistic/fluid-wagon_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fluid-wagon-2"
		}
	},
	prerequisites = {"cargo-wagon_2", "plumbing-stainless", "fluid-handling_2"},
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
		time = 30
	},
	order = "06-26"
},
--Diesel Locomotive
{
	type = "technology",
	name = "locomotive_2",
	icon = "__xander-mod__/graphics/technology/logistic/locomotive_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "locomotive-2"
		}
	},
	prerequisites = {"fluid-wagon", "machines_2", "forging-stainless", "flammables"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 30
	},
	order = "06-27"
},
--Turbine Locomotive
{
	type = "technology",
	name = "locomotive_3",
	icon = "__xander-mod__/graphics/technology/logistic/locomotive_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "locomotive-3"
		}
	},
	prerequisites = {"locomotive_2", "steam-turbine_1", "battery_2", "fluid-wagon_2"},
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
		time = 45
	},
	order = "06-28"
},
--Base "robotics" placeholder
	--order = "06-29"
--High-Performance Robotics
{
	type = "technology",
	name = "robotics_2",
	icon = "__xander-mod__/graphics/technology/logistic/robotics_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "flying-robot-frame-2"
		},
		{
			type = "unlock-recipe",
			recipe = "roboport-2"
		}
	},
	prerequisites = {"robotics", "flying_2", "radar_3"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"high-tech-science-pack", 1}
		},
		time = 45
	},
	order = "06-30"
},
--Base "construction-robotics" placeholder
	--order = "06-31"
--Durable Construction Robots
{
	type = "technology",
	name = "construction-robotics_2",
	icon = "__xander-mod__/graphics/technology/logistic/construction-robotics_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "construction-robot-2"
		}
	},
	prerequisites = {"construction-robotics", "robotics_2", "tooling_3", "laser_2"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 30
	},
	order = "06-32"
},
--Base "logistic-robotics" placeholder
	--order = "06-33"
--Fast Logistic Robots
{
	type = "technology",
	name = "logistic-robotics_2",
	icon = "__xander-mod__/graphics/technology/logistic/logistic-robotics_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "logistic-robot-2"
		}
	},
	prerequisites = {"logistic-robotics", "robotics_2"},
	unit =
	{
		count = 500,
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
	order = "06-34"
},
--Base "logistic-system" placeholder
	--order = "06-35"
--Steel Plumbing
{
	type = "technology",
	name = "plumbing-steel",
	icon = "__xander-mod__/graphics/technology/logistic/plumbing-steel.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pipe-steel"
		},
		{
			type = "unlock-recipe",
			recipe = "pipe-to-ground-steel"
		}
	},
	prerequisites = {"machine-tool_0"},
	unit =
	{
		count = 60,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 20
	},
	order = "06-37"
},
--Monel Metal Plumbing
{
	type = "technology",
	name = "plumbing-monel",
	icon = "__xander-mod__/graphics/technology/logistic/plumbing-monel.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pipe-monel"
		},
		{
			type = "unlock-recipe",
			recipe = "pipe-to-ground-monel"
		}
	},
	prerequisites = {"machine-tool_0", "monel-metal", "forging-steel"},
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
	order = "06-38"
},
--Stainless Steel Plumbing
{
	type = "technology",
	name = "plumbing-stainless",
	icon = "__xander-mod__/graphics/technology/logistic/plumbing-stainless.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pipe-stainless"
		},
		{
			type = "unlock-recipe",
			recipe = "pipe-to-ground-stainless"
		}
	},
	prerequisites = {"machine-tool_1", "forging-stainless", "forging-alloy-a"},
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
	order = "06-39"
},
--Superalloy Plumbing
{
	type = "technology",
	name = "plumbing-superalloy",
	icon = "__xander-mod__/graphics/technology/logistic/plumbing-superalloy.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pipe-superalloy"
		},
		{
			type = "unlock-recipe",
			recipe = "pipe-to-ground-superalloy"
		}
	},
	prerequisites = {"machine-tool_1", "forging-superalloy", "forging-alloy-a"},
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
	order = "06-40"
},
--Plastic Plumbing
{
	type = "technology",
	name = "plumbing-plastic",
	icon = "__xander-mod__/graphics/technology/logistic/plumbing-plastic.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pipe-plastic"
		},
		{
			type = "unlock-recipe",
			recipe = "pipe-to-ground-plastic"
		}
	},
	prerequisites = {"machine-tool_1", "plastics", "forging-alloy-a"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 60
	},
	order = "06-41"
},
--Reciprocating Pump
{
	type = "technology",
	name = "pump_1",
	icon = "__xander-mod__/graphics/technology/logistic/pump_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pump"
		}
	},
	prerequisites = {"electric-engine"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 30
	},
	order = "06-42"
},
--Rotary Impeller Pump
{
	type = "technology",
	name = "pump_2",
	icon = "__xander-mod__/graphics/technology/logistic/pump_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pump-2"
		}
	},
	prerequisites = {"pump_1", "plumbing-monel", "motor_2", "advanced-electronics"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 45
	},
	order = "06-43"
},
--Turbomolecular Pump
{
	type = "technology",
	name = "pump_3",
	icon = "__xander-mod__/graphics/technology/logistic/pump_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "pump-3"
		}
	},
	prerequisites = {"pump_2", "plumbing-superalloy", "motor_3", "advanced-electronics-2"},
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
	order = "06-44"
},
--Base "fluid-handling" placeholder
	--order = "06-45"
--Pressurized Fluid Handling
{
	type = "technology",
	name = "fluid-handling_2",
	icon = "__xander-mod__/graphics/technology/logistic/fluid-handling_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "storage-tank-2"
		}
	},
	prerequisites = {"fluid-handling", "plumbing-monel", "plumbing-stainless", "parts_2"},
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
	order = "06-46"
},
--Base "circuit-network" placeholder
	--order = "06-47"
--Dedicated Combinators Research
{
	type = "technology",
	name = "combinators",
	icon = "__base__/graphics/technology/circuit-network.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "arithmetic-combinator"
		},
		{
			type = "unlock-recipe",
			recipe = "decider-combinator"
		},
		{
			type = "unlock-recipe",
			recipe = "constant-combinator"
		}
	},
	prerequisites = {"circuit-network", "advanced-electronics", "forging-steel"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 30
	},
	order = "06-48"
},
--Circuit Wire 2
{
	type = "technology",
	name = "circuit-wire-b",
	icon = "__xander-mod__/graphics/technology/logistic/circuit-wire-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "red-wire-b"
		},
		{
			type = "unlock-recipe",
			recipe = "green-wire-b"
		}
	},
	prerequisites = {"circuit-network", "induction_3"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"high-tech-science-pack", 1}
		},
		time = 45
	},
	order = "06-49"
}

})
