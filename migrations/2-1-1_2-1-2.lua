for _, f in pairs(game.forces) do
  if f.technologies["forging-iron"] and f.technologies["forging-iron"].researched then
    if f.recipes["forging-iron-c"]  then
      f.recipes["forging-iron-c"].enabled = true
    end
    if f.recipes["iron-plate-c"]  then
      f.recipes["iron-plate-c"].enabled = true
    end
  end
end