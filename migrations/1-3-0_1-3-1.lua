game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["gear-2"] and technologies["lead-brass"] then
		recipes["gear-2"].enabled = technologies["lead-brass"].researched
	end

	if recipes["components-1-a"] and technologies["electronics"] then
		recipes["components-1-a"].enabled = technologies["electronics"].researched
	end

	if recipes["components-2-a"] and technologies["advanced-electronics"] then
		recipes["components-2-a"].enabled = technologies["advanced-electronics"].researched
	end

	if recipes["components-2-b"] and technologies["advanced-electronics-2"] then
		recipes["components-2-b"].enabled = technologies["advanced-electronics-2"].researched
	end

	if recipes["components-3"] and technologies["advanced-electronics-2"] then
		recipes["components-3"].enabled = technologies["advanced-electronics-2"].researched
	end

	if recipes["solder-flux-a"] and technologies["wire_1"] then
		recipes["solder-flux-a"].enabled = technologies["wire_1"].researched
	end

	if recipes["wire-solder-1"] and technologies["wire_1"] then
		recipes["wire-solder-1"].enabled = technologies["wire_1"].researched
	end

	if recipes["wire-tungsten"] and technologies["wire_2"] then
		recipes["wire-tungsten"].enabled = technologies["wire_2"].researched
	end

	if recipes["metallized-1"] and technologies["substrate_1"] then
		recipes["metallized-1"].enabled = technologies["substrate_1"].researched
	end

	if recipes["metallized-2"] and technologies["substrate_2"] then
		recipes["metallized-2"].enabled = technologies["substrate_2"].researched
	end

	if recipes["sheet-tinned"] and technologies["substrate_2"] then
		recipes["sheet-tinned"].enabled = technologies["substrate_2"].researched
	end

	if recipes["metallized-2"] and technologies["substrate_2"] then
		recipes["metallized-2"].enabled = technologies["substrate_2"].researched
	end

	if recipes["solder-2-plate"] and technologies["soldering_3"] then
		recipes["solder-2-plate"].enabled = technologies["soldering_3"].researched
	end

	if recipes["steam-engine"] and technologies["electricity"] then
		recipes["steam-engine"].enabled = technologies["electricity"].researched
	end

	if recipes["brick-clay-graphite-b"] and technologies["advanced-material-processing-2"] then
		recipes["brick-clay-graphite-b"].enabled = technologies["advanced-material-processing-2"].researched
	end

	if recipes["fiber-glass"] and technologies["advanced-material-processing-2"] then
		recipes["fiber-glass"].enabled = technologies["advanced-material-processing-2"].researched
	end

	if recipes["assembling-machine-2"] and technologies["automation-2"] then
		recipes["assembling-machine-2"].enabled = technologies["automation-2"].researched
	end

	if recipes["production-science-pack"] and technologies["automation-2"] then
		recipes["production-science-pack"].enabled = technologies["automation-2"].researched
	end

	if recipes["surfactant-a"] and technologies["flotation_1"] then
		recipes["surfactant-a"].enabled = technologies["flotation_1"].researched
	end

end
