local lib = require("__khaosammogroup__.prototypes.lib")

if mods["atomic-land-mines"] then
  lib.update_subgroup("item", "atomic-land-mine", "ammo-landmine")

  if mods["OCs_ammo_casting"] then
    lib.update_recipe_subgroup("oc-cryo-atomic-land-mine", "ammo-landmine")
  end
end
