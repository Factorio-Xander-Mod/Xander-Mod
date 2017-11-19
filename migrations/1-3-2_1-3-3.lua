for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	recipes["graphite-grinding"].enabled = technologies["carbon-processing"].researched
end