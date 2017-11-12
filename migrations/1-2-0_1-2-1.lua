for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes
  recipes["copper-plate-b"].enabled = technologies["advanced-material-processing"].researched
end