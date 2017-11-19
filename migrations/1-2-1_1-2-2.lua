game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["etched-1-a"] and technologies["substrate_1"] then
		recipes["etched-1-a"].enabled = technologies["substrate_1"].researched
	end

	if recipes["tooling-1-a"] and technologies["machine-tool_1"] then
		recipes["tooling-1-a"].enabled = technologies["machine-tool_1"].researched
	end

end
