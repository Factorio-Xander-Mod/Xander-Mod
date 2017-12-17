
--Base Overrides

--Base "grenade"
data.raw.capsule["grenade"].order = "00"
--Base "cluster-grenade"
data.raw.capsule["cluster-grenade"].order = "01"
--Base "poison-capsule"
data.raw.capsule["poison-capsule"].order = "02"
--Base "slowdown-capsule"
data.raw.capsule["slowdown-capsule"].order = "03"
--Base "defender-capsule"
data.raw.capsule["defender-capsule"].order = "04"
--Base "distractor-capsule"
data.raw.capsule["distractor-capsule"].order = "05"
--Base "destroyer-capsule"
data.raw.capsule["destroyer-capsule"].order = "06"
--Base "discharge-defense-remote"
data.raw.capsule["discharge-defense-remote"].order = "07"
--Base "raw-fish"
data.raw.capsule["raw-fish"].subgroup = "capsule"
data.raw.capsule["raw-fish"].order = "08"
data.raw.capsule["raw-fish"].capsule_action.attack_parameters["cooldown"] = 60


data:extend(
{

--Base "grenade" placeholder
	--order = "00"
--Base "cluster-grenade" placeholder
	--order = "01"
--Base "poison-capsule" placeholder
	--order = "02"
--Base "slowdown-capsule" placeholder
	--order = "03"
--Base "defender-capsule" placeholder
	--order = "04"
--Base "distractor-capsule" placeholder
	--order = "05"
--Base "destroyer-capsule" placeholder
	--order = "06"
--Base "discharge-defense-remote" placeholder
	--order = "07"
--Base "raw-fish" placeholder
	--order = "08"
--First Aid (Basic First Aid)
{
	type = "capsule",
	name = "first-aid-1",
	icon = "__xander-mod__/graphics/item/combat/capsule/first-aid-1.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "capsule",
	capsule_action =
	{
		type = "use-on-self",
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "capsule",
			cooldown = 60,
			range = 0,
			ammo_type =
			{
				category = "capsule",
				target_type = "position",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							type = "damage",
							damage = {type = "physical", amount = -10}
						}
					}
				}
			}
		}
	},
	order = "09",
	stack_size = 50
},
--Intravenous Medicine (Improved First Aid)
{
	type = "capsule",
	name = "first-aid-2",
	icon = "__xander-mod__/graphics/item/combat/capsule/first-aid-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "capsule",
	capsule_action =
	{
		type = "use-on-self",
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "capsule",
			cooldown = 60,
			range = 0,
			ammo_type =
			{
				category = "capsule",
				target_type = "position",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							type = "damage",
							damage = {type = "physical", amount = -30}
						}
					}
				}
			}
		}
	},
	order = "10",
	stack_size = 50
}


}
)