
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
			type = "num-quick-bars",
			modifier = 1
		}
	},
	prerequisites = {"toolbelt"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "00-13",
}

})