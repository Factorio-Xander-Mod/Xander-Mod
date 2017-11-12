for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes
  recipes["etched-1-a"].enabled = technologies["substrate_1"].researched
  recipes["tooling-1-a"].enabled = technologies["machine-tool_1"].researched
end