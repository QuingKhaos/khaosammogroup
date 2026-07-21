local lib = require("__khaosammogroup__.prototypes.lib")

if mods["OCs_ammo_casting"] then
  lib.update_subgroup("ammo", "tungsten-rounds-magazine", "ammo-bullet")

  lib.update_subgroup("ammo", "uranium-shotgun-shell", "ammo-shotgun-shell")
  lib.update_subgroup("ammo", "tungsten-shotgun-shell", "ammo-shotgun-shell")

  lib.update_subgroup("ammo", "tungsten-cannon-shell", "ammo-cannon-shell")

  lib.update_subgroup("ammo", "tungsten-railgun-ammo", "ammo-railgun")

  lib.update_recipe_subgroup("oc-casting-firearm-magazine", "ammo-bullet")
  lib.update_recipe_subgroup("oc-casting-piercing-rounds-magazine", "ammo-bullet")
  lib.update_recipe_subgroup("oc-casting-uranium-rounds-magazine", "ammo-bullet")
  lib.update_recipe_subgroup("oc-casting-tungsten-rounds-magazine", "ammo-bullet")

  lib.update_recipe_subgroup("oc-casting-shotgun-shell", "ammo-shotgun-shell")
  lib.update_recipe_subgroup("oc-casting-piercing-shotgun-shell", "ammo-shotgun-shell")
  lib.update_recipe_subgroup("oc-casting-uranium-shotgun-shell", "ammo-shotgun-shell")
  lib.update_recipe_subgroup("oc-casting-tungsten-shotgun-shell", "ammo-shotgun-shell")

  lib.update_recipe_subgroup("oc-casting-cannon-shell", "ammo-cannon-shell")
  lib.update_recipe_subgroup("oc-casting-explosive-cannon-shell", "ammo-cannon-shell")
  lib.update_recipe_subgroup("oc-casting-uranium-cannon-shell", "ammo-cannon-shell")
  lib.update_recipe_subgroup("oc-casting-explosive-uranium-cannon-shell", "ammo-cannon-shell")
  lib.update_recipe_subgroup("oc-casting-tungsten-cannon-shell", "ammo-cannon-shell")

  lib.update_recipe_subgroup("oc-bio-rocket", "ammo-rocket")
  lib.update_recipe_subgroup("oc-bio-explosive-rocket", "ammo-rocket")
  lib.update_recipe_subgroup("oc-cryo-atomic-bomb", "ammo-rocket")

  lib.update_recipe_subgroup("oc-casting-artillery-shell", "ammo-artillery-shell")

  lib.update_recipe_subgroup("oc-casting-railgun-ammo", "ammo-railgun")
  lib.update_recipe_subgroup("oc-casting-tungsten-railgun-ammo", "ammo-railgun")
end
