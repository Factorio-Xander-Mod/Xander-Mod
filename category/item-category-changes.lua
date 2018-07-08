--Item Group Changess

--==========
--XM "material" palceholder
--"fluids"
data.raw["item-group"]["fluids"].order = "03"
data.raw["item-group"]["fluids"].inventory_order = "03"
--"intermediate-products"
data.raw["item-group"]["intermediate-products"].order = "04"
data.raw["item-group"]["intermediate-products"].inventory_order = "04"

--"production"
data.raw["item-group"]["production"].order = "06"
data.raw["item-group"]["production"].inventory_order = "06"

--"logistics"
data.raw["item-group"]["logistics"].order = "05"
data.raw["item-group"]["logistics"].inventory_order = "05"

--"combat"
data.raw["item-group"]["combat"].order = "07"
data.raw["item-group"]["combat"].inventory_order = "07"
--==========





--Item Subgroup Changes

--==========  From base "fluids" group  ==========
--fluid
data.raw["item-subgroup"]["fluid"].order = "03-04"


--==========  From base "intermediate-products" group  ==========
--Subgroups being moved to "material" group
for i, entry in ipairs(xm_material_subgroups) do
	if not entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end
		data.raw["item-subgroup"][entry[1]].group = "material"
		data.raw["item-subgroup"][entry[1]].order = "02-" .. order
	end
end

--Subgroups staying in "intermediate-products"
for i, entry in ipairs(xm_intermediate_products_subgroups) do
	if not entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end
		data.raw["item-subgroup"][entry[1]].order = "04-" .. order
	end
end


--==========  From base "production" group  ==========
for i, entry in ipairs(xm_production_subgroups) do
	if not entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end
		data.raw["item-subgroup"][entry[1]].order = "05-" .. order
	end
end


--==========  From base "logistics" group  ==========
for i, entry in ipairs(xm_logistics_subgroups) do
	if not entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end
		data.raw["item-subgroup"][entry[1]].order = "06-" .. order
	end
end


--==========  From base "combat" group  ==========
for i, entry in ipairs(xm_combat_subgroups) do
	if not entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end
		data.raw["item-subgroup"][entry[1]].order = "07-" .. order
	end
end
--==========