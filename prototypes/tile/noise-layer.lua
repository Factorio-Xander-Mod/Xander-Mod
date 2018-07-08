for i, name in ipairs(xm_all_resources) do
	if xm_resources_xm_new[i] then
		data:extend({{type = "noise-layer", name = name}})
	end
end