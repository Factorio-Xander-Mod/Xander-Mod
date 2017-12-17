
--Base Overrides

--Science Pack 1
data.raw.tool["science-pack-1"].order = "1"
--Science Pack 2
data.raw.tool["science-pack-2"].order = "2"
--Science Pack 3
data.raw.tool["science-pack-3"].order = "3"
--Military Science Pack
data.raw.tool["military-science-pack"].order = "4"
--Production Science Pack
data.raw.tool["production-science-pack"].order = "5"
--High-Tech Science Pack
data.raw.tool["high-tech-science-pack"].order = "6"
--Space Science Pack
data.raw.tool["space-science-pack"].order = "7"


data:extend(
{

--Science Pack 0
{
	type = "tool",
	name = "science-pack-0",
	icon = "__xander-mod__/graphics/item/part/science/science-pack-0.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "science-pack",
	order = "0",
	stack_size = 100,
	durability = 1,
	durability_description_key = "description.science-pack-remaining-amount"
}
--Placeholders:
--Base "science-pack-1" placeholder
--Base "science-pack-2" placeholder
--Base "science-pack-3" placeholder
--Base "military-science-pack" placeholder
--Base "production-science-pack" placeholder
--Base "high-tech-science-pack" placeholder
--Base "space-science-pack" placeholder

}
)