

--
--
--Groups
--
--

--==========
--"intermediate-products"
data.raw["item-group"]["intermediate-products"].order = "1"
data.raw["item-group"]["intermediate-products"].inventory_order = "1"

--"production"
data.raw["item-group"]["production"].order = "2"
data.raw["item-group"]["production"].inventory_order = "2"

--"logistics"
data.raw["item-group"]["logistics"].order = "3"
data.raw["item-group"]["logistics"].inventory_order = "3"

--"combat"
data.raw["item-group"]["combat"].order = "4"
data.raw["item-group"]["combat"].inventory_order = "4"
--==========


--
--
--Subgroups
--
--

--==========

--==========  Of "fluids"  ==========
--fluid
data.raw["item-subgroup"]["fluid"].order = "01-00"


--==========  Of "intermediate-products"  ==========
--fluid-recipes - moved to XM group "bulk"
data.raw["item-subgroup"]["fluid-recipes"].group = "bulk"
data.raw["item-subgroup"]["fluid-recipes"].order = "00-11"
--raw-resource - moved to XM group "bulk"
data.raw["item-subgroup"]["raw-resource"].group = "bulk"
data.raw["item-subgroup"]["raw-resource"].order = "00-00"
--raw-material - moved to XM group "bulk"
data.raw["item-subgroup"]["raw-material"].group = "bulk"
data.raw["item-subgroup"]["raw-material"].order = "00-01"
--intermediate-product - now used only for nuclear & rocket parts
data.raw["item-subgroup"]["intermediate-product"].order = "02-09"
--science-pack
data.raw["item-subgroup"]["science-pack"].order = "02-10"
--barrels - moved to the end of the group
data.raw["item-subgroup"]["fill-barrel"].order = "02-11"
data.raw["item-subgroup"]["empty-barrel"].order = "02-12"


--==========  Of "production"  ==========
--tool
data.raw["item-subgroup"]["tool"].order = "03-00"
--energy
data.raw["item-subgroup"]["energy"].order = "03-01"
--extraction-machine - miners and ore processors
data.raw["item-subgroup"]["extraction-machine"].order = "03-02"
--smelting-machine - furnaces
data.raw["item-subgroup"]["smelting-machine"].order = "03-03"
--production-machine - assembling machines and machine tools
data.raw["item-subgroup"]["production-machine"].order = "03-05"
--module
data.raw["item-subgroup"]["module"].order = "03-06"


--==========  Of "logistics"  ==========
--storage
data.raw["item-subgroup"]["storage"].order = "04-00"
--belt
data.raw["item-subgroup"]["belt"].order = "04-01"
--inserter
data.raw["item-subgroup"]["inserter"].order = "04-02"
--energy-pipe-distribution
data.raw["item-subgroup"]["energy-pipe-distribution"].order = "04-06"
--transport
data.raw["item-subgroup"]["transport"].order = "04-07"
--logistic-network
data.raw["item-subgroup"]["logistic-network"].order = "04-08"
--circuit-network
data.raw["item-subgroup"]["circuit-network"].order = "04-09"
--terrain
data.raw["item-subgroup"]["terrain"].group = "bulk"
data.raw["item-subgroup"]["terrain"].order = "00-07"


--==========  Of "combat"  ==========
--gun
data.raw["item-subgroup"]["gun"].order = "05-01"
--ammo
data.raw["item-subgroup"]["ammo"].order = "05-02"
--capsule
data.raw["item-subgroup"]["capsule"].order = "05-03"
--armor
data.raw["item-subgroup"]["armor"].order = "05-04"
--equipment
data.raw["item-subgroup"]["equipment"].order = "05-05"
--defensive-structure
data.raw["item-subgroup"]["defensive-structure"].order = "05-06"

--==========