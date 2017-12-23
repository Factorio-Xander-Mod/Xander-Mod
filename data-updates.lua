--Modify the recipe categories of some base-game entities
--Chemical Plant (XM Burner Chemical Reactor)
table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories, "basic-chemistry")
table.remove(data.raw["assembling-machine"]["chemical-plant"].crafting_categories, 1)
--Assembler 1
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "basic-crafting")
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "crafting-with-fluid")
--Assembler 2 - no changes needed
--Assembler 3 - no changes needed
--Player
table.insert(data.raw.player["player"].crafting_categories, "basic-sluice")
table.insert(data.raw.player["player"].crafting_categories, "basic-machine")
table.insert(data.raw.player["player"].crafting_categories, "basic-crafting")
--Furnaces
table.insert(data.raw.furnace["stone-furnace"].crafting_categories, "empty")
table.remove(data.raw.furnace["stone-furnace"].crafting_categories, 1)
table.insert(data.raw.furnace["steel-furnace"].crafting_categories, "empty")
table.remove(data.raw.furnace["steel-furnace"].crafting_categories, 1)
table.insert(data.raw.furnace["electric-furnace"].crafting_categories, "empty")
table.remove(data.raw.furnace["electric-furnace"].crafting_categories, 1)