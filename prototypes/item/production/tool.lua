--Base Overrides

--Base "iron-axe"
data.raw["mining-tool"]["iron-axe"].order = "01"
data.raw["mining-tool"]["iron-axe"].speed = 5

--Base "steel-axe"
data.raw["mining-tool"]["steel-axe"].icon = "__xander-mod__/graphics/item/production/tool/axe-3.png"
data.raw["mining-tool"]["steel-axe"].order = "02"
data.raw["mining-tool"]["steel-axe"].speed = 6

--Base "repair-pack"
data.raw["repair-tool"]["repair-pack"].icon = "__xander-mod__/graphics/item/production/tool/repair-pack-1.png"
data.raw["repair-tool"]["repair-pack"].order = "06"
data.raw["repair-tool"]["repair-pack"].speed = 0.5


data:extend(
{

--Bronze Axe
{
	type = "mining-tool",
	name = "axe-1",
	icon = "__xander-mod__/graphics/item/production/tool/axe-1.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "tool",
	action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				type = "damage",
				damage = {amount = 2, type = "physical"}
			}
		}
	},
	durability = 3000,
	order = "00",
	speed = 2,
	stack_size = 20
},
--Base "iron-axe" placeholder
	--order = "01"
--Base "steel-axe" placeholder
	--order = "02"
--Alloy Steel Axe
{
	type = "mining-tool",
	name = "axe-4",
	icon = "__xander-mod__/graphics/item/production/tool/axe-4.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "tool",
	action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				type = "damage",
				damage = {amount = 5, type = "physical"}
			}
		}
	},
	durability = 6000,
	order = "03",
	speed = 8,
	stack_size = 20
},
--Tungsten Carbide (Cermet with Cobalt) Axe
{
	type = "mining-tool",
	name = "axe-5",
	icon = "__xander-mod__/graphics/item/production/tool/axe-5.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "tool",
	action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				type = "damage",
				damage = {amount = 6, type = "physical"}
			}
		}
	},
	durability = 8000,
	order = "04",
	speed = 10,
	stack_size = 20
},
--Silicon Nitride Axe
{
	type = "mining-tool",
	name = "axe-6",
	icon = "__xander-mod__/graphics/item/production/tool/axe-6.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "tool",
	action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				type = "damage",
				damage = {amount = 7, type = "physical"}
			}
		}
	},
	durability = 10000,
	order = "05",
	speed = 12,
	stack_size = 20
},
--Base "repair-pack" placeholder
	--order = "06"
--Improved Repair Pack
{
	type = "repair-tool",
	name = "repair-pack-2",
	icon = "__xander-mod__/graphics/item/production/tool/repair-pack-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "tool",
	order = "07",
	speed = 1,
	durability = 200,
	stack_size = 50
},
--Advanced Repair Pack
{
	type = "repair-tool",
	name = "repair-pack-3",
	icon = "__xander-mod__/graphics/item/production/tool/repair-pack-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "tool",
	order = "08",
	speed = 2,
	durability = 500,
	stack_size = 50
}

}
)