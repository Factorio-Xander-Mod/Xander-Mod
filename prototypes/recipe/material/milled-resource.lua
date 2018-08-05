for _, entry in ipairs(xm_milled_resource_recipes) do
	data.raw.recipe[entry[1]] = xm_recipe(table.unpack(entry, 1, 9))
end