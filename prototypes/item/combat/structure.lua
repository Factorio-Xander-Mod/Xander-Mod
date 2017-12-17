
--Base Overrides

--Base "stone-wall"
data.raw.item["stone-wall"].order = "00"
data.raw.item["stone-wall"].stack_size = 100
--Base "gate" - renamed to XM Steel Gate
data.raw.item["gate"].order = "05"
data.raw.item["gate"].stack_size = 100
--Base "gun-turret"
data.raw.item["gun-turret"].order = "08"
--Base "flamethrower-turret"
data.raw.item["flamethrower-turret"].order = "09"
--Base "radar"
data.raw.item["radar"].order = "10"
--Base "laser-turret"
data.raw.item["laser-turret"].order = "13"
--Base "car" placeholder
data.raw["item-with-entity-data"]["car"].subgroup = "defensive-structure"
data.raw["item-with-entity-data"]["car"].order = "16"
--Base "tank" placeholder
data.raw["item-with-entity-data"]["tank"].subgroup = "defensive-structure"
data.raw["item-with-entity-data"]["tank"].order = "17"


data:extend(
{

--Base "stone-wall" placeholder
	--order = "00"
--Brick Wall
{
	type = "item",
	name = "wall-2",
	icon = "__xander-mod__/graphics/item/combat/structure/wall-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "01",
	place_result = "wall-2",
	stack_size = 100
},
--Reinforced Concrete Wall
{
	type = "item",
	name = "wall-3",
	icon = "__xander-mod__/graphics/item/combat/structure/wall-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "02",
	place_result = "wall-3",
	stack_size = 100
},
--Armored Wall
{
	type = "item",
	name = "wall-4",
	icon = "__xander-mod__/graphics/item/combat/structure/wall-4.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "03",
	place_result = "wall-4",
	stack_size = 100
},
--Impervious Wall
{
	type = "item",
	name = "wall-5",
	icon = "__xander-mod__/graphics/item/combat/structure/wall-5.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "04",
	place_result = "wall-5",
	stack_size = 100
},
--Base "gate" placeholder
	--order = "05"
--Armored Gate
{
	type = "item",
	name = "gate-2",
	icon = "__xander-mod__/graphics/item/combat/structure/gate-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "06",
	place_result = "gate-2",
	stack_size = 100
},
--Impervious Gate
{
	type = "item",
	name = "gate-3",
	icon = "__xander-mod__/graphics/item/combat/structure/gate-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "07",
	place_result = "gate-3",
	stack_size = 100
},
--Base "gun-turret" placeholder
	--order = "08"
--Base "flamethrower-turret" placeholder
	--order = "09"
--Base "radar" placeholder
	--order = "10"
--Doppler Radar
{
	type = "item",
	name = "radar-2",
	icon = "__xander-mod__/graphics/item/combat/structure/radar-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "11",
	place_result = "radar-2",
	stack_size = 50
},
--Tactical LIDAR Array
{
	type = "item",
	name = "radar-3",
	icon = "__xander-mod__/graphics/item/combat/structure/radar-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "12",
	place_result = "radar-3",
	stack_size = 50
},
--Base "laser-turret" placeholder
	--order = "03"
--Carbon Dioxide Laser Turret
{
	type = "item",
	name = "laser-turret-2",
	icon = "__xander-mod__/graphics/item/combat/structure/laser-turret-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "14",
	place_result = "laser-turret-2",
	stack_size = 50
},
--Yttrium-Doped Aluminum Garnet Laser Turret
{
	type = "item",
	name = "laser-turret-3",
	icon = "__xander-mod__/graphics/item/combat/structure/laser-turret-3.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "15",
	place_result = "laser-turret-3",
	stack_size = 50
},
--Base "car" placeholder
	--order = "16"
--Base "tank" placeholder
	--order = "17"
--Artillery Crawler
{
	type = "item",
	name = "artillery-crawler",
	icon = "__xander-mod__/graphics/item/combat/structure/artillery-crawler.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "18",
	place_result = "artillery-crawler",
	stack_size = 1
},
--Tank Mark II
{
	type = "item",
	name = "tank-2",
	icon = "__xander-mod__/graphics/item/combat/structure/tank-2.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "defensive-structure",
	order = "18",
	place_result = "tank-2",
	stack_size = 1
}

}
)