
--Player Entity Change:
for _, category in ipairs{"basic-sluice", "basic-machine", "basic-crafting"} do
  table.insert(data.raw.player["player"].crafting_categories, category)
end

--Fish Drop Rate Change:
data.raw.fish["fish"].minable = {mining_time = 1, result = "raw-fish", count = 2}