--New XM Items
--Group 5, subgroup 9
for i, entry in ipairs(xm_assembly_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], nil, 5, 9, i - 1, entry[3])})
	end
end

--Base Overrides

--Engine unit - Renamed to Internal Combustion Engine Unit
data.raw.item["engine-unit"].subgroup = "assembly"
data.raw.item["engine-unit"].order = "04"
data.raw.item["engine-unit"].stack_size = 100

--Flying robot frame - renamed to Standard Flying Robot Frame
data.raw.item["flying-robot-frame"].subgroup = "assembly"
data.raw.item["flying-robot-frame"].order = "07"
data.raw.item["flying-robot-frame"].stack_size = 100