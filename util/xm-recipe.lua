--Input parameters: name	icon	category	tint	time	enabled	ingredients	results	subgroup

function xm_recipe(name_arg, icon_path, category, tint, time_arg, enabled, ingredients, results, subgroup)
	--Create a list for output recipe parameters
	local out = {type = "recipe", name = name_arg}
	--Set the recipe icon.  Use a custom path if given, otherwise let the base game fill in the icon of the output item
	if icon_path then
		out.icon = icon_path
		out.icon_size = 32
	end
	--Set the category
	out.category = category
	--Set the crafting macine tint if one is given
	if tint then
		out.crafting_machine_tint = tint
	end
	--Set the time required for the recipe (base game calls it "energy required")
	out.energy_required = time_arg
	--Set whether the recipe is enabled at the start of the game, or requires research to unlock
	out.enabled = enabled
	--Set the ingredients list
	out.ingredients = ingredients
	--Set the results
	if not results[2] then
		out.result = results[1][1]
		out.result_count = results[1][2]
	else
		out.results = results
	end
	--Set the subgroup, if a custom one is provided, otherwise let the base game fill in the subgroup of the result item
	if subgroup then
		out.subgroup = subgroup
	end

	--Return the list of all the recipe parameters
	return out
end