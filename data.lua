--==========  Utility  ==========

--Data Lists & Computation
require("util.xm-general-lists")
require("util.xm-item-lists")
require("util.xm-recipe-lists")
require("util.xm-technology-lists")
require("util.xm-copy")
require("util.xm-item")
require("util.xm-recipe")
require("util.xm-technology")

--Categories
require("category.ammo-category")
require("category.fuel-category")
require("category.item-category-changes")
require("category.item-category-new")
require("category.recipe-category")
require("category.resource-category")

--Miscellaneous:
require("misc")


--==========  Natural Resource Generation  ==========

--Autoplace Controls
require("prototypes.autoplace-control.autoplace-control")

--Entities
require("prototypes.entity.resource.particle")
require("prototypes.entity.resource.resource")


--==========  Bulk  ==========

--Items
require("prototypes.item.material.material")

--Fluids
require("prototypes.fluid.element")
require("prototypes.fluid.hydrogenated")
require("prototypes.fluid.oxide")
require("prototypes.fluid.halogenated")
require("prototypes.fluid.aqueous")
require("prototypes.fluid.hydrocarbon")
require("prototypes.fluid.other-organic")

--Recipes
require("prototypes.recipe.material.material")
require("prototypes.recipe.material.bulk")
--require("prototypes.recipe.material.milled-resource")
--require("prototypes.recipe.material.concentrate")
require("prototypes.recipe.material.concentrating")
--require("prototypes.recipe.material.plate")
--require("prototypes.recipe.material.ingot")
--require("prototypes.recipe.material.build")
require("prototypes.recipe.material.raw-refining")
require("prototypes.recipe.material.waste")

--Tiles
require("prototypes.tile.noise-layer")
require("prototypes.tile.tile")

--Technologies
require("prototypes.technology.bulk")
require("prototypes.technology.organic")
require("prototypes.technology.refining")
require("prototypes.technology.material.nonmetal")


--==========  Parts & Assemblies  ==========

--Items
require("prototypes.item.part.assembly")
require("prototypes.item.part.board")
require("prototypes.item.part.data")
require("prototypes.item.part.electric-1")
require("prototypes.item.part.electric-2")
require("prototypes.item.part.electric-3")
require("prototypes.item.part.mechanical")
require("prototypes.item.part.optic")
require("prototypes.item.part.rocket")
require("prototypes.item.part.science")
require("prototypes.item.part.structure")

--Recipes
require("prototypes.recipe.part.assembly")
require("prototypes.recipe.part.data")
require("prototypes.recipe.part.electromagnetic")
require("prototypes.recipe.part.mechanical")
require("prototypes.recipe.part.structure")
require("prototypes.recipe.part.rocket")
require("prototypes.recipe.part.science")

--Technologies
require("prototypes.technology.part.mechanical")
require("prototypes.technology.part.electromagnetic")
require("prototypes.technology.part.data")
require("prototypes.technology.part.rocket")


--==========  Production  ==========

--Items
require("prototypes.item.production.chemical")
require("prototypes.item.production.energy")
require("prototypes.item.production.furnace")
require("prototypes.item.production.miner")
require("prototypes.item.production.module")
require("prototypes.item.production.production")
require("prototypes.item.production.tool")

--Recipes
require("prototypes.recipe.production.energy")
require("prototypes.recipe.production.miner")
require("prototypes.recipe.production.furnace")
require("prototypes.recipe.production.chemical")
require("prototypes.recipe.production.production")
require("prototypes.recipe.production.module")
require("prototypes.recipe.production.tool")

--Entities
require("prototypes.entity.production.energy")
require("prototypes.entity.production.miner")
require("prototypes.entity.production.furnace")
require("prototypes.entity.production.chemical")
require("prototypes.entity.production.production")

--Technologies
require("prototypes.technology.production")


--==========  Logistics  ==========

--Items

require("prototypes.item.logistic.belt")
require("prototypes.item.logistic.inserter")
require("prototypes.item.logistic.pipe")
require("prototypes.item.logistic.pipe-to-ground")
require("prototypes.item.logistic.plumbing")
require("prototypes.item.logistic.pylon")
require("prototypes.item.logistic.robot")
require("prototypes.item.logistic.storage")
require("prototypes.item.logistic.transport")

--Recipes
require("prototypes.recipe.logistic.pylon")
require("prototypes.recipe.logistic.belt")
require("prototypes.recipe.logistic.inserter")
require("prototypes.recipe.logistic.transport")
require("prototypes.recipe.logistic.robot")
require("prototypes.recipe.logistic.fluid")
require("prototypes.recipe.logistic.circuit")

--Entities
require("prototypes.entity.logistic.belt")
require("prototypes.entity.logistic.inserter")
require("prototypes.entity.logistic.fluid-circuit")
require("prototypes.entity.logistic.pylon")
require("prototypes.entity.logistic.robot")
require("prototypes.entity.logistic.transport")

--Technologies
require("prototypes.technology.logistic")


--==========  Combat  ==========

--Equipment Grid

require("prototypes.equipment-grid")

--Items
require("prototypes.item.combat.ammo")
require("prototypes.item.combat.armor")
require("prototypes.item.combat.capsule")
require("prototypes.item.combat.equipment")
require("prototypes.item.combat.gun")
require("prototypes.item.combat.part")
require("prototypes.item.combat.structure")

--Recipes
require("prototypes.recipe.combat.gun")
require("prototypes.recipe.combat.ammo")
require("prototypes.recipe.combat.capsule")
require("prototypes.recipe.combat.armor")
require("prototypes.recipe.combat.structure")
require("prototypes.recipe.combat.equipment")

--Entities
require("prototypes.entity.combat.combat")
require("prototypes.entity.combat.projectile")

--Equipments
require("prototypes.equipment.equipment")

--Technologies
require("prototypes.technology.combat")


--==========  Bonuses  ==========

require("prototypes.technology.bonus")