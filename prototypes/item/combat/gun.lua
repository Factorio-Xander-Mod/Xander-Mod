--Base Overrides

--Base "pistol"
data.raw.gun["pistol"].order = "00"
--Base "submachine-gun"
data.raw.gun["submachine-gun"].order = "01"
--Base "flamethrower"
data.raw.gun["flamethrower"].order = "02"
--Base "vehicle-machine-gun"
data.raw.gun["vehicle-machine-gun"].order = "03"
--Base "tank-machine-gun"
data.raw.gun["tank-machine-gun"].order = "04"
--Base "tank-flamethrower"
data.raw.gun["tank-flamethrower"].order = "05"
--Base "land-mine"
data.raw.item["land-mine"].order = "06"
--Base "rocket-launcher"
data.raw.gun["rocket-launcher"].order = "07"
--Base "shotgun"
data.raw.gun["shotgun"].order = "08"
--Base "combat-shotgun"
data.raw.gun["combat-shotgun"].order = "09"
--Base "railgun"
data.raw.gun["railgun"].order = "10"
--Base "tank-cannon"
data.raw.gun["tank-cannon"].order = "11"


data:extend(
{

--Base "pistol" placeholder
	--order = "00"
--Base "submachine-gun" placeholder
	--order = "01"
--Base "flamethrower" placeholder
	--order = "02"
--Base "vehicle-machine-gun" placeholder
	--order = "03"
--Base "tank-machine-gun" placeholder
	--order = "04"
--Base "tank-flamethrower" placeholder
	--order = "05"
--Base "land-mine" placeholder
	--order = "06"
--Base "rocket-launcher" placeholder
	--order = "07"
--Base "shotgun" placeholder
	--order = "08"
--Base "combat-shotgun" placeholder
	--order = "09"
--Base "railgun" placeholder
	--order = "10"
--Base "tank-cannon" placeholder
	--order = "11"
--Artillery Cannon (Internal to Artillery Crawler)
{
	type = "gun",
	name = "artillery-cannon",
	icon = "__xander-mod__/graphics/item/combat/gun/artillery-cannon.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory", "hidden"},
	subgroup = "gun",
	order = "12",
	stack_size = 1,
	attack_parameters =
	{
		type = "projectile",
		ammo_category = "cannon-shell",
		cooldown = 240,
		movement_slow_down_factor = 1,
		projectile_creation_distance = 2,
		projectile_center = {-0.15625, -0.07812},
		range = 200,
		damage_modifier = 1.5,
		sound =
		{
			{
				filename = "__base__/sound/fight/tank-cannon.ogg",
				volume = 1
			}
		}
	},
},
--Tank Railgun (Internal to Tank Mark II)
{
	type = "gun",
	name = "tank-railgun",
	icon = "__base__/graphics/icons/railgun.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory", "hidden"},
	subgroup = "gun",
	order = "13",
	attack_parameters =
	{
		type = "projectile",
		ammo_category = "railgun-shell",
		cooldown = 60,
		movement_slow_down_factor = 0,
		projectile_creation_distance = 1.6,
		projectile_center = {-0.15625, -0.07812},
		range = 50,
		sound = {filename = "__base__/sound/fight/tank-cannon.ogg", volume = 1.0},
	},
	stack_size = 1
}

}
)