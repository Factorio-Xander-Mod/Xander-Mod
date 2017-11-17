game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["gravel-crushing"] and technologies["ore-processor_1"] then
		recipes["gravel-crushing"].enabled = technologies["ore-processor_1"].researched
  end

	if recipes["water-clarifying-a"] and technologies["phenol-a"] then
		recipes["water-clarifying-a"].enabled = technologies["phenol-a"].researched
	end

	if recipes["brick-clay-graphite"] and technologies["advanced-material-processing"] then
		recipes["brick-clay-graphite"].enabled = technologies["advanced-material-processing"].researched
	end
	
end
