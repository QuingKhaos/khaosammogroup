local khaoslib_item_group = require("__khaoslib__.prototypes.item-group")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local lib = require("__khaosammogroup__.prototypes.lib")

-- Emulate as if AmmoGroup is installed
mods["AmmoGroup"] = "1.1.3"

khaoslib_item_group:load {
  type = "item-group",
  name = "ammo",
  order = "ea[ammo]",
} :set_icons {{icon = "__base__/graphics/technology/uranium-ammo.png", icon_size = 256}}
  :commit()

khaoslib_item_subgroup:load("ammo"):set {group = "ammo", order = "a[ammo]"} :commit()

if not settings.startup["khaosammogroup-disable-new-subgroups"].value then
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-bullet", group = "ammo", order = "b[ammo-bullet]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-shotgun-shell", group = "ammo", order = "c[ammo-shotgun-shell]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-grenade", group = "ammo", order = "d[ammo-grenade]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-capsule", group = "ammo", order = "e[ammo-capsule]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-flamethrower", group = "ammo", order = "f[ammo-flamethrower]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-rocket", group = "ammo", order = "g[ammo-rocket]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-cannon-shell", group = "ammo", order = "h[ammo-cannon-shell]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-artillery-shell", group = "ammo", order = "i[ammo-artillery-shell]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-railgun", group = "ammo", order = "j[ammo-railgun]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-landmine", group = "ammo", order = "k[ammo-landmine]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-laser-rifle", group = "ammo", order = "l[ammo-laser-rifle]"} :commit()
end

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
