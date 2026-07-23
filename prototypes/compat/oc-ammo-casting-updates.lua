local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local lib = require("__khaosammogroup__.prototypes.lib")

if mods["OCs_ammo_casting"] then
  for name, ammo in pairs(data.raw["ammo"]) do
    if ammo.ammo_category == "mortar-bomb" then goto continue end

    if khaoslib_recipe.exists("oc-casting-" .. name) then
      lib.update_recipe_subgroup("oc-casting-" .. name, "ammo-" .. ammo.ammo_category)
    end

    if khaoslib_recipe.exists("oc-bio-" .. name) then
      lib.update_recipe_subgroup("oc-bio-" .. name, "ammo-" .. ammo.ammo_category)
    end

    if khaoslib_recipe.exists("oc-cryo-" .. name) then
      lib.update_recipe_subgroup("oc-cryo-" .. name, "ammo-" .. ammo.ammo_category)
    end

    if khaoslib_recipe.exists(name .. "-upgrading") then
      lib.update_recipe_subgroup(name .. "-upgrading", "ammo-" .. ammo.ammo_category)
    end

    ::continue::
  end

  for name, ammo in pairs(data.raw["land-mine"]) do
    if khaoslib_recipe.exists("oc-cryo-" .. name) then
      lib.update_recipe_subgroup("oc-cryo-" .. name, "ammo-" .. ammo.ammo_category)
    end
  end
end
