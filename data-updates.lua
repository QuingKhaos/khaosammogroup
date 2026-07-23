local khaoslib_item = require("__khaoslib__.prototypes.item")
local lib = require("__khaosammogroup__.prototypes.lib")

for name, ammo in pairs(data.raw["ammo"]) do
  lib.update_item_subgroup("ammo", name, "ammo-" .. ammo.ammo_category)
end

lib.update_subgroup("capsule", "grenade", "ammo-grenade")
lib.update_subgroup("capsule", "cluster-grenade", "ammo-grenade")
lib.update_subgroup("capsule", "poison-capsule", "ammo-grenade")
lib.update_subgroup("capsule", "slowdown-capsule", "ammo-grenade")

lib.update_subgroup("capsule", "defender-capsule", "ammo-capsule")
lib.update_subgroup("capsule", "distractor-capsule", "ammo-capsule")
lib.update_subgroup("capsule", "destroyer-capsule", "ammo-capsule")

for name, _ in pairs(data.raw["land-mine"]) do
  lib.update_item_subgroup("item", name, "ammo-landmine")
end

-- e.g. from AAI Vehicles: Ironclad
for _, name in pairs(khaoslib_item.find("ammo", function(item)
  --- @cast item data.AmmoItemPrototype
  return item.ammo_category == "mortar-bomb"
end)) do
  lib.update_item_subgroup("ammo", name, "ammo-grenade")
end

require("__khaosammogroup__.prototypes.compat.missile-defense-systems-updates")
require("__khaosammogroup__.prototypes.compat.more-ammo-updates")
require("__khaosammogroup__.prototypes.compat.oc-ammo-casting-updates")
