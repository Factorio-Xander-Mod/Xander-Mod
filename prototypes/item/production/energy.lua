--Base Overrides

--Base "boiler"
data.raw.item["boiler"].order = "00"
--Base "heat-exchanger"
data.raw.item["heat-exchanger"].order = "02"
--Base "steam-engine"
data.raw.item["steam-engine"].order = "04"
--Base "steam-turbine"
data.raw.item["steam-turbine"].order = "05"
--Base "heat-pipe"
data.raw.item["heat-pipe"].order = "06"
--Base "nuclear-reactor"
data.raw.item["nuclear-reactor"].order = "07"
--Base "solar-panel"
data.raw.item["solar-panel"].order = "08"
--Base "accumulator"
data.raw.item["accumulator"].order = "11"
--Base "small-lamp" - renamed to XM "Carbon Arc Lamp"
data.raw.item["small-lamp"].subgroup = "energy"
data.raw.item["small-lamp"].order = "13"

for i, entry in ipairs(xm_energy_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], {--[[ "goes-to-quickbar" ]]}, 6, 2, i - 1, entry[3])})
	end
end