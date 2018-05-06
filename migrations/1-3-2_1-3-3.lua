for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	recipes["circuit-1-b"].enabled = technologies["substrate_2"].researched
	recipes["etched-2-b"].enabled = technologies["substrate_3"].researched
end