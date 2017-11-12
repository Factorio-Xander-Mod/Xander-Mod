for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes
	recipes["gravel-crushing"].enabled = technologies["ore-processor_1"].researched
	recipes["water-clarifying-a"].enabled = technologies["phenol-a"].researched
	recipes["brick-clay-graphite"].enabled = technologies["advanced-material-processing"].researched
end