game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["graphite-powder"] and technologies["carbon-processing"] then
		recipes["graphite-powder"].enabled = technologies["carbon-processing"].researched
	end
	if recipes["gray-water-clarifying"] and technologies["water-clarifying"] then
		recipes["gray-water-clarifying"].enabled = technologies["water-clarifying"].researched
	end
	if recipes["waste-slurry-clarifying"] and technologies["water-clarifying"] then
		recipes["waste-slurry-clarifying"].enabled = technologies["water-clarifying"].researched
	end

end
