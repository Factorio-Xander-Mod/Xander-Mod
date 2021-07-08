for _, f in pairs(game.forces) do
  if f.technologies["automation"] and f.technologies["automation"].researched and f.recipes["components-1-b"] then
    f.recipes["components-1-b"].enabled = true
  end
end