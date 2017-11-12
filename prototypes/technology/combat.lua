
--Base Overrides

--Base "military"
data.raw.technology["military"].effects = {{type = "unlock-recipe", recipe = "submachine-gun"}, {type = "unlock-recipe", recipe = "shotgun"}, 
	{type = "unlock-recipe", recipe = "shotgun-shell"}, {type = "unlock-recipe", recipe = "grenade"}}
data.raw.technology["military"].prerequisites = {"basic-firearms"}
data.raw.technology["military"].unit = {count = 20, ingredients = {{"science-pack-1", 1}}, time = 15}
data.raw.technology["military"].order = "08-01"

--Base "military-2"
data.raw.technology["military-2"].effects = {{type = "unlock-recipe", recipe = "bullet-2"}, {type = "unlock-recipe", recipe = "casing-2"}, 
	{type = "unlock-recipe", recipe = "piercing-rounds-magazine"}, {type = "unlock-recipe", recipe = "military-science-pack"}}
data.raw.technology["military-2"].prerequisites = {"military", "steel-processing", "powder_2"}
data.raw.technology["military-2"].unit = {count = 50, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}, time = 15}
data.raw.technology["military-2"].order = "08-02"

--Base "military-3"
--null
data.raw.technology["military-3"].prerequisites = {"military-2", "laser", "phenol-a", "glass-a"}
data.raw.technology["military-3"].unit = {count = 250, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"military-science-pack", 1}}, time = 30}
data.raw.technology["military-3"].order = "08-03"

--Base "military-4"
--null
--null
data.raw.technology["military-4"].unit = {count = 350, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"military-science-pack", 1}, {"high-tech-science-pack", 1}}, time = 45}
data.raw.technology["military-4"].order = "08-04"

--Base "uranium-ammo"
data.raw.technology["uranium-ammo"].effects = {{type = "unlock-recipe", recipe = "bullet-3"}, {type = "unlock-recipe", recipe = "uranium-rounds-magazine"}, 
	{type = "unlock-recipe", recipe = "uranium-cannon-shell"}, {type = "unlock-recipe", recipe = "explosive-uranium-cannon-shell"}}
data.raw.technology["uranium-ammo"].prerequisites = {"military-3", "fuel-enrichment", "tanks"}
--null
data.raw.technology["uranium-ammo"].order = "08-05"

--Base "rocketry"
--null
data.raw.technology["rocketry"].prerequisites = {"electronics", "flammables", "military-2", "parts_2"}
--null
data.raw.technology["rocketry"].order = "08-06"

--Base "explosive-rocketry"
--null
--null
--null
data.raw.technology["explosive-rocketry"].order = "08-07"

--Base "atomic-bomb"
data.raw.technology["atomic-bomb"].effects = {{type = "unlock-recipe", recipe = "weapons-hydrolysis"}, {type = "unlock-recipe", recipe = "weapons-reduction"}, 
	{type = "unlock-recipe", recipe = "atomic-bomb"}}
data.raw.technology["atomic-bomb"].prerequisites = {"weapons-enrichment", "magnesium-refining", "military-4", "explosive-rocketry"}
--null
data.raw.technology["atomic-bomb"].order = "08-08"

--Base "land-mine"
--null
data.raw.technology["land-mine"].prerequisites = {"military-2", "lead-brass"}
--null
data.raw.technology["land-mine"].order = "08-09"

--Base "flamethrower"
data.raw.technology["flamethrower"].effects = {{type = "unlock-recipe", recipe = "flamethrower"}, {type = "unlock-recipe", recipe = "flamethrower-ammo"}}
data.raw.technology["flamethrower"].prerequisites = {"flammables", "military-2", "parts_2"}
data.raw.technology["flamethrower"].unit = {count = 100, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, 	{"military-science-pack", 1}}, 
	time = 30}
data.raw.technology["flamethrower"].order = "08-10"

--Base "cluster-grenade"
--null
data.raw.technology["cluster-grenade"].prerequisites = {"grenade-b", "military-3", "tungsten-refining"}
--null
data.raw.technology["cluster-grenade"].order = "08-12"

--Base "combat-robotics"
--null
--null
--null
data.raw.technology["combat-robotics"].order = "08-13"

--Base "combat-robotics-2"
--null
data.raw.technology["combat-robotics-2"].prerequisites = {"combat-robotics", "military-3", "machines_2"}
--null
data.raw.technology["combat-robotics-2"].order = "08-14"

--Base "combat-robotics-3"
--null
data.raw.technology["combat-robotics-3"].prerequisites = {"combat-robotics-2", "military-4", "machines_3", "speed-module"}
--null
data.raw.technology["combat-robotics-3"].order = "08-15"

