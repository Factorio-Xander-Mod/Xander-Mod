--==========terrain
for _, entry in ipairs(xm_terrain_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========raw-resource
--nil

--==========milled-resource
for _, entry in ipairs(xm_milled_resource_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========concentrate
for _, entry in ipairs(xm_concentrate_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========oxide


--==========sponge


--==========plate
for _, entry in ipairs(xm_plate_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========ingot
for _, entry in ipairs(xm_ingot_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========billet


--==========nonmetal


--==========ceramic


--==========salt


--==========organic


--==========polymer


--==========energetic


--==========waste
