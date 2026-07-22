local lib = require("__khaosammogroup__.prototypes.lib")

lib.update_subgroup("ammo", "firearm-magazine", "ammo-bullet")
lib.update_subgroup("ammo", "piercing-rounds-magazine", "ammo-bullet")
lib.update_subgroup("ammo", "uranium-rounds-magazine", "ammo-bullet")

lib.update_subgroup("ammo", "shotgun-shell", "ammo-shotgun-shell")
lib.update_subgroup("ammo", "piercing-shotgun-shell", "ammo-shotgun-shell")

lib.update_subgroup("capsule", "grenade", "ammo-grenade")
lib.update_subgroup("capsule", "cluster-grenade", "ammo-grenade")
lib.update_subgroup("capsule", "poison-capsule", "ammo-grenade")
lib.update_subgroup("capsule", "slowdown-capsule", "ammo-grenade")

lib.update_subgroup("capsule", "defender-capsule", "ammo-capsule")
lib.update_subgroup("capsule", "distractor-capsule", "ammo-capsule")
lib.update_subgroup("capsule", "destroyer-capsule", "ammo-capsule")

lib.update_subgroup("ammo", "flamethrower-ammo", "ammo-flamethrower")

lib.update_subgroup("ammo", "rocket", "ammo-rocket")
lib.update_subgroup("ammo", "explosive-rocket", "ammo-rocket")
lib.update_subgroup("ammo", "atomic-bomb", "ammo-rocket")

lib.update_subgroup("ammo", "cannon-shell", "ammo-cannon-shell")
lib.update_subgroup("ammo", "explosive-cannon-shell", "ammo-cannon-shell")
lib.update_subgroup("ammo", "uranium-cannon-shell", "ammo-cannon-shell")
lib.update_subgroup("ammo", "explosive-uranium-cannon-shell", "ammo-cannon-shell")

lib.update_subgroup("ammo", "artillery-shell", "ammo-artillery-shell")

lib.update_subgroup("item", "land-mine", "ammo-landmine")

if mods["space-age"] then
  lib.update_subgroup("ammo", "capture-robot-rocket", "ammo-rocket")

  lib.update_subgroup("ammo", "railgun-ammo", "ammo-railgun")
end
