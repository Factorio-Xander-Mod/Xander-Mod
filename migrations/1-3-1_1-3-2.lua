game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["piston-cylinder"] and technologies["plumbing-steel"] then
		recipes["piston-cylinder"].enabled = technologies["plumbing-steel"].researched
	end

	if recipes["coil-1-b"] and technologies["induction_2"] then
		recipes["coil-1-b"].enabled = technologies["induction_2"].researched
	end

	if recipes["inserter-slow"] and technologies["inserter-a"] then
		recipes["inserter-slow"].enabled = technologies["inserter-a"].researched
	end

	if recipes["inserter"] and technologies["inserter-b"] then
		recipes["inserter"].enabled = technologies["inserter-b"].researched
	end

end
