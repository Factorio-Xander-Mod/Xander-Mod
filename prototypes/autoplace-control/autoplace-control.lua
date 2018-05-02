--Create autoplace controls for all new XM resources
for i, name in ipairs(xm_resources) do
	data:extend({{type = "autoplace-control", name = name, richness = true, order = xm_resource_orders[i], category = "resource"}})
end


--Base Overrides

--coal
data.raw["autoplace-control"]["coal"].order = "00"
--copper-ore
data.raw["autoplace-control"]["copper-ore"].order = "01"
--crude-oil
data.raw["autoplace-control"]["crude-oil"].order = "02"
--iron-ore
data.raw["autoplace-control"]["iron-ore"].order = "05"
--uranium-ore
data.raw["autoplace-control"]["uranium-ore"].order = "13"
--stone
data.raw["autoplace-control"]["stone"].order = "14"