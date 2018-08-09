--Input parameters: name	icon	category	tint	time	enabled	ingredients	results	subgroup

function xm_add_recipe(name, icon_path, category, tint, time, enabled, ingredients, results, subgroup)
	--Set an entry in data.raw, with the name given as the key, and all the other recipe parameters as given.
	--Whether the item exists already from base, or not because the recipe is newly added by XM, does not matter.
	--Setting the index in data.raw will inherently know whether to modify existing values or create new ones; that is part of how Lua makes arrays.
	data.raw.recipe[name] = {type = "recipe", name = name, icon = icon_path, icon_size = 32, category = category, crafting_machine_tint = tint, energy_required = time, enabled = enabled, ingredients = ingredients, results = results, subgroup = subgroup}
end