require("util.xm-general-lists")
require("util.xm-item-lists")
require("util.xm-recipe-lists")

local LOG = log
local function log(x) LOG(serpent.block(x)) end

local ko_items = {}
local no_recipe_items = {}
local ko_recipes = {}

local function mark_accessible(name)
  ko_items[name] = nil
  no_recipe_items[name] = nil
end

for name in pairs(data.raw.item) do
  ko_items[name] = true
  no_recipe_items[name] = true
end
for name in pairs(data.raw.fluid) do
  ko_items[name] = true
end
for name in pairs(data.raw["autoplace-control"]) do
  mark_accessible(name)
end

local ignore_from_base = {
  "belt-immunity-equipment",
  "coin",
  "computer",
  "infinity-chest",
  "raw-wood",
  "simple-entity",
  "simple-entity-with-force",
  "simple-entity-with-owner",
  "used-up-uranium-fuel-cell",
}
for _, name in ipairs(ignore_from_base) do
  mark_accessible(name)
end

local changed = true
while changed do
  log("starting pass")
  changed = false
  for name, recipe in pairs(data.raw.recipe) do
    if recipe.normal then recipe = recipe.normal end
    local missing = {}
    for _, ing in ipairs(recipe.ingredients) do
      local ingredient_name = ing.name or ing[1]
      if ko_items[ingredient_name] then
        if name == "battery" then
          log(ingredient_name)
        end
        missing[#missing+1] = ingredient_name
      end
    end

    if next(missing) then
      ko_recipes[name] = missing
    else
      ko_recipes[name] = nil
    end

    local results = recipe.results or {{recipe.result, 1}}
    for _, result in ipairs(results) do
      local result_name = result.name or result[1]
      no_recipe_items[result_name] = nil
      if not next(missing) and ko_items[result_name] then
        log("marking "..result_name.." as accessible via recipe "..name)
        mark_accessible(result_name)
        changed = true
      end
    end
  end
end


local xm_items = {}
local count_xm_items = 0
local not_xm_items = {}

local xm_recipes = {}
local count_xm_recipes = 0
local not_xm_recipes = {}

local function get_names_from_xm_list(itemlist)
  local itemnames = {}
  if itemlist then
    for i, item in pairs(itemlist) do
      itemnames[#itemnames+1] = item[1]
    end
  end
  return itemnames
end

-- The plan is, that all items of XM are present in those lists
local itemnames_per_list =
{
  ["xm_all_resources"] = xm_all_resources,
  ["xm_milled_resource_items"] = get_names_from_xm_list(xm_milled_resource_items),
  ["xm_concentrate_items"] = get_names_from_xm_list(xm_concentrate_items),
  ["xm_oxide_items"] = get_names_from_xm_list(xm_oxide_items),
  ["xm_sponge_items"] = get_names_from_xm_list(xm_sponge_items),
  ["xm_plate_items"] = get_names_from_xm_list(xm_plate_items),
  ["xm_ingot_items"] = get_names_from_xm_list(xm_ingot_items),
  ["xm_billet_items"] = get_names_from_xm_list(xm_billet_items),
  ["xm_nonmetal_items_names"] = get_names_from_xm_list(xm_nonmetal_items),
  ["xm_salt_items"] = get_names_from_xm_list(xm_salt_items),
  ["xm_compound_items"] = get_names_from_xm_list(xm_compound_items),
  ["xm_organic_items"] = get_names_from_xm_list(xm_organic_items),
  ["xm_carbohydrate_items"] = get_names_from_xm_list(xm_carbohydrate_items),
  ["xm_raw_items"] = get_names_from_xm_list(xm_raw_items),
  ["xm_build_items"] = get_names_from_xm_list(xm_build_items),
  ["xm_waste_items"] = get_names_from_xm_list(xm_waste_items),
  ["xm_alloy_items"] = get_names_from_xm_list(xm_alloy_items),
  ["xm_mechanical_items"] = get_names_from_xm_list(xm_mechanical_items),
  ["xm_assembly_items"] = get_names_from_xm_list(xm_assembly_items),
  ["xm_tool_items"] = get_names_from_xm_list(xm_tool_items),
  ["xm_energy_items"] = get_names_from_xm_list(xm_energy_items),
  ["xm_miner_items"] = get_names_from_xm_list(xm_miner_items),
  ["xm_furnace_items"] = get_names_from_xm_list(xm_furnace_items),
  ["xm_chemical_items"] = get_names_from_xm_list(xm_chemical_items),
  ["xm_production_items"] = get_names_from_xm_list(xm_production_items),
  ["xm_module_items"] = get_names_from_xm_list(xm_module_items),
}

local recipenames_per_list =
{
  ["xm_milled_resource_recipes"] = get_names_from_xm_list(xm_milled_resource_recipes),
  ["xm_concentrate_recipes"] = get_names_from_xm_list(xm_concentrate_recipes),
  ["xm_oxide_recipes"] = get_names_from_xm_list(xm_oxide_recipes),
  ["xm_sponge_recipes"] = get_names_from_xm_list(xm_sponge_recipes),
  ["xm_plate_recipes"] = get_names_from_xm_list(xm_plate_recipes),
  ["xm_ingot_recipes"] = get_names_from_xm_list(xm_ingot_recipes),
  ["xm_billet_recipes"] = get_names_from_xm_list(xm_billet_recipes),
  ["xm_nonmetal_recipes_names"] = get_names_from_xm_list(xm_nonmetal_recipes),
  ["xm_salt_recipes"] = get_names_from_xm_list(xm_salt_recipes),
  ["xm_compound_recipes"] = get_names_from_xm_list(xm_compound_recipes),
  ["xm_organic_recipes"] = get_names_from_xm_list(xm_organic_recipes),
  ["xm_carbohydrate_recipes"] = get_names_from_xm_list(xm_carbohydrate_recipes),
  ["xm_raw_recipes"] = get_names_from_xm_list(xm_raw_recipes),
  ["xm_build_recipes"] = get_names_from_xm_list(xm_build_recipes),
  ["xm_waste_recipes"] = get_names_from_xm_list(xm_waste_recipes),
  ["xm_alloy_recipes"] = get_names_from_xm_list(xm_alloy_recipes),
  ["xm_mechanical_recipes"] = get_names_from_xm_list(xm_mechanical_recipes),
  ["xm_assembly_recipes"] = get_names_from_xm_list(xm_assembly_recipes),
  ["xm_tool_recipes"] = get_names_from_xm_list(xm_tool_recipes),
  ["xm_energy_recipes"] = get_names_from_xm_list(xm_energy_recipes),
  ["xm_miner_recipes"] = get_names_from_xm_list(xm_miner_recipes),
  ["xm_furnace_recipes"] = get_names_from_xm_list(xm_furnace_recipes),
  ["xm_chemical_recipes"] = get_names_from_xm_list(xm_chemical_recipes),
  ["xm_production_recipes"] = get_names_from_xm_list(xm_production_recipes),
  ["xm_module_recipes"] = get_names_from_xm_list(xm_module_recipes),
}

local function initialize_xm_lists()
  for listname, itemnames in pairs(itemnames_per_list) do
    xm_items[listname] = {}
    for _, itemname in ipairs(itemnames) do
      xm_items[listname][itemname] = 0 -- count of items with that name
    end
  end

  for listname, recipenames in pairs(recipenames_per_list) do
    xm_recipes[listname] = {}
    for _, recipename in ipairs(recipenames) do
      xm_recipes[listname][recipename] = 0 -- count of recipes with that name
    end
  end

end

local function is_in(names, search_name)
  local found = false
    for _,name in ipairs(names) do
    if name == search_name then
      found = true
      break
    end
  end
  return found
end

local existing_item_and_fluid_names = {}
for itemname in pairs(data.raw.item) do
  existing_item_and_fluid_names[#existing_item_and_fluid_names + 1] = itemname
end

for fluidname in pairs(data.raw.fluid) do
  existing_item_and_fluid_names[#existing_item_and_fluid_names + 1] = fluidname
end

local existing_recipe_names = {}
for recipename in pairs(data.raw.recipe) do
  existing_recipe_names[#existing_recipe_names + 1] = recipename
end


local function xm_items_analyze()
  initialize_xm_lists()

  for _, search_itemname in ipairs(existing_item_and_fluid_names) do
    local is_in_xm_list = false
    local matching_listname

    for listname, itemnames in pairs(itemnames_per_list) do  
      if not itemnames then
        log("Warning: " .. listname .. " is nil")
      elseif is_in(itemnames, search_itemname) then
        matching_listname = listname
        is_in_xm_list = true
        break
      end
    end
    
    if is_in_xm_list and matching_listname then
      xm_items[matching_listname][search_itemname] = xm_items[matching_listname][search_itemname] + 1
      count_xm_items = count_xm_items + 1
    else
      not_xm_items[#not_xm_items + 1] = search_itemname
    end
  end

  for _, search_recipename in ipairs(existing_recipe_names) do
    local is_in_xm_list = false
    local matching_listname

    for listname, recipenames in pairs(recipenames_per_list) do  
      if not recipenames then
        log("Warning: " .. listname .. " is nil")
      elseif is_in(recipenames, search_recipename) then
        matching_listname = listname
        is_in_xm_list = true
        break
      end
    end
    
    if is_in_xm_list and matching_listname then
      xm_recipes[matching_listname][search_recipename] = xm_recipes[matching_listname][search_recipename] + 1
      count_xm_recipes = count_xm_recipes + 1
    else
      not_xm_recipes[#not_xm_recipes + 1] = search_recipename
    end
  end

end

local function count(t)
  local i = 0
  for _ in pairs(t) do
    i = i + 1
  end
  return i
end

--log(ok_items)
log("Found "..count(no_recipe_items).. " items without recipes or autoplace-controls:")
log(no_recipe_items)
log("Found "..count(ko_items).." inaccessible items:")
log(ko_items)
log("Found "..count(ko_recipes).." inaccessible recipes:")
log(ko_recipes)


xm_items_analyze()

log("Found "..count_xm_items.." XM items:")
log(xm_items)
log("Found "..count(not_xm_items).." not XM items:")
log(not_xm_items)

log("Found "..count_xm_recipes.." XM recipes:")
log(xm_recipes)
log("Found "..count(not_xm_recipes).." not XM recipes:")
log(not_xm_recipes)
