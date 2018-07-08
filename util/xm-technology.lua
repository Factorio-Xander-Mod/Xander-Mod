--Input parameters:	name	recipes to unlock	special effects		prerequisite technologies	unit count		science packs {{name, count}, {name, count}}	unit time cost		group number	subgroup number		individual technology number

function xm_technology(name_arg, recipe_unlocks, special_effects, prerequisites_arg, unit_count, unit_ingredients, unit_time, group_no, subgroup_no, tech_no)
	--Create an output array for the prototype, using a few standard technology parameters
	local out = {type = "technology", name = name_arg}
	--Set the icon path and size
	out.icon = "__xander-mod__/graphics/technology/" .. xm_groups[group_no] .. "/" .. xm_all_subgroups[group_no][subgroup_no][1] .. "/" .. name_arg .. ".png"
	out.icon_size = 128
	--Create a list to store the effects of researching the current technology
	local effects_build_list = {}
	--Populate all recipe unlocks for the current technology, into the effects list
	for i, name in ipairs(recipe_unlocks) do
		table.insert(effects_build_list, {type = "unlock-recipe", recipe = name})
	end
	--Populate all the special effects (things other than recipe unlocks) for the current technology, into the list of effects
	--Unfinished, because I don't know what the needs of this section are yet
	--for i, entry in ipairs(special_effects) do
	--	table.insert(effects_build_list, {type = entry[1], recipe = name})
	--end
	out.effects = effects_build_list
	--Set the prerequisites
	out.prerequisites = prerequisites_arg
	--Set the unit cost based on input parameters
	out.unit = {count = unit_count, ingredients = unit_ingredients, time = unit_time}
	--Set the order based on input parameters
	out.order = group_no .. "-" .. subgroup_no .. "-" .. tech_no
	--Return the prototype array
	return out
end