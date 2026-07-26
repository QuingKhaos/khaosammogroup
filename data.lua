local khaosbash = require("__khaosbash__.prototypes.lib")
local khaoslib_item_group = require("__khaoslib__.prototypes.item-group")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")

-- Emulate as if AmmoGroup is installed
mods["AmmoGroup"] = "1.1.3"

khaoslib_item_group:load {
  type = "item-group",
  name = "ammo",
  order = "ea[ammo]",
} :set_icons(khaosbash.load_icons(
    "__khaosbash__/graphics/base/technology/ammo",
    settings.startup["khaosammogroup-advanced-icon-color-magazine-1"].value --[[@as data.Color]],
    settings.startup["khaosammogroup-advanced-icon-color-magazine-2"].value --[[@as data.Color]],
    settings.startup["khaosammogroup-advanced-icon-color-bullets"].value --[[@as data.Color]]
  ))
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
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-railgun", group = "ammo", order = "x[ammo-railgun]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-tesla", group = "ammo", order = "y[ammo-tesla]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-landmine", group = "ammo", order = "z[ammo-landmine]"} :commit()
end
