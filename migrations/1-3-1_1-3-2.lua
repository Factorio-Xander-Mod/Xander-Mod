for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes
	
	recipes["piston-cylinder"].enabled = technologies["plumbing-steel"].researched
	recipes["coil-1-b"].enabled = technologies["induction_2"].researched
	recipes["inserter-slow"].enabled = technologies["inserter-a"].researched
	recipes["inserter"].enabled = technologies["inserter-b"].researched
end