game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["propylene-ethylene"] and technologies["light-cracking"] then
		recipes["propylene-ethylene"].enabled = technologies["light-cracking"].researched
	end
	if recipes["forging-iron-b"] and technologies["advanced-material-processing"] then
		recipes["forging-iron-b"].enabled = technologies["advanced-material-processing"].researched
	end

end
