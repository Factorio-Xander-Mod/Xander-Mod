game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["steel-charge-a"] and technologies["steel-processing"] then
		recipes["steel-charge-a"].enabled = technologies["steel-processing"].researched
	end

	if recipes["science-pack-1"] and technologies["electricity"] then
		recipes["science-pack-1"].enabled = technologies["electricity"].researched
	end

	if recipes["science-pack-1"] and technologies["inserter-a"] then
		recipes["science-pack-1"].enabled = technologies["inserter-a"].researched
	end
  
end
