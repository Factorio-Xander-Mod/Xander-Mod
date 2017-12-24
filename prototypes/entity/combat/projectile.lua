

data:extend(
{

--Railgun Shell Projectile
{
	type = "projectile",
	name = "railgun-projectile",
	flags = {"not-on-map"},
	collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
	acceleration = 0,
	direction_only = true,
	piercing_damage = 600,
	action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				{
					type = "damage",
					damage = {amount = 400 , type = "physical"}
				},
				{
					type = "damage",
					damage = {amount = 200 , type = "explosion"}
				},
				{
					type = "create-entity",
					entity_name = "explosion"
				}
			}
		}
	},
	final_action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				{
					type = "create-entity",
					entity_name = "small-scorchmark",
					check_buildability = true
				}
			}
		}
	},
	animation =
	{
		filename = "__base__/graphics/entity/bullet/bullet.png",
		frame_count = 1,
		width = 3,
		height = 50,
		priority = "high"
	},
},
--Explosive Railgun Shell Projectile
{
	type = "projectile",
	name = "explosive-railgun-projectile",
	flags = {"not-on-map"},
	collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
	acceleration = 0,
	direction_only = true,
	piercing_damage = 200,
	action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				{
					type = "damage",
					damage = {amount = 400, type = "physical"}
				},
				{
					type = "create-entity",
					entity_name = "explosion"
				}
			}
		}
	},
	final_action =
	{
		type = "direct",
		action_delivery =
		{
			type = "instant",
			target_effects =
			{
				{
					type = "create-entity",
					entity_name = "big-explosion"
				},
				{
					type = "nested-result",
					action =
					{
						type = "area",
						radius = 4,
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								{
									type = "damage",
									damage = {amount = 600, type = "explosion"}
								},
								{
									type = "create-entity",
									entity_name = "explosion"
								}
							}
						}
					}
				}
			}
		}
	},
	animation =
	{
		filename = "__base__/graphics/entity/bullet/bullet.png",
		frame_count = 1,
		width = 3,
		height = 50,
		priority = "high"
	},
}

}
)