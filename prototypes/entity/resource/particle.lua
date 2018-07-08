local function xm_create_resource_particle(name)
	out = xm_copy("particle", "copper-ore-particle", name .. "-particle")
	for i, element in ipairs(out.pictures) do
		out.pictures[i].filename = "__xander-mod__/graphics/entity/resource/particle/" .. name .. "/" .. (i) .. ".png"
		out.pictures[i].hr_version.filename = "__xander-mod__/graphics/entity/resource/particle/" .. name .. "/hr-" .. (i) .. ".png"
	end
	return out
end

--Make resource particles for new XM solid resources
for i, name in ipairs(xm_all_resources) do
	if xm_resources_xm_new[i] and xm_reources_solid[i] then
		data:extend({xm_create_resource_particle(name)})
	end
end


--Base Overrides

--Base "copper-ore-particle"
for i, element in ipairs(data.raw.particle["copper-ore-particle"].pictures) do
	data.raw.particle["copper-ore-particle"].pictures[i].filename = "__xander-mod__/graphics/entity/resource/particle/copper-ore/" .. (i) .. ".png"
	data.raw.particle["copper-ore-particle"].pictures[i].hr_version.filename = "__xander-mod__/graphics/entity/resource/particle/copper-ore/hr-" .. (i) .. ".png"
end

--Base "iron-ore-particle"
for i, element in ipairs(data.raw.particle["iron-ore-particle"].pictures) do
	data.raw.particle["iron-ore-particle"].pictures[i].filename = "__xander-mod__/graphics/entity/resource/particle/iron-ore/" .. (i) .. ".png"
	data.raw.particle["iron-ore-particle"].pictures[i].hr_version.filename = "__xander-mod__/graphics/entity/resource/particle/iron-ore/hr-" .. (i) .. ".png"
end

--Base "stone-particle"
for i, element in ipairs(data.raw.particle["stone-particle"].pictures) do
	data.raw.particle["stone-particle"].pictures[i].filename = "__xander-mod__/graphics/entity/resource/particle/stone/" .. (i) .. ".png"
	data.raw.particle["stone-particle"].pictures[i].hr_version.filename = "__xander-mod__/graphics/entity/resource/particle/stone/hr-" .. (i) .. ".png"
end