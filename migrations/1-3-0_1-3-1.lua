for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes
	
	recipes["gear-2"].enabled = technologies["lead-brass"].researched
	recipes["components-1-a"].enabled = technologies["electronics"].researched
	recipes["components-2-a"].enabled = technologies["advanced-electronics"].researched
	recipes["components-2-b"].enabled = technologies["advanced-electronics-2"].researched
	recipes["components-3"].enabled = technologies["advanced-electronics-2"].researched
	recipes["solder-flux-a"].enabled = technologies["wire_1"].researched
	recipes["wire-solder-1"].enabled = technologies["wire_1"].researched
	recipes["wire-tungsten"].enabled = technologies["wire_2"].researched
	recipes["metallized-1"].enabled = technologies["substrate_1"].researched
	recipes["metallized-2"].enabled = technologies["substrate_2"].researched
	recipes["sheet-tinned"].enabled = technologies["substrate_2"].researched
	recipes["metallized-2"].enabled = technologies["substrate_2"].researched
	recipes["solder-2-plate"].enabled = technologies["soldering_3"].researched
	recipes["steam-engine"].enabled = technologies["electricity"].researched
	recipes["brick-clay-graphite-b"].enabled = technologies["advanced-material-processing-2"].researched
	recipes["fiber-glass"].enabled = technologies["advanced-material-processing-2"].researched
	recipes["assembling-machine-2"].enabled = technologies["automation-2"].researched
	recipes["production-science-pack"].enabled = technologies["automation-2"].researched
	recipes["surfactant-a"].enabled = technologies["flotation_1"].researched
end