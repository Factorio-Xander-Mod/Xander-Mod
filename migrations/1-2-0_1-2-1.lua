game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["copper-plate-b"] and technologies["advanced-material-processing"] then
		recipes["copper-plate-b"].enabled = technologies["advanced-material-processing"].researched
	end

end
