--Generate item parameters
function xm_item(name_arg, flags_arg, group_no, subgroup_no, item_no)
	local subgroup = xm_all_subgroups[group_no][subgroup_no]
	--What type the thing is, "item" by default, but some things are, ex., type = "module", even though it's a thing that goes in inventories
	local typ = "item"
	if subgroup == "mining-tool" then typ = subgroup
		elseif subgroup == "repair-tool" then typ = subgroup
		elseif subgroup == "module" then typ = subgroup
		elseif subgroup == "science" then typ = "tool"
		elseif subgroup == "ammo" then typ = subgroup
		elseif subgroup == "armor" then typ = subgroup
		elseif subgroup == "capsule" then typ = subgroup
		elseif subgroup == "gun" then typ = subgroup
		elseif subgroup == "item-with-entity-data" then typ = subgroup
	end
	--Construct the file path for the icon
	local icon = "__xander-mod__/graphics/item/" .. xm_groups[group_no] .. "/" .. subgroup .. "/" .. name_arg .. ".png"
	--Default flag is "goes-to-main-inventory", detect if special other flags given as input and add them to the table of flags
	local flags = {"goes-to-main-inventory"}
	if flags_arg then
		for i, flag in ipairs(flags_arg) do table.insert(flags, flag) end
	end
	--Add the appropriate zeros to the item_no string
	if item_no < "10" then item_no = "0" .. item_no end
	--Determine the stack size based on the group that the item is in
	local size = 100
	if group == "material" then size = 200
		elseif group == "production" then size = 50
		elseif group == "combat" then size = 50
	end
	--Return all the item parameters in a list
	return
	{
		type = typ,
		name = name_arg,
		icon = icon,
		icon_size = 32,
		flags = flags,
		subgroup = subgroup,
		order = group_no .. "-" .. subgroup_no .. "-" .. item_no,
		stack_size = size
	}
end