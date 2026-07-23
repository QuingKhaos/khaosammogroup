local lib = require("__khaosammogroup__.prototypes.lib")

if mods["aai-vehicles-ironclad"] then
    lib.update_subgroup("ammo", "mortar-bomb", "ammo-grenade")
    lib.update_subgroup("ammo", "mortar-cluster-bomb", "ammo-grenade")

    if mods["OCs_ammo_casting"] then
      lib.update_recipe_subgroup("oc-casting-mortar-bomb", "ammo-grenade")
      lib.update_recipe_subgroup("oc-casting-mortar-cluster-bomb", "ammo-grenade")
    end
end
