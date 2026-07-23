local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local lib = require("__khaosammogroup__.prototypes.lib")

if mods["More_Ammo"] then
  for _, name in pairs(khaoslib_item.find("ammo", function(item)
    --- @cast item data.AmmoItemPrototype
    --- @diagnostic disable-next-line: undefined-field
    return item.name:match("rounds%-magazine") ~= nil
  end)) do
    --- @diagnostic disable-next-line: undefined-field
    local recipe_name = name:gsub("rounds%-magazine", "ammo-recipe")
    if khaoslib_recipe.exists(recipe_name) then
      lib.update_recipe_subgroup(recipe_name, "ammo-".. data.raw["ammo"][name].ammo_category)
    end
  end

  for _, name in pairs(khaoslib_item.find("ammo", function(item)
    --- @cast item data.AmmoItemPrototype
    --- @diagnostic disable-next-line: undefined-field
    return item.name:match("shotgun%-shell") ~= nil
  end)) do
    --- @diagnostic disable-next-line: undefined-field
    local recipe_name = name:gsub("shotgun%-shell", "shotgun-recipe")
    if khaoslib_recipe.exists(recipe_name) then
      lib.update_recipe_subgroup(recipe_name, "ammo-".. data.raw["ammo"][name].ammo_category)
    end
  end
end
