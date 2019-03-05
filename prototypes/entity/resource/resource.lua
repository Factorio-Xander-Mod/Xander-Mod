local function xm_create_new_resource(name, cat, order, rem_start, map_color)
	--Create the new resource entry by copying a base entry
	out = xm_copy("resource", "copper-ore", name)
	if cat == "advanced-fluid" then out = xm_copy("resource", "crude-oil", name) end
	--Set the icon
	if cat == "advanced-fluid" then out.icon = "__xander-mod__/graphics/fluid/resource/" .. name .. ".png"
	else out.icon = "__xander-mod__/graphics/item/material/raw-resource/" .. name .. ".png" end
	--Set the category
	out.category = cat
	--Set the order string
	out.order = order
	--Determine and set the "minable" parameters
	hard = 0.5
	if cat == "hard-solid" then hard = 1.5
		elseif cat == "tough-solid" then hard = 2.5
		elseif cat == "advanced-fluid" then hard = 2
	end
	out.minable.hardness = hard
	if cat ~= "advanced-fluid" then
		out.minable.mining_particle = name .. "-particle"
		out.minable.result = name
	else
		out.minable.results[1].name = name
	end
	--Set the autoplace parameters
	out.autoplace.order = order
	out.autoplace.control = name
	cover = 0.002
	if cat == "advanced-fluid" then cover = 0.001 end
	out.autoplace.coverage = cover
	if not out.autoplace.peaks then out.autoplace.peaks = {{},{}} end
	out.autoplace.peaks[1].noise_layer = name
	if rem_start then
		out.autoplace.starting_area_size = nil
		out.autoplace.starting_area_amount = nil
		out.autoplace.peaks[2] = 
		{
			influence = -1.0,
			starting_area_weight_optimal = 1,
			starting_area_weight_range = 0,
			starting_area_weight_max_range = 2
        }
	end
	--Set the stage counts
	if cat ~= "advanced-fluid" then out.stage_counts = {10000, 5000, 2000, 1000, 500, 200, 50, 10} end
	--Set the stage sheets
	out.stages.sheet.filename = "__xander-mod-graphics-1__/graphics/entity/resource/" .. name .. ".png"
	if cat ~= "advanced-fluid" then out.stages.sheet.hr_version.filename = "__xander-mod-graphics-1__/graphics/entity/resource/" .. name .. "-hr.png" end
	--Set the map color
	out.map_color = map_color
	return out
end

--Add new XM resources
for i, name in ipairs(xm_all_resources) do
	if xm_resources_xm_new[i] then
		data:extend({xm_create_new_resource(name, xm_resource_categories[i], i - 1 .. "", xm_rem_starts[i], xm_map_colors[i])})
	end
end


--Override some base resource parameters

--Base "coal"
data.raw.resource["coal"].category = "basic-solid"
data.raw.resource["coal"].order = "00"
data.raw.resource["coal"].minable.hardness = 0.5
data.raw.resource["coal"].autoplace.richness_multiplier = 3000
data.raw.resource["coal"].autoplace.richness_multiplier_distance_bonus = 60
data.raw.resource["coal"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}

--Base "copper-ore"
data.raw.resource["copper-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/copper-ore.png"
data.raw.resource["copper-ore"].order = "01"
data.raw.resource["copper-ore"].minable.hardness = 0.5
data.raw.resource["copper-ore"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}
data.raw.resource["copper-ore"].stages.sheet.filename = "__xander-mod-graphics-1__/graphics/entity/resource/copper-ore.png"
data.raw.resource["copper-ore"].stages.sheet.hr_version.filename = "__xander-mod-graphics-1__/graphics/entity/resource/copper-ore-hr.png"
data.raw.resource["copper-ore"].map_color = {r = 0.35, g = 0.48, b = 0.54}

--Base "crude-oil"
data.raw.resource["crude-oil"].order = "02"

--Base "iron-ore"
data.raw.resource["iron-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/iron-ore.png"
data.raw.resource["iron-ore"].category = "basic-solid"
data.raw.resource["iron-ore"].order = "05"
data.raw.resource["iron-ore"].minable.hardness = 0.5
data.raw.resource["iron-ore"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}
data.raw.resource["iron-ore"].stages.sheet.filename = "__xander-mod-graphics-1__/graphics/entity/resource/iron-ore.png"
data.raw.resource["iron-ore"].stages.sheet.hr_version.filename = "__xander-mod-graphics-1__/graphics/entity/resource/iron-ore-hr.png"
data.raw.resource["iron-ore"].map_color = {r = 0.52, g = 0.24, b = 0.2}

--Base "stone"
data.raw.resource["stone"].order = "13"
data.raw.resource["stone"].minable.hardness = 0.5
data.raw.resource["stone"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}
data.raw.resource["stone"].stages.sheet.filename = "__xander-mod-graphics-1__/graphics/entity/resource/stone.png"
data.raw.resource["stone"].stages.sheet.hr_version.filename = "__xander-mod-graphics-1__/graphics/entity/resource/stone-hr.png"

--Base "uranium-ore"
data.raw.resource["uranium-ore"].category = "tough-solid"
data.raw.resource["uranium-ore"].order = "14"
data.raw.resource["uranium-ore"].minable.hardness = 2.5
data.raw.resource["uranium-ore"].minable.fluid_amount = 20
--data.raw.resource["uranium-ore"].minable.required_fluid = "blasting-fluid"
data.raw.resource["uranium-ore"].stage_counts = {10000, 5000, 2000, 1000, 500, 200, 100, 10}