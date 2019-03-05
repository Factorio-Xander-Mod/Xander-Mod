--Base Overrides

--Offshore Pump
data.raw.item["offshore-pump"].order = "0"
--Burner Mining Drill
data.raw.item["burner-mining-drill"].order = "1"
--Mining Drill
data.raw.item["electric-mining-drill"].order = "2"
--Pumpjack
data.raw.item["pumpjack"].order = "4"

for i, entry in ipairs(xm_miner_items) do
	if entry[2] then
		data:extend({xm_item(entry[1], {--[[ "goes-to-quickbar" ]]}, 6, 3, i - 1, entry[3])})
	end
end