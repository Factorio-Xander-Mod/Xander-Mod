--Create new XM subgroups, in blocks by group

--Item subgroups of group "material"
for i, entry in ipairs(xm_material_subgroups) do
	if entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end --Tack a zero in font of the order if it's less than 10
		data:extend({
		{
			type = "item-subgroup",
			name = entry[1],
			group = "material",
			order = "02-" .. order
		}
		})
	end
end

--Item subgroups of group "fluids"
for i, entry in ipairs(xm_fluids_subgroups) do
	if entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end --Tack a zero in font of the order if it's less than 10
		data:extend({
		{
			type = "item-subgroup",
			name = entry[1],
			group = "fluids",
			order = "03-" .. order
		}
		})
	end
end

--Item subgroups of group "intermediate-products"
for i, entry in ipairs(xm_intermediate_products_subgroups) do
	if entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end --Tack a zero in font of the order if it's less than 10
		data:extend({
		{
			type = "item-subgroup",
			name = entry[1],
			group = "intermediate-products",
			order = "04-" .. order
		}
		})
	end
end

--Item subgroups of group "logistics"
for i, entry in ipairs(xm_logistics_subgroups) do
	if entry[2] then
		local order = (i - 1) .. ""
		if (i - 1) < 10 then order = "0" .. order end --Tack a zero in font of the order if it's less than 10
		data:extend({
		{
			type = "item-subgroup",
			name = entry[1],
			group = "logistics",
			order = "06-" .. order
		}
		})
	end
end

--Create new groups and subgroups, but only ones that were too few (in a block) to justify a fro loop above
data:extend(
{

--Groups
--==========
--Bulk materials
{
	type = "item-group",
	name = "material",
	order = "02",
	inventory_order = "02",
	icon = "__xander-mod__/graphics/category/material.png",
	icon_size = 64
},
--==========


--Subgroups
--==========  Of "production"  ==========

--Chemical machines
{
	type = "item-subgroup",
	name = "chemical-machine",
	group = "production",
	order = "05-04"
},


--==========  Of "combat"  ==========
--Combat parts
{
	type = "item-subgroup",
	name = "combat-part",
	group = "combat",
	order = "07-00"
},
})