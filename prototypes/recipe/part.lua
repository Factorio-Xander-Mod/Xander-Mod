--==========mechanical
for _, entry in ipairs(xm_mechanical_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========electric-1


--==========electric-2


--==========electric-3


--==========data


--==========board


--==========optic


--==========assembly
for _, entry in ipairs(xm_assembly_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========intermediate-product


--==========science-pack


--==========fill-barrel


--==========empty-barrel
