game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["steel-axe"] and technologies["steel-processing"] then
		recipes["steel-axe"].enabled = technologies["steel-processing"].researched
	end
	if recipes["steel-chest"] and technologies["parts_1"] then
		recipes["steel-chest"].enabled = technologies["parts_1"].researched
	end

end
