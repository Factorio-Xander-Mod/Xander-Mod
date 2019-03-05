--Generate item parameters
function xm_item(name_arg, flags_arg, group_no, subgroup_no, item_no, place_as_entity)
	--Create a list for output item parameters, started with the type and name
	local out = {type = "item", name = name_arg}
	--Set the subgroup
	out.subgroup = xm_all_subgroups[group_no][subgroup_no][1]
	--Construct and set the file path for the icon
	out.icon = "__xander-mod__/graphics/item/" .. xm_groups[group_no] .. "/" .. xm_all_subgroups[group_no][subgroup_no][1] .. "/" .. name_arg .. ".png"
	out.icon_size = 32
	--Default flag is "goes-to-main-inventory", detect if special other flags given as input and use that list instead
	if flags_arg then
		out.flags = flags_arg
	else
		out.flags = {--[[ "goes-to-main-inventory" ]]}
	end
	--Set the order string, adding the appropriate zeroes to the group_no, subgroup_no, and item_no
	local order_group_no = group_no
	local order_subgroup_no = subgroup_no
	local order_item_no = item_no
	if group_no < 10 then order_group_no = "0" .. group_no end
	if subgroup_no < 10 then order_subgroup_no = "0" .. subgroup_no end
	if item_no < 10 then order_item_no = "0" .. item_no end
	out.order = order_group_no .. "-" .. order_subgroup_no .. "-" .. order_item_no
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
	--Create a list for output item parameters, started with the type and name
	local out = xm_item(name_arg, flags_arg, group_no, subgroup_no, item_no, place_as_entity)
	--Determine what type the thing actually is and add the parameters needed for each specific type
	local typ = "item"
	-- if string.find(name_arg, "axe") then --special contains: {damage_amount, durability, speed}
	-- 	out.type = "mining-tool"
	-- 	out.action = {
	-- 		type = "direct",
	-- 		action_delivery = {type = "instant",
	-- 			target_effects = {type = "damage", damage = {amount = specials[1], type = "physical"}}
	-- 		}
	-- 	}
	-- 	out.durability = specials[2]
	-- 	out.speed = specials[3]
	-- 	out.stack_size = 20
	if string.find(name_arg, "repair") then --special contains: {nil, durability, speed}
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

function xm_modify_base_item(name_arg, group_no, subgroup_no, item_no)--icon
	--check the current subgroup where the base item is kept.  If it is not the same as the desired subgroup, then reassign its subgroup.
	if data.raw.item[name_arg].subgroup ~= xm_all_subgroups[group_no][subgroup_no][1] then
		data.raw.item[name_arg].subgroup = xm_all_subgroups[group_no][subgroup_no][1]
	end
	--Set the order of the base item to match the XM format
	local order_group_no = group_no
	local order_subgroup_no = subgroup_no
	local order_item_no = item_no
	if group_no < 10 then order_group_no = "0" .. group_no end
	if subgroup_no < 10 then order_subgroup_no = "0" .. subgroup_no end
	if item_no < 10 then order_item_no = "0" .. item_no end
	data.raw.item[name_arg].order = order_group_no .. "_" .. order_subgroup_no .. "_" .. order_item_no
	--Compute and set the stack size for the base item
	local size = 100
	if group_no == 3 then size = 200
		elseif group_no == 5 then size = 100
		elseif group_no == 6 then size = 50
		elseif group_no == 7 then size = 100
		elseif group_no == 8 then size = 50
	end
	data.raw.item[name_arg].stack_size = size
	--[[
	--Check if a new icon is indicated, and if so, then reassign the base item's icon to use the XM computed path
	if icon then
		local icon = "__xander-mod__/graphics/item/" .. xm_groups[group_no] .. "/" .. xm_all_subgroups[group_no][subgroup_no][1] .. "/" .. name_arg .. ".png"
		data.raw.item[name_arg].icon = icon
	end
	]]--
end