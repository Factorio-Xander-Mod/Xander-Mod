
--Base Overrides

--Base "engine"
data.raw.technology["engine"].effects = {{type = "unlock-recipe", recipe = "engine-unit"}}
data.raw.technology["engine"].prerequisites = {"parts_1", "plumbing-steel", "rubber-a"}
data.raw.technology["engine"].order = "04-03"
--Base "flying"
data.raw.technology["flying"].prerequisites = {"parts_2", "battery_2", "forging-aluminum"}
data.raw.technology["flying"].order = "04-06"
--Base "electric-engine"
data.raw.technology["electric-engine"].prerequisites = {"induction_1", "parts_1", "electronics"}
data.raw.technology["electric-engine"].effects = {{type = "unlock-recipe", recipe = "motor-1-b"}, {type = "unlock-recipe", recipe = "transformer-1"}}
data.raw.technology["electric-engine"].unit.ingredients = {{"science-pack-1", 1}}
data.raw.technology["electric-engine"].order = "04-16"
--Base "optics"
data.raw.technology["optics"].effects = {{type = "unlock-recipe", recipe = "crystal-quartz"}, {type = "unlock-recipe", recipe = "boule-ruby"},
	{type = "unlock-recipe", recipe = "crystal-ruby"}}
data.raw.technology["optics"].prerequisites = {"glass-b", "chromium-refining", "aluminum-refining", "acheson-process"}
data.raw.technology["optics"].unit = {count = 200, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 30}
data.raw.technology["optics"].order = "04-21"
--Base "laser"
data.raw.technology["laser"].effects = {{type = "unlock-recipe", recipe = "lasing-1"}}
data.raw.technology["laser"].prerequisites = {"optics", "machines_2", "lamp_1"}
data.raw.technology["laser"].unit = {count = 250, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, time = 45}
data.raw.technology["laser"].order = "04-24"
--Base "battery"
data.raw.technology["battery"].effects = {{type = "unlock-recipe", recipe = "battery"}, {type = "unlock-recipe", recipe = "battery-1"}}
data.raw.technology["battery"].prerequisites = {"plastics", "lead-refining", "sulfuric-acid-a", "electronics"}
data.raw.technology["battery"].order = "04-27"


data:extend(
{

--Steel Machinery
{
	type = "technology",
	name = "parts_1",
	icon = "__xander-mod__/graphics/technology/part/parts_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "bearing-1"
		},
		{
			type = "unlock-recipe",
			recipe = "gear-3"
		},
		{
			type = "unlock-recipe",
			recipe = "rod-2"
		},
		{
			type = "unlock-recipe",
			recipe = "shaft-1"
		},
		{
			type = "unlock-recipe",
			recipe = "mechanism-1"
		},
		{
			type = "unlock-recipe",
			recipe = "wheel-1"
		},
		{
			type = "unlock-recipe",
			recipe = "steel-axe"
		}
	},
	prerequisites = {"machine-tool_0", "smelting-graphite"},
	unit =
	{
		count = 20,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "04-00"
},
--Alloy Steel Machinery
{
	type = "technology",
	name = "parts_2",
	icon = "__xander-mod__/graphics/technology/part/parts_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "bearing-2"
		},
		{
			type = "unlock-recipe",
			recipe = "gear-4"
		},
		{
			type = "unlock-recipe",
			recipe = "rod-3"
		},
		{
			type = "unlock-recipe",
			recipe = "shaft-2"
		},
		{
			type = "unlock-recipe",
			recipe = "mechanism-2"
		},
		{
			type = "unlock-recipe",
			recipe = "wheel-2"
		}
	},
	prerequisites = {"parts_1", "forging-alloy-a", "oil-processing", "lead-brass"},
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
	order = "04-01"
},
--Titanium Machinery
{
	type = "technology",
	name = "parts_3",
	icon = "__xander-mod__/graphics/technology/part/parts_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "bearing-3"
		},
		{
			type = "unlock-recipe",
			recipe = "rod-4"
		},
		{
			type = "unlock-recipe",
			recipe = "shaft-3"
		},
		{
			type = "unlock-recipe",
			recipe = "mechanism-3"
		}
	},
	prerequisites = {"parts_2", "forging-titanium", "silicon-nitride", "plastics"},
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
	order = "04-02"
},
--Base "engine" placeholder
	--order = "04-03"
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
},
--Base "flying" placeholder
	--order = "04-06"
