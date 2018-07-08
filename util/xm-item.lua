--Generate item parameters
function xm_item(name_arg, flags_arg, group_no, subgroup_no, item_no, place_as_entity)
	--Look up the subgroup from table
	local subgroup = xm_all_subgroups[group_no][subgroup_no][1]
	--Create a list for output item parameters, started with the type and name
	local out = {type = "item", name = name_arg}
	out.subgroup = subgroup
	--Construct the file path for the icon
	local icon = "__xander-mod__/graphics/item/" .. xm_groups[group_no] .. "/" .. subgroup .. "/" .. name_arg .. ".png"
	out.icon = icon
	out.icon_size = 32
	--Default flag is "goes-to-main-inventory", detect if special other flags given as input and use that list instead
	local flags = {"goes-to-main-inventory"}
	if flags_arg then
		flags = flags_arg
	end
	out.flags = flags
	--Add the appropriate zeros to the item_no string
	if item_no < 10 then item_no = "0" .. item_no end
	out.order = group_no .. "_" .. subgroup_no .. "_" .. item_no
	--Check for whether the item should place an entity, and if so, have the item place the entity with its same name
	if place_as_entity then out.place_result = name_arg end
	--Determine the stack size based on the group that the item is in
	local size = 100
	if group_no == 3 then size = 200
		elseif group_no == 5 then size = 100
		elseif group_no == 6 then size = 50
		elseif group_no == 7 then size = 100
		elseif group_no == 8 then size = 50
	end
	out.stack_size = size
	--Return the list of all item parameters
	return out
	--[[
	{
		type = typ,
		name = name_arg,
		icon = icon,
		icon_size = 32,
		flags = flags,
		subgroup = subgroup,
		order = group_no .. "_" .. subgroup_no .. "_" .. item_no,
		stack_size = size
	}]]--
end

function xm_special_item(name_arg, flags_arg, group_no, subgroup_no, item_no, place_as_entity, specials)
	--Look up the subgroup from table
	local subgroup = xm_all_subgroups[group_no][subgroup_no][1]
	--Create a list for output item parameters, started with the type and name
	local out = xm_item(name_arg, flags_arg, group_no, subgroup_no, item_no, place_as_entity)
	out.subgroup = subgroup
	--Determine what type the thing actually is and add the parameters needed for each specific type
	local typ = "item"
	if string.find(name_arg, "axe") then --special contains: {damage_amount, durability, speed}
		out.type = "mining-tool"
		out.action = {
			type = "direct",
			action_delivery = {type = "instant",
				target_effects = {type = "damage", damage = {amount = specials[1], type = "physical"}}
			}
		}
		out.durability = specials[2]
		out.speed = specials[3]
		out.stack_size = 20
	elseif string.find(name_arg, "repair") then --special contains: {nil, durability, speed}
		out.type = "repair-tool"
		out.durability = specials[2]
		out.speed = specials[3]
	elseif string.find(name_arg, "module") then --special contains: {}
		out.type = "module"
	elseif string.find(name_arg, "science") then --special contains: {}
		out.type = "tool"
	elseif string.find(name_arg, "magazine") then --special contains: {}
		out.type = "ammo"
	elseif string.find(name_arg, "armor") then --special contains: {}
		out.type = "armor"
	elseif string.find(name_arg, "capsule") then --special contains: {}
		out.type = "capsule"
	elseif string.find(name_arg, "gun") then --special contains: {}
		out.type = "gun"
	elseif string.find(name_arg, "item-with-entity-data") then
		out.type = "item-with-entity-data"
	end
	return out
end