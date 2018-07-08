--Base Overrides

--Base "chemical-plant" - renamed to XM "Basic Chemical Reactor"
data.raw.item["chemical-plant"].subgroup = "chemical-machine"
data.raw.item["chemical-plant"].order = "0"
--Centrifuge
data.raw.item["centrifuge"].subgroup = "chemical-machine"
data.raw.item["centrifuge"].order = "4"
 --Base "oil-refinery" - renamed to XM "Distillation Column"
data.raw.item["oil-refinery"].subgroup = "chemical-machine"
data.raw.item["oil-refinery"].order = "5"

for i, entry in ipairs(xm_chemical_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], {"goes-to-quickbar"}, 6, 5, i - 1, entry[3])})
	end
end