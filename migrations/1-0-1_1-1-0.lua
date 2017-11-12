for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes
  recipes["steel-charge-a"].enabled = technologies["steel-processing"].researched
  recipes["science-pack-1"].enabled = technologies["electricity"].researched
  recipes["science-pack-1"].enabled = technologies["inserter-a"].researched
end