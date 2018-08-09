--==========tool
for _, entry in ipairs(xm_tool_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========energy


--==========miner


--==========furnace
for _, entry in ipairs(xm_furnace_recipes) do
	xm_add_recipe(table.unpack(entry, 1, 9))
end

--==========chemical


--==========production


--==========module