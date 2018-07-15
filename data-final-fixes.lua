require("util.xm-general-lists")
require("util.xm-item-lists")

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

local not_xm_items = {}
local xm_items = {}
local count_xm_items = 0

local function is_in(array, search_name)
  local found = false
  if array then
    for _,name in ipairs(array) do
      if name == search_name then
        found = true
        break
      end
    end
  end
  return found
end

local function choose_names_from_item_list(items)
  local array = {}
  for i, item in pairs(items) do
    array[#array+1] = item[1]
  end
  return array
end


local arrays =
{
  ["xm_all_resources"] = xm_all_resources,
  ["xm_milled_resource_items"] = choose_names_from_item_list(xm_milled_resource_items),
  ["xm_concentrate_items"] = choose_names_from_item_list(xm_concentrate_items),
  ["xm_ingot_items"] = choose_names_from_item_list(xm_ingot_items),
  ["xm_nonmetal_items_names"] = choose_names_from_item_list(xm_nonmetal_items),
  ["xm_build_items"] = choose_names_from_item_list(xm_build_items),
  ["xm_alloy_items"] = choose_names_from_item_list(xm_alloy_items),
  ["xm_mechanical_items"] = choose_names_from_item_list(xm_mechanical_items),
  ["xm_assembly_items"] = choose_names_from_item_list(xm_assembly_items),
  ["xm_tool_items"] = choose_names_from_item_list(xm_tool_items),
  ["xm_energy_items"] = choose_names_from_item_list(xm_energy_items),
  ["xm_miner_items"] = choose_names_from_item_list(xm_miner_items),
  ["xm_furnace_items"] = choose_names_from_item_list(xm_furnace_items),
  ["xm_chemical_items"] = choose_names_from_item_list(xm_chemical_items),
  ["xm_production_items"] = choose_names_from_item_list(xm_production_items),
  ["xm_module_items"] = choose_names_from_item_list(xm_module_items),
}

for groupname, array in pairs(arrays) do
  xm_items[groupname] = {}
  for _, itemname in ipairs(array) do
    xm_items[groupname][itemname] = 0
  end
end

local item_and_fluid_names = {}
for itemname in pairs(data.raw.item) do
  item_and_fluid_names[#item_and_fluid_names + 1] = itemname
end

for fluidname in pairs(data.raw.fluid) do
  item_and_fluid_names[#item_and_fluid_names + 1] = fluidname
end

for _, itemname in ipairs(item_and_fluid_names) do
  local is_in_xm_list = false
  local found_in = ""

  for groupname, array in pairs(arrays) do  
    if not array then
      log(groupname .. "is nil")
    end
    if is_in(array, itemname) then
      found_in = groupname
      is_in_xm_list = true
      break
    end
  end
  
  if is_in_xm_list then
    xm_items[found_in][itemname] = xm_items[found_in][itemname] + 1
    count_xm_items = count_xm_items + 1
  else
    not_xm_items[#not_xm_items + 1] = itemname
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

log("Found "..count_xm_items.." XM items:")
log(xm_items)
log("Found "..count(not_xm_items).." not XM items:")
log(not_xm_items)