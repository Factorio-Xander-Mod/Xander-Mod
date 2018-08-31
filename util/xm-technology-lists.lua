--Establish lists of all technologies
--For each entry: first field is name, second field is XM added (true = added by XM, false = from base), third field is recipes to unlock, fourth field is special effects (bonuses, etc.), fifth field is prerequisite technologies, 
--sixth field is unit count, seventh field is ingredients (list of science packs requied for each unit), eighth field is time per unit

--Short form: name, XM, recipes, specials, prerequisites, count, ingredients, time

--Template:
--[[
local xm_<subgroup>_technologies_names = {}
local xm_<subgroup>_technologies_news = {}
local xm_<subgroup>_technologies_recipes = {}
local xm_<subgroup>_technologies_prerequisites = {}
local xm_<subgroup>_technologies_counts = {}
local xm_<subgroup>_technologies_ingredients = {}
local xm_<subgroup>_technologies_times = {}
xm_<subgroup>_technologies = {}
for i, name in ipairs(xm_<subgroup>_technologies_names) do
	table.insert(xm_<subgroup>_technologies, {name, xm_<subgroup>_technologies_news[i], xm_<subgroup>_technologies_recipes[i], nil, xm_<subgroup>_technologies_prerequisites[i], xm_<subgroup>_technologies_counts[i], 
		xm_<subgroup>_technologies_ingredients[i], xm_<subgroup>_technologies_times[i]})
end
]]--


--MATERIALS
--==========
--Nonmetal
local xm_nonmetal_technologies_names = {"coke-a", "steel-processing", "graphite-washing"}
local xm_nonmetal_technologies_news = {true, false, true}
local xm_nonmetal_technologies_recipes = {{"coke-a"}, {"steel-plate", "forging-steel-a", "blank-3-a"}, {"smelting-graphite", "graphite-block-a"}}
--local xm_nonmetal_technologies_specials = {nil, nil, }
local xm_nonmetal_technologies_prerequisites = {nil, {"coke-a"}, {"ore-processor_0"}}
local xm_nonmetal_technologies_counts = {5, 20, 10}
local xm_nonmetal_technologies_ingredients = {{{"science-pack-0", 1}}, {{"science-pack-0", 1}}, {{"science-pack-0", 1}}}
local xm_nonmetal_technologies_times = {10, 10, 10}
xm_nonmetal_technologies = {}
--Load all of the single-parameter lists into one big list of technoloogies, where each entry has the parameters for one complete technology
for i, name in ipairs(xm_nonmetal_technologies_names) do
	table.insert(xm_nonmetal_technologies, {name, xm_nonmetal_technologies_news[i], xm_nonmetal_technologies_recipes[i], nil, xm_nonmetal_technologies_prerequisites[i], xm_nonmetal_technologies_counts[i], 
		xm_nonmetal_technologies_ingredients[i], xm_nonmetal_technologies_times[i]})
end
--


--PARTS
--==========
--Mechanical
local xm_mechanical_technologies_names = {"parts_1", 
"parts_2", 
"parts_3", 
"tooling_1", 
"tooling_2", 
"tooling_3", 
"engine", 
"machines_1", 
"machines_2", 
"machines_3", 
"flying", 
"flying_2"}
local xm_mechanical_technologies_news = {true, 
true, 
true, 
true, 
true, 
true, 
false, 
true, 
true, 
true, 
false, 
true, 
}
local xm_mechanical_technologies_recipes = {{"bearing-1", "gear-3", "rod-2", "shaft-1", "mechanism-1", "wheel-1", "steel-chest"}, 
{"bearing-2", "gear-4", "rod-3", "shaft-2", "mechanism-2", "wheel-2"}, 
{"bearing-3", "rod-4", "shaft-3", "mechanism-3"}, 
{"tooling-1-b"}, 
{"tooling-2", "axe-5"}, 
{"tooling-3", "tooling-1-c", "axe-6"}, 
{"engine-unit"}, 
nil, 
nil, 
nil, 
nil, 
nil}
local xm_mechanical_technologies_prerequisites = {{"machine-tool_0", "graphite-washing"}, 
{"parts_1", "forging-alloy-a", "oil-processing", "lead-brass"}, 
{"parts_2", "forging-titanium", "silicon-nitride", "plastics"}, 
{"steel-processing", "acheson-process", "phenolic-resin"}, 
{"tooling_1", "forging-alloy-a", "tungsten-cermet"}, 
{"tooling_2", "optics_3", "epoxy-resin"}, 
{"parts_1", "plumbing-steel", "rubber-a"}, 
{"electric-engine"}, 
{"machines_1", "motor_2", "tooling_2", "forging-stainless"}, 
{"machines_2", "motor_3", "tooling_3", "forging-superalloy"}, 
{"parts_2", "battery_2", "forging-aluminum"}, 
{"flying", "battery_3", "fiber-carbon", "machines_3"}}
local xm_mechanical_technologies_counts = {20, 
200, 
400, 
20, 
150, 
300, 
100, 
15, 
150, 
400, 
200, 
500}
local xm_mechanical_technologies_ingredients = {{{"science-pack-1", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"high-tech-science-pack", 1}}}
local xm_mechanical_technologies_times = {15, 
30, 
60, 
30, 
45, 
60, 
15, 
10, 
30, 
60, 
30, 
45}
xm_mechanical_technologies = {}
for i, name in ipairs(xm_mechanical_technologies_names) do
	table.insert(xm_mechanical_technologies, {name, xm_mechanical_technologies_news[i], xm_mechanical_technologies_recipes[i], nil, xm_mechanical_technologies_prerequisites[i], xm_mechanical_technologies_counts[i], 
		xm_mechanical_technologies_ingredients[i], xm_mechanical_technologies_times[i]})
