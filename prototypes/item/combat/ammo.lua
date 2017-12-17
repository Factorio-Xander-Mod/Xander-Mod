
--Base Overrides

--Base "firearm-magazine"
data.raw.ammo["firearm-magazine"].order = "00"
--Base "piercing-rounds-magazine"
data.raw.ammo["piercing-rounds-magazine"].order = "01"
--Base "uranium-rounds-magazine"
data.raw.ammo["uranium-rounds-magazine"].order = "02"
--Base "shotgun-shell"
data.raw.ammo["shotgun-shell"].order = "03"
--Base "piercing-shotgun-shell"
data.raw.ammo["piercing-shotgun-shell"].order = "04"
--Base "railgun-dart"
data.raw.ammo["railgun-dart"].order = "05"
--Base "cannon-shell"
data.raw.ammo["cannon-shell"].order = "06"
--Base "explosive-cannon-shell"
data.raw.ammo["explosive-cannon-shell"].order = "07"
--Base "uranium-cannon-shell"
data.raw.ammo["uranium-cannon-shell"].order = "08"
--Base "explosive-uranium-cannon-shell"
data.raw.ammo["explosive-uranium-cannon-shell"].order = "09"
--Base "rocket"
data.raw.ammo["rocket"].order = "10"
--Base "explosive-rocket"
data.raw.ammo["explosive-rocket"].order = "11"
--Base "atomic-bomb"
data.raw.ammo["atomic-bomb"].order = "12"
--Base "flamethrower-ammo"
data.raw.ammo["flamethrower-ammo"].order = "13"

data:extend(
{

--Base "firearm-magazine" placeholder
	--order = "00"
--Base "piercing-rounds-magazine" placeholder
	--order = "01"
--Base "uranium-rounds-magazine" placeholder
	--order = "02"
--Base "shotgun-shell" placeholder
	--order = "03"
--Base "piercing-shotgun-shell" placeholder
	--order = "04"
--Base "railgun-dart" placeholder
	--order = "05"
--Base "cannon-shell" placeholder
	--order = "06"
--Base "explosive-cannon-shell" placeholder
	--order = "07"
--Base "uranium-cannon-shell" placeholder
	--order = "08"
--Base "explosive-uranium-cannon-shell" placeholder
	--order = "09"
--Base "rocket" placeholder
	--order = "10"
--Base "explosive-rocket" placeholder
	--order = "11"
--Base "atomic-bomb" placeholder
	--order = "12"
--Base "flamethrower-ammo" placeholder
	--order = "13"

--Railgun Shell
{
	type = "ammo",
	name = "railgun-shell",
	icon = "__xander-mod__/graphics/item/combat/ammo/railgun-shell.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	ammo_type =
	{
		category = "railgun-shell",
		target_type = "direction",
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "projectile",
				projectile = "railgun-projectile",
				starting_speed = 5,
				direction_deviation = 0.05,
				range_deviation = 0.05,
				max_range = 50,
				source_effects =
				{
					type = "create-explosion",
					entity_name = "explosion-gunshot"
				},
			}
		},
	},
	subgroup = "ammo",
	order = "14",
	stack_size = 100
},
--Explosive Railgun Shell
{
	type = "ammo",
	name = "explosive-railgun-shell",
	icon = "__xander-mod__/graphics/item/combat/ammo/explosive-railgun-shell.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	ammo_type =
	{
		category = "railgun-shell",
		target_type = "direction",
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "projectile",
				projectile = "explosive-railgun-projectile",
				starting_speed = 5,
				direction_deviation = 0.05,
				range_deviation = 0.05,
				max_range = 50,
				source_effects =
				{
					type = "create-explosion",
					entity_name = "explosion-gunshot"
				},
			}
		},
	},
	subgroup = "ammo",
	order = "15",
	stack_size = 100
}

}
)
