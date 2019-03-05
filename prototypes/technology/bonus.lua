
--Base Overrides
data.raw.technology["toolbelt"].prerequisites = {"military"}


data:extend(
{

--Toolbelt 2
{
	type = "technology",
	name = "toolbelt-2",
	icon = "__base__/graphics/technology/toolbelt.png",
	icon_size = 128,
	effects =
	{
		{
			type = "character-inventory-slots-bonus",
        	modifier = 10
		}
	},
	prerequisites = {"toolbelt"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "00-13",
}

})