end
--Electromagnetic
local xm_electromagnetic_technologies_names = {"electricity", 
"insulator_2", 
"insulator_3", 
"induction_1", 
"induction_2", 
"induction_3", 
"electric-engine", 
"motor_2", 
"motor_3", 
"battery", 
"battery_2", 
"battery_3", 
"optics", 
"optics_2", 
"optics_3", 
"laser", 
"laser_2", 
"laser_3"}
local xm_electromagnetic_technologies_news = {true, 
true, 
true, 
true, 
true, 
true, 
false, 
true, 
true, 
false, 
true, 
true, 
false, 
true, 
true, 
false, 
true, 
true}
local xm_electromagnetic_technologies_recipes = {{"steam-engine", "insulator-1-a", "small-electric-pole"}, 
{"insulator-1-b", "insulator-2-a"}, 
{"insulator-2-b"}, 
{"coil-1-a", "electric-engine-unit", "science-pack-1"}, 
{"coil-1-b", "sheet-steel", "coil-2"}, 
{"sheet-mu", "coil-3"}, 
{"motor-1-b", "transformer-1"}, 
{"motor-2", "transformer-2"}, 
{"motor-3", "transformer-3"}, 
{"battery", "battery-1"}, 
{"cell-2", "battery-2"}, 
{"cell-3", "battery-3"}, 
{"crystal-quartz", "boule-ruby", "crystal-ruby"}, 
{"boule-corundum", "crystal-corundum"}, 
{"boule-diamond", "crystal-diamond", "boule-yag", "crystal-yag"}, 
{"lasing-1"}, 
{"lasing-2"}, 
{"lasing-3"}}
local xm_electromagnetic_technologies_prerequisites = {{"induction_1"}, 
{"electricity", "glass-b"}, 
{"insulator_2", "silicon-nitride"}, 
{"reactor_0", "graphite-washing"}, 
{"induction_1", "phenolic-resin"}, 
{"induction_2", "cobalt-refining", "re-refining", "epoxy-resin"}, 
{"induction_1", "parts_1", "electronics"}, 
{"induction_2", "parts_2", "advanced-electronics"}, 
{"induction_3", "parts_3", "insulator_2", "advanced-electronics-2"}, 
{"plastics", "lead-refining", "sulfuric-acid-a", "electronics"}, 
{"battery", "silver-refining", "electrolysis-salt-water", "zinc-refining"}, 
{"battery_2", "activated-carbon", "organics_3", "advanced-lithium"}, 
{"glass-b", "chromium-refining", "aluminum-refining", "acheson-process"}, 
{"optics"}, 
{"optics_2", "silicon-nitride", "re-refining"}, 
{"optics", "machines_2", "lamp_1"}, 
{"laser", "optics_2", "machines_3", "lamp_2"}, 
{"laser_2", "optics_3"}}
local xm_electromagnetic_technologies_counts = {10, 
150, 
450, 
10, 
200, 
350, 
100, 
200, 
350, 
150, 
300, 
500, 
200, 
450, 
700, 
250, 
500, 
900}
local xm_electromagnetic_technologies_ingredients = {{{"science-pack-0", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}, 
{{"science-pack-0", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"high-tech-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}}
local xm_electromagnetic_technologies_times = {20, 
30, 
60, 
15, 
30, 
45, 
50, 
30, 
45, 
30, 
60, 
60, 
30, 
30, 
60, 
45, 
60, 
60}
xm_electromagnetic_technologies = {}
for i, name in ipairs(xm_electromagnetic_technologies_names) do
	table.insert(xm_electromagnetic_technologies, {name, xm_electromagnetic_technologies_news[i], xm_electromagnetic_technologies_recipes[i], nil, xm_electromagnetic_technologies_prerequisites[i], xm_electromagnetic_technologies_counts[i], 
		xm_electromagnetic_technologies_ingredients[i], xm_electromagnetic_technologies_times[i]})
end
--Data
local xm_data_technologies_names = {"wire_1", 
"wire_2", 
"substrate_1", 
"substrate_2", 
"substrate_3", 
"soldering_1", 
"soldering_2", 
"soldering_3", 
"semiconductors_1", 
"semiconductors_2", 
"electronics", 
"advanced-electronics", 
"advanced-electronics-2"}
local xm_data_technologies_news = {true, 
true, 
true, 
true, 
true, 
true, 
true, 
true, 
true, 
true, 
false, 
false, 
false}
local xm_data_technologies_recipes = {{"wire-copper", "wire-tinned", "solder-flux-a", "wire-solder-1"}, 
{"wire-tungsten", "wire-gold", "sheet-gilded"}, 
{"metallized-1"}, 
{"sheet-tinned", "metallized-2", "etched-2-a", "circuit-1-b"}, 
{"metallized-3", "etched-3"}, 
{"solder-1-plate-a"}, 
{"solder-1-plate-b", "solder-flux-b"}, 
{"solder-2-plate", "wire-solder-2"}, 
{"wafer-1", "wafer-2", "components-2-b"}, 
{"wafer-3"}, 
{"components-1-a", "electronic-circuit", "control-1"}, 
{"components-2-a", "advanced-circuit", "control-2", "science-pack-3"}, 
{"components-3", "processing-unit", "control-3", "high-tech-science-pack"}}
local xm_data_technologies_prerequisites = {{"soldering_1"}, 
{"wire_1", "gold-refining", "silver-refining", "machine-tool_1"}, 
{"machine-tool_0", "reactor_0"}, 
{"substrate_1", "wire_1", "phenolic-resin", "nitric-acid-a"}, 
{"substrate_2", "wire_2", "epoxy-resin", "glass-b"}, 
{"substrate_1"}, 
{"soldering_1", "advanced-material-processing-2", "haber-process"}, 
{"soldering_2"}, 
{"silicon-boule-a", "boron-processing"}, 
{"semiconductors_1", "laser", "silicon-nitride", "organics_2"}, 
{"soldering_1"}, 
{"electronics", "substrate_2", "tungsten-refining"}, 
{"advanced-electronics", "substrate_3", "semiconductors_2", "soldering_2"}}
local xm_data_technologies_counts = {30, 
150, 
20, 
200, 
500, 
10, 
150, 
300, 
200, 
500, 
50, 
200, 
400}
local xm_data_technologies_ingredients = {{{"science-pack-1", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}, 
{{"science-pack-1", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}}
local xm_data_technologies_times = {15, 
30, 
15, 
30, 
60, 
10, 
30, 
30, 
30, 
60, 
20, 
30, 
45}
xm_data_technologies = {}
for i, name in ipairs(xm_data_technologies_names) do
	table.insert(xm_data_technologies, {name, xm_data_technologies_news[i], xm_data_technologies_recipes[i], nil, xm_data_technologies_prerequisites[i], xm_data_technologies_counts[i], 
		xm_data_technologies_ingredients[i], xm_data_technologies_times[i]})
end
--Rocket
local xm_rocket_technologies_names = {"rocket-fuel", 
"rocket-structure", 
"rocket-control", 
"rocket-engine", 
"rocket-mechanism"}
local xm_rocket_technologies_news = {true, 
true, 
true, 
true, 
true}
local xm_rocket_technologies_recipes = {{"rocket-fuel"}, 
{"low-density-structure"}, 
{"rocket-control-unit"}, 
{"rocket-thermal"}, 
{"rocket-mechanism"}}
local xm_rocket_technologies_prerequisites = {{"advanced-oil-processing", "haber-process", "electrolysis-water-b", "advanced-lithium"}, 
{"machines_3", "epoxy-resin", "fiber-carbon", "forging-aluminum"}, 
{"machines_3", "speed-module", "effectivity-module", "laser_3"}, 
{"machines_3", "silicon-nitride", "brick-zirconia", "forging-zirconium"}, 
{"machines_3", "pump_3", "explosives", "battery_3"}}
local xm_rocket_technologies_counts = {1000, 
1000, 
1000, 
1000, 
1000}
local xm_rocket_technologies_ingredients = {{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}, {"high-tech-science-pack", 1}}, 
{{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"production-science-pack", 1}}}
local xm_rocket_technologies_times = {45, 
45, 
45, 
45, 
45}
xm_rocket_technologies = {}
for i, name in ipairs(xm_rocket_technologies_names) do
	table.insert(xm_rocket_technologies, {name, xm_rocket_technologies_news[i], xm_rocket_technologies_recipes[i], nil, xm_rocket_technologies_prerequisites[i], xm_rocket_technologies_counts[i], 
		xm_rocket_technologies_ingredients[i], xm_rocket_technologies_times[i]})
end
--


--PRODUCTION
--==========

--

--LOGISTICS
--==========

--


--COMBAT
--==========

--