--Flying 2
{
	type = "technology",
	name = "flying_2",
	icon = "__base__/graphics/technology/flying.png",
	icon_size = 128,
	prerequisites = {"flying", "battery_3", "fiber-carbon", "machines_3"},
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
		time = 45
	},
	order = "04-07"
},
--Steel Tooling
{
	type = "technology",
	name = "tooling_1",
	icon = "__xander-mod__/graphics/technology/part/tooling_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "tooling-1-b"
		}
	},
	prerequisites = {"steel-processing", "acheson-process", "phenolic-resin"},
	unit =
	{
		count = 20,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "04-08"
},
--Alloy Steel Tooling
{
	type = "technology",
	name = "tooling_2",
	icon = "__xander-mod__/graphics/technology/part/tooling_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "tooling-2"
		},
		{
			type = "unlock-recipe",
			recipe = "axe-5"
		}
	},
	prerequisites = {"tooling_1", "forging-alloy-a", "tungsten-cermet"},
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
	order = "04-08"
},
--High-Precision Tooling
{
	type = "technology",
	name = "tooling_3",
	icon = "__xander-mod__/graphics/technology/part/tooling_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "tooling-3"
		},
		{
			type = "unlock-recipe",
			recipe = "tooling-1-c"
		},
		{
			type = "unlock-recipe",
			recipe = "axe-6"
		}
	},
	prerequisites = {"tooling_2", "optics_3", "epoxy-resin"},
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
	order = "04-09"
},
--Machines 1
{
	type = "technology",
	name = "machines_1",
	icon = "__xander-mod__/graphics/technology/production/automation-1.png",
	icon_size = 128,
	prerequisites = {"electric-engine"},--"parts_1"
	unit =
	{
		count = 15,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "04-10"
},
--Machines 2
{
	type = "technology",
	name = "machines_2",
	icon = "__xander-mod__/graphics/technology/production/automation-3.png",
	icon_size = 128,
	prerequisites = {"machines_1", "motor_2", "tooling_2", "forging-stainless"},
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
	order = "04-11"
},
--Machines 3
{
	type = "technology",
	name = "machines_3",
	icon = "__xander-mod__/graphics/technology/production/automation-4.png",
	icon_size = 128,
	prerequisites = {"machines_2", "motor_3", "tooling_3", "forging-superalloy"},
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
	order = "04-12"
},
--Basic Electricity Generation and Distribution
{
	type = "technology",
	name = "electricity",
	icon = "__xander-mod__/graphics/technology/part/electricity.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "steam-engine"
		},
		{
			type = "unlock-recipe",
			recipe = "insulator-1-a"
		},
		{
			type = "unlock-recipe",
			recipe = "small-electric-pole"
		}
	},
	prerequisites = {"induction_1"},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 20
	},
	order = "00-10",
},
--Induction 1
{
	type = "technology",
	name = "induction_1",
	icon = "__xander-mod__/graphics/technology/part/induction.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "coil-1-a"
		},
		{
			type = "unlock-recipe",
			recipe = "electric-engine-unit"
		},
		{
			type = "unlock-recipe",
			recipe = "science-pack-1"
		}
	},
	prerequisites = {"reactor_0", "smelting-graphite"},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 15
	},
	order = "04-13"
},
--Induction 2
{
	type = "technology",
	name = "induction_2",
	icon = "__xander-mod__/graphics/technology/part/induction.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "coil-1-b"
		},
		{
			type = "unlock-recipe",
			recipe = "sheet-steel"
		},
		{
			type = "unlock-recipe",
			recipe = "coil-2"
		}
	},
	prerequisites = {"induction_1", "phenolic-resin"},
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
	order = "04-14"
},
--Induction 3
{
	type = "technology",
	name = "induction_3",
	icon = "__xander-mod__/graphics/technology/part/induction.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sheet-mu"
		},
		{
			type = "unlock-recipe",
			recipe = "coil-3"
		}
	},
	prerequisites = {"induction_2", "cobalt-refining", "re-refining", "epoxy-resin"},
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
	order = "04-15"
},
--Base "electric-engine" placeholder
	--order = "04-16"
--Electric Motor-Generator 2
{
	type = "technology",
	name = "motor_2",
	icon = "__base__/graphics/technology/electric-engine.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "motor-2"
		},
		{
			type = "unlock-recipe",
			recipe = "transformer-2"
		}
	},
	prerequisites = {"induction_2", "parts_2", "advanced-electronics"},
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
	order = "04-17"
},
--Electric Motor-Generator 3
{
	type = "technology",
	name = "motor_3",
	icon = "__base__/graphics/technology/electric-engine.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "motor-3"
		},
		{
			type = "unlock-recipe",
			recipe = "transformer-3"
		}
	},
	prerequisites = {"induction_3", "parts_3", "insulator_2", "advanced-electronics-2"},
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
	order = "04-18"
},
--Insulator 2
{
	type = "technology",
	name = "insulator_2",
	icon = "__xander-mod__/graphics/technology/part/insulator_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "insulator-1-b"
		},
		{
			type = "unlock-recipe",
			recipe = "insulator-2-a"
		}
	},
	prerequisites = {"electricity", "glass-b"},
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
	order = "04-19"
},
--Insulator 3
{
	type = "technology",
	name = "insulator_3",
	icon = "__xander-mod__/graphics/technology/part/insulator_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "insulator-2-b"
		}
	},
	prerequisites = {"insulator_2", "silicon-nitride"},
	unit =
	{
		count = 450,
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
	order = "04-20"
},
--Base "optics" placeholder
	--order = "04-21"
--Optics 2
{
	type = "technology",
	name = "optics_2",
	icon = "__base__/graphics/technology/optics.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "boule-corundum"
		},
		{
			type = "unlock-recipe",
			recipe = "crystal-corundum"
		}
	},
	prerequisites = {"optics"},
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
		time = 30
	},
	order = "04-22"
},
--Optics 3
{
	type = "technology",
	name = "optics_3",
	icon = "__base__/graphics/technology/optics.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "boule-diamond"
		},
		{
			type = "unlock-recipe",
			recipe = "crystal-diamond"
		},
		{
			type = "unlock-recipe",
			recipe = "boule-yag"
		},
		{
			type = "unlock-recipe",
			recipe = "crystal-yag"
		}
	},
	prerequisites = {"optics_2", "silicon-nitride", "re-refining"},
	unit =
	{
		count = 700,
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
	order = "04-23"
},
--Base "laser" placeholder
	--order = "04-24"
--Laser 2 (Carbon Dioxide)
{
	type = "technology",
	name = "laser_2",
	icon = "__xander-mod__/graphics/technology/part/laser_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "lasing-2"
		}
	},
	prerequisites = {"laser", "optics_2", "machines_3", "lamp_2"},
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
	order = "04-25"
},
--Laser 3 (Neodymium-Doped Yttrium Aluminum Garnet)
{
	type = "technology",
	name = "laser_3",
	icon = "__xander-mod__/graphics/technology/part/laser_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "lasing-3"
		}
	},
	prerequisites = {"laser_2", "optics_3"},
	unit =
	{
		count = 900,
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
	order = "04-26"
},
--Base "battery" placeholder
	--order = "04-27"
--Battery 2 (Silver-Zinc)
{
	type = "technology",
	name = "battery_2",
	icon = "__xander-mod__/graphics/technology/part/battery_2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cell-2"
		},
		{
			type = "unlock-recipe",
			recipe = "battery-2"
		}
	},
	prerequisites = {"battery", "silver-refining", "electrolysis-salt-water", "zinc-refining"},
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1}
		},
		time = 60
	},
	order = "04-28"
},
--Battery 3 (Lithium-Ion Supercapacitor)
{
	type = "technology",
	name = "battery_3",
	icon = "__base__/graphics/technology/battery.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "cell-3"
		},
		{
			type = "unlock-recipe",
			recipe = "battery-3"
		}
	},
	prerequisites = {"battery_2", "activated-carbon", "organics_3", "advanced-lithium"},
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
	order = "04-29"
},
--Rocket Fuel Dedicated Research
{
	type = "technology",
	name = "rocket-fuel",
	icon = "__xander-mod__/graphics/technology/part/rocket-fuel.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-fuel"
		}
	},
	prerequisites = {"advanced-oil-processing", "haber-process", "electrolysis-water-b", "advanced-lithium"},
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
	order = "04-30"
},
--Rocket Structure Dedicated Research
{
	type = "technology",
	name = "rocket-structure",
	icon = "__xander-mod__/graphics/technology/part/rocket-structure.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "low-density-structure"
		}
	},
	prerequisites = {"machines_3", "epoxy-resin", "fiber-carbon", "forging-aluminum"},
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
	order = "04-31"
},
--Rocket Control Dedicated Research
{
	type = "technology",
	name = "rocket-control",
	icon = "__xander-mod__/graphics/technology/part/rocket-control.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-control-unit"
		}
	},
	prerequisites = {"machines_3", "speed-module", "effectivity-module", "laser_3"},
	unit =
	{
		count = 1000,
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
	order = "04-32"
},
--Rocket Engine Dedicated Research
{
	type = "technology",
	name = "rocket-engine",
	icon = "__xander-mod__/graphics/technology/part/rocket-engine.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-thermal"
		}
	},
	prerequisites = {"machines_3", "silicon-nitride", "brick-zirconia", "forging-zirconium"},
	unit =
	{
		count = 1000,
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
	order = "04-33"
},
--Rocket Mechanism Dedicated Research
{
	type = "technology",
	name = "rocket-mechanism",
	icon = "__xander-mod__/graphics/technology/part/rocket-mechanism.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-mechanism"
		}
	},
	prerequisites = {"machines_3", "pump_3", "explosives", "battery_3"},
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
	order = "04-34"
}

})