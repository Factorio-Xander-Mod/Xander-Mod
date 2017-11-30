
--Base Overrides

--Base "copper-ore-particle"
data.raw.particle["copper-ore-particle"].order = "08"
data.raw.particle["copper-ore-particle"].pictures =
	{
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/copper/1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/copper/hr-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/copper/2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/copper/hr-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/copper/3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/copper/hr-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/copper/4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/copper/hr-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	}

--Base "iron-ore-particle"
data.raw.particle["iron-ore-particle"].order = "08"
data.raw.particle["iron-ore-particle"].pictures =
	{
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/iron/1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/iron/hr-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/iron/2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/iron/hr-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/iron/3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/iron/hr-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/iron/4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/iron/hr-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	}


data:extend(
{


--Bauxite
{
	type = "particle",
	name = "bauxite-particle",
	flags = {"not-on-map"},
	life_time = 180,
	pictures =
	{
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/hr-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/hr-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/hr-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/bauxite/hr-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	},
	shadows =
	{
		{
			filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	}
},
--Granitic Ore
{
	type = "particle",
	name = "granitic-particle",
	flags = {"not-on-map"},
	life_time = 180,
	pictures =
	{
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/granitic/1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/granitic/hr-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/granitic/2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/granitic/hr-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/granitic/3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/granitic/hr-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/granitic/4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/granitic/hr-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	},
	shadows =
	{
		{
			filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/copper-ore-particle/hr-copper-ore-particle-shadow-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/copper-ore-particle/hr-copper-ore-particle-shadow-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/copper-ore-particle/hr-copper-ore-particle-shadow-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/copper-ore-particle/hr-copper-ore-particle-shadow-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	}
},
--Lead Ore
{
	type = "particle",
	name = "lead-particle",
	flags = {"not-on-map"},
	life_time = 180,
	pictures =
	{
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/lead/1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/lead/hr-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/lead/2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/lead/hr-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/lead/3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/lead/hr-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__xander-mod__/graphics/entity/resource/particle/lead/4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/resource/particle/lead/hr-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	},
	shadows =
	{
		{
			filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-1.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/iron-ore-particle/hr-iron-ore-particle-shadow-1.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-2.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/iron-ore-particle/hr-iron-ore-particle-shadow-2.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-3.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/iron-ore-particle/hr-iron-ore-particle-shadow-3.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		},
		{
			filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-4.png",
			priority = "extra-high",
			width = 16,
			height = 16,
			frame_count = 1,
			hr_version =
			{
				filename = "__base__/graphics/entity/iron-ore-particle/hr-iron-ore-particle-shadow-4.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				scale = 0.5
			}
		}
	}
}

}
)