--Base "stone-walls"
--null
--null
--null
data.raw.technology["stone-walls"].order = "08-16"

--Base "gates"
--null
data.raw.technology["gates"].prerequisites = {"stone-walls", "military", "machines_1"}
--null
data.raw.technology["gates"].order = "08-21"

--Base "turrets"
--null
data.raw.technology["turrets"].prerequisites = {"military", "automation"}
data.raw.technology["turrets"].unit = {count = 20, ingredients = {{"science-pack-1", 1}}, time = 10}
data.raw.technology["turrets"].order = "08-24"

--Base "laser-turrets"
--null
data.raw.technology["laser-turrets"].prerequisites = {"turrets", "laser", "battery", "military-2"}
--null
data.raw.technology["laser-turrets"].order = "08-26"

--Base "automobilism"
--null
data.raw.technology["automobilism"].prerequisites = {"machines_1", "engine", "glass-a", "rubber-a"}
--null
data.raw.technology["automobilism"].order = "08-32"

--Base "tanks"
--null
data.raw.technology["tanks"].prerequisites = {"automobilism", "military-3", "machines_2", "tungsten-refining"}
data.raw.technology["tanks"].unit = {count = 300, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"military-science-pack", 1}}, time = 30}
data.raw.technology["tanks"].order = "08-33"

--Base "energy-shield-equipment"
--null
--null
--null
data.raw.technology["energy-shield-equipment"].order = "08-38"

--Base "energy-shield-mk2-equipment"
--null
data.raw.technology["energy-shield-mk2-equipment"].prerequisites = {"energy-shield-equipment", "battery", "fission-reactor-equipment"}
data.raw.technology["energy-shield-mk2-equipment"].unit = {count = 250, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"military-science-pack", 1}}, time = 30}
data.raw.technology["energy-shield-mk2-equipment"].order = "08-39"

--Base "exoskeleton-equipment"
--null
data.raw.technology["exoskeleton-equipment"].prerequisites = {"modular-armor", "solar-panel-equipment"}
--null
data.raw.technology["exoskeleton-equipment"].order = "08-42"

--Base "battery-equipment"
--null
--null
--null
data.raw.technology["battery-equipment"].order = "08-44"

--Base "battery-mk2-equipment"
--null
data.raw.technology["battery-mk2-equipment"].prerequisites = {"battery-equipment", "battery_2"}
--null
data.raw.technology["battery-mk2-equipment"].order = "08-45"

--Base "personal-laser-defense-equipment"
--null
--null
--null
data.raw.technology["personal-laser-defense-equipment"].order = "08-47"

--Base "discharge-defense-equipment"
--null
data.raw.technology["discharge-defense-equipment"].prerequisites = {"energy-shield-equipment", "modular-armor", "laser-turrets"}
--null
data.raw.technology["discharge-defense-equipment"].order = "08-50"

--Base "personal-roboport-equipment"
--null
data.raw.technology["personal-roboport-equipment"].prerequisites = {"construction-robotics", "solar-panel-equipment", "battery_2"}
--null
data.raw.technology["personal-roboport-equipment"].order = "08-51"

--Base "personal-roboport-equipment-2"
--null
data.raw.technology["personal-roboport-equipment-2"].prerequisites = {"personal-roboport-equipment", "machines_3", "battery_3"}
--null
data.raw.technology["personal-roboport-equipment-2"].order = "08-52"

--Base "solar-panel-equipment"
--null
data.raw.technology["solar-panel-equipment"].prerequisites = {"modular-armor", "solar-energy", "advanced-electronics"}
data.raw.technology["solar-panel-equipment"].unit = {count = 400, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"production-science-pack", 1}}, time = 45}
data.raw.technology["solar-panel-equipment"].order = "08-54"

--Base "fusion-reactor-equipment"
--null
data.raw.technology["fusion-reactor-equipment"].prerequisites = {"fission-reactor-equipment", "steam-turbine_2", "advanced-lithium", "laser_3"}
data.raw.technology["fusion-reactor-equipment"].unit = {count = 1000, ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, 
	{"military-science-pack", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}, time = 60}
data.raw.technology["fusion-reactor-equipment"].order = "08-57"

--Base "heavy-armor"
--null
data.raw.technology["heavy-armor"].prerequisites = {"iron-armor"}
--null
data.raw.technology["heavy-armor"].order = "08-58"

--Base "modular-armor"
--null
data.raw.technology["modular-armor"].prerequisites = {"heavy-armor", "modules", "machines_2", "rubber-a"}
--null
data.raw.technology["modular-armor"].order = "08-59"

--Base "power-armor"
--null
data.raw.technology["power-armor"].prerequisites = {"modular-armor", "optics", "forging-aluminum"}
--null
data.raw.technology["power-armor"].order = "08-60"

--Base "power-armor-2"
--null
data.raw.technology["power-armor-2"].prerequisites = {"power-armor", "effectivity-module-3", "machines_3", "optics_2"}
--null
data.raw.technology["power-armor-2"].order = "08-61"

--Base "night-vision-equipment"
--null
data.raw.technology["night-vision-equipment"].prerequisites = {"modular-armor", "lamp_1", "advanced-electronics"}
--null
data.raw.technology["night-vision-equipment"].order = "08-63"


data:extend(
{

--Black Powder
{
	type = "technology",
	name = "powder_1",
	icon = "__xander-mod__/graphics/technology/combat/powder_1.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "powder-1"
		}
	},
	prerequisites = {"smelting-sulfur", "hand-saltpeter"},
	unit =
	{
		count = 20,
		ingredients =
		{
			{"science-pack-0", 1}
		},
		time = 10
	},
	order = "00-13",
},
--Basic Firearms
{
	type = "technology",
	name = "basic-firearms",
	icon = "__xander-mod__/graphics/technology/combat/basic-firearms.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "bullet-1"
		},
		{
			type = "unlock-recipe",
			recipe = "casing-1"
		},
		{
			type = "unlock-recipe",
			recipe = "firearm-magazine"
		},
		{
			type = "unlock-recipe",
			recipe = "pistol"
		}
	},
	prerequisites = {"powder_1"},
	unit =
	{
		count = 15,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "08-00",
},
--Base "military" placeholder
	--order = "08-01"
--Base "military-2" placeholder
	--order = "08-02"
--Base "military-3" placeholder
	--order = "08-03"
--Base "military-4" placeholder
	--order = "08-04"
--Base "uranium-ammo" placeholder
	--order = "08-05"
--Base "rocketry" placeholder
	--order = "08-06"
--Base "explosive-rocketry" placeholder
	--order = "08-07"
--Base "atomic-bomb" placeholder
	--order = "08-08"
--Base "land-mine" placeholder
	--order = "08-09"
--Base "flamethrower" placeholder
	--order = "08-10"
--Grenade B
{
	type = "technology",
	name = "grenade-b",
	icon = "__xander-mod__/graphics/technology/combat/grenade-b.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "grenade-b"
		}
	},
	prerequisites = {"military-2"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"military-science-pack", 1}
		},
		time = 30
	},
	order = "08-11",
},
--Base "cluster-grenade" placeholder
	--order = "08-12"
--Base "combat-robotics" placeholder
	--order = "08-13"
--Base "combat-robotics-2" placeholder
	--order = "08-14"
--Base "combat-robotics-3" placeholder
	--order = "08-15"
--Base "stone-walls" placeholder
	--order = "08-16"
--Clay Brick Walls
{
	type = "technology",
	name = "wall_2",
	icon = "__base__/graphics/technology/stone-walls.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wall-2"
		}
	},
	prerequisites = {"stone-walls"},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "08-17",
},
--Reinforced Concrete Walls
{
	type = "technology",
	name = "wall_3",
	icon = "__base__/graphics/technology/stone-walls.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wall-3"
		}
	},
	prerequisites = {"stone-walls", "concrete"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"military-science-pack", 1}
		},
		time = 30
	},
	order = "08-18",
},
--Armored Basalt Walls
{
	type = "technology",
	name = "wall_4",
	icon = "__base__/graphics/technology/stone-walls.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wall-4"
		}
	},
	prerequisites = {"wall_3", "basalt-a", "forging-alloy-a"},
	unit =
	{
		count = 150,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1}
		},
		time = 45
	},
	order = "08-19",
},
--Impervious Walls
{
	type = "technology",
	name = "wall_5",
	icon = "__base__/graphics/technology/stone-walls.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "wall-5"
		}
	},
	prerequisites = {"wall_4", "silicon-nitride", "tungsten-refining"},
	unit =
	{
		count = 300,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-20",
},
--Base "gates" placeholder
	--order = "08-21"
--Armored Basalt Gates
{
	type = "technology",
	name = "gates_2",
	icon = "__base__/graphics/technology/gates.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "gate-2"
		}
	},
	prerequisites = {"gates", "wall_3", "military-2", "machines_2"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1}
		},
		time = 45
	},
	order = "08-22",
},
--Impervious Gates
{
	type = "technology",
	name = "gates_3",
	icon = "__base__/graphics/technology/gates.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "gate-3"
		}
	},
	prerequisites = {"gates_2", "wall_5", "military-3", "machines_3"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-23",
},
--Base "turrets" placeholder
	--order = "08-24"
--Flamethrower Turret
{
	type = "technology",
	name = "flamethrower-turret",
	icon = "__base__/graphics/technology/flamethrower.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "flamethrower-turret"
		}
	},
	prerequisites = {"flamethrower", "turrets"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"military-science-pack", 1}
		},
		time = 30
	},
	order = "08-25",
},
--Base "laser-turrets" placeholder
	--order = "08-26"
--Carbon Dioxide Laser Turrets
{
	type = "technology",
	name = "laser-turrets_2",
	icon = "__base__/graphics/technology/laser-turrets.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "laser-turret-2"
		}
	},
	prerequisites = {"laser-turrets", "laser_2", "machines_2", "battery_2"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1}
		},
		time = 60
	},
	order = "08-27",
},
--Yttrium-Doped Aluminum Garnet Laser Turrets
{
	type = "technology",
	name = "laser-turrets_3",
	icon = "__base__/graphics/technology/laser-turrets.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "laser-turret-3"
		}
	},
	prerequisites = {"laser-turrets_2", "laser_3", "machines_3", "battery_3"},
	unit =
	{
		count = 1000,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-28",
},
--RAdio Detection And Ranging
{
	type = "technology",
	name = "radar_1",
	icon = "__xander-mod__/graphics/technology/combat/radar.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "radar"
		}
	},
	prerequisites = {"military", "automation"},
	unit =
	{
		count = 30,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 15
	},
	order = "08-29",
},
--Doppler Effect RADAR
{
	type = "technology",
	name = "radar_2",
	icon = "__xander-mod__/graphics/technology/combat/radar.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "radar-2"
		}
	},
	prerequisites = {"radar_1", "machines_2"},
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
	order = "08-30",
},
--LIght Detection And Ranging
{
	type = "technology",
	name = "radar_3",
	icon = "__xander-mod__/graphics/technology/combat/radar.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "radar-3"
		}
	},
	prerequisites = {"radar_2", "military-3", "machines_3", "laser"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 45
	},
	order = "08-31",
},
--Base "automobilsm" placeholder
	--order = "08-32"
--Base "tanks" placeholder
	--order = "08-33"
--Artillery Crawler
{
	type = "technology",
	name = "artillery-crawler",
	icon = "__xander-mod__/graphics/technology/combat/artillery-crawler.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "artillery-crawler"
		}
	},
	prerequisites = {"tanks", "laser-turrets"},
	unit =
	{
		count = 1000,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 45
	},
	order = "08-34",
},
--Tank Mark II
{
	type = "technology",
	name = "tank_2",
	icon = "__base__/graphics/technology/tanks.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "tank-2"
		}
	},
	prerequisites = {"artillery-crawler", "military-4", "machines_3", "laser-turrets_3"},
	unit =
	{
		count = 2000,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-35",
},
--First Aid
{
	type = "technology",
	name = "first-aid_1",
	icon = "__xander-mod__/graphics/technology/combat/first-aid.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "first-aid-1"
		}
	},
	prerequisites = {"organics_1"},
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
	order = "08-36",
},
--Synthetic Medicine
{
	type = "technology",
	name = "first-aid_2",
	icon = "__xander-mod__/graphics/technology/combat/first-aid.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "synthetic-drugs"
		},
		{
			type = "unlock-recipe",
			recipe = "first-aid-2"
		}
	},
	prerequisites = {"first-aid_1", "organics_3"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-37",
},
--Base "energy-shield-equipment" placeholder
	--order = "08-38"
--Base "energy-shield-mk2-equipment" placeholder
	--order = "08-39"
--Energy Shield Mark 3
{
	type = "technology",
	name = "energy-shield-mk3-equipment",
	icon = "__xander-mod__/graphics/technology/combat/energy-shield-mk3-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "energy-shield-mk3-equipment"
		}
	},
	prerequisites = {"energy-shield-mk2-equipment", "machines_3", "battery_2", "platinum-refining"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-40",
},
--Energy Shield Mark 4
{
	type = "technology",
	name = "energy-shield-mk4-equipment",
	icon = "__xander-mod__/graphics/technology/combat/energy-shield-mk4-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "energy-shield-mk4-equipment"
		}
	},
	prerequisites = {"energy-shield-mk3-equipment", "battery_3", "fusion-reactor-equipment"},
	unit =
	{
		count = 1000,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-41",
},
--Base "exoskeleton-equipment" placeholder
	--order = "08-42"
--Exoskeleton Mark 2
{
	type = "technology",
	name = "exoskeleton-mk2-equipment",
	icon = "__xander-mod__/graphics/technology/combat/exoskeleton-mk2-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "exoskeleton-mk2-equipment"
		}
	},
	prerequisites = {"exoskeleton-equipment", "machines_3"},
	unit =
	{
		count = 600,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-43",
},
--Base "battery-equipment" placeholder
	--order = "08-44"
--Base "battery-mk2-equipment" placeholder
	--order = "08-45"
--Battery Mark 3
{
	type = "technology",
	name = "battery-mk3-equipment",
	icon = "__base__/graphics/technology/battery-mk2-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "battery-mk3-equipment"
		}
	},
	prerequisites = {"battery-mk2-equipment", "battery_3", "machines_3"},
	unit =
	{
		count = 400,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 45
	},
	order = "08-46",
},
--Base "personal-laser-defense-equipment" placeholder
	--order = "08-47"
--Personal Laser Defense Mark 2
{
	type = "technology",
	name = "personal-laser-defense-mk2-equipment",
	icon = "__xander-mod__/graphics/technology/combat/personal-laser-defense-mk2-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "personal-laser-defense-mk2-equipment"
		}
	},
	prerequisites = {"personal-laser-defense-equipment", "laser-turrets_2"},
	unit =
	{
		count = 350,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1}
		},
		time = 45
	},
	order = "08-48",
},
--Personal Laser Defense Mark 3
{
	type = "technology",
	name = "personal-laser-defense-mk3-equipment",
	icon = "__xander-mod__/graphics/technology/combat/personal-laser-defense-mk3-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "personal-laser-defense-mk3-equipment"
		}
	},
	prerequisites = {"personal-laser-defense-mk2-equipment", "laser-turrets_3"},
	unit =
	{
		count = 800,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-49",
},
--Base "discharge-defense-equipment" placeholder
	--order = "08-50"
--Base "personal-roboport-equipment" placeholder
	--order = "08-51"
--Base "personal-roboport-equipment-2" placeholder
	--order = "08-52"
--Personal Roboport Mark 3
{
	type = "technology",
	name = "personal-roboport-equipment-3",
	icon = "__base__/graphics/technology/personal-roboport-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "personal-roboport-mk3-equipment"
		}
	},
	prerequisites = {"personal-roboport-equipment-2", "radar_3"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 60
	},
	order = "08-53",
},
--Base "solar-panel-equipment" placeholder
	--order = "08-54"
--Efficient Solar Panel Equipment
{
	type = "technology",
	name = "solar-panel-equipment-2",
	icon = "__xander-mod__/graphics/technology/combat/fission-reactor-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fission-reactor-equipment"
		}
	},
	prerequisites = {"solar-panel-equipment", "battery-mk2-equipment", "nuclear-power", "machines_3"},
	unit =
	{
		count = 200,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1}
		},
		time = 30
	},
	order = "08-55",
},
--Portable Fission Reactor Equipment
{
	type = "technology",
	name = "fission-reactor-equipment",
	icon = "__xander-mod__/graphics/technology/combat/fission-reactor-equipment.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fission-reactor-equipment"
		}
	},
	prerequisites = {"solar-panel-equipment", "battery-mk2-equipment", "nuclear-power", "machines_3"},
	unit =
	{
		count = 450,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 30
	},
	order = "08-56",
},
--Base "fusion-reactor-equipment" placeholder
	--order = "08-57"
--Iron Armor
{
	type = "technology",
	name = "iron-armor",
	icon = "__base__/graphics/technology/armor-making.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "light-armor"
		}
	},
	unit =
	{
		count = 10,
		ingredients =
		{
			{"science-pack-1", 1}
		},
		time = 10
	},
	order = "00-14",
},
--Base "heavy-armor" placeholder
	--order = "08-58"
--Base "modular-armor" placeholder
	--order = "08-59"
--Base "power-armor" placeholder
	--order = "08-60"
--Base "power-armor-2" placeholder
	--order = "08-61"
--Power Armor Mark 3
{
	type = "technology",
	name = "power-armor_3",
	icon = "__xander-mod__/graphics/technology/combat/power-armor_3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "power-armor-mk3"
		}
	},
	prerequisites = {"power-armor-2", "speed-module-3", "optics_3", "silicon-nitride"},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1},
			{"high-tech-science-pack", 1}
		},
		time = 30
	},
	order = "08-62",
}
--Base "night-vision-equipment" placeholder
	--order = "08-63"

})