--==========build
for i, entry in ipairs(xm_build_recipes) do
	data.raw.recipe[entry[1]] = xm_recipe(table.unpack(entry, 1, 9))
end


--==========concentrate
for i, entry in ipairs(xm_concentrate_recipes) do
	data.raw.recipe[entry[1]] = xm_recipe(table.unpack(entry, 1, 9))
end


--==========ingot
for _, entry in ipairs(xm_ingot_recipes) do
	data.raw.recipe[entry[1]] = xm_recipe(table.unpack(entry, 1, 9))
end


--==========milled-resource
for _, entry in ipairs(xm_milled_resource_recipes) do
	data.raw.recipe[entry[1]] = xm_recipe(table.unpack(entry, 1, 9))
end


--==========plate
for i, entry in ipairs(xm_plate_recipes) do
	data.raw.recipe[entry[1]] = xm_recipe(table.unpack(entry, 1, 9))
end