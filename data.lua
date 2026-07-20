local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_item_group = require("__khaoslib__.prototypes.item-group")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")

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
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-landmine", group = "ammo", order = "j[ammo-landmine]"} :commit()
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "ammo-laser-rifle", group = "ammo", order = "k[ammo-laser-rifle]"} :commit()
end

--- @param _type khaoslib_item.Types
--- @param name string
--- @param subgroup data.ItemSubGroupID
local function update_subgroup(_type, name, subgroup)
  if settings.startup["khaosammogroup-disable-new-subgroups"].value then
    subgroup = "ammo"
  end

  khaoslib_item:load(_type, name):set {subgroup = subgroup} :commit()
  khaoslib_recipe:load(name):set {subgroup = subgroup} :commit()
end

update_subgroup("ammo", "firearm-magazine", "ammo-bullet")
update_subgroup("ammo", "piercing-rounds-magazine", "ammo-bullet")
update_subgroup("ammo", "uranium-rounds-magazine", "ammo-bullet")

update_subgroup("ammo", "shotgun-shell", "ammo-shotgun-shell")
update_subgroup("ammo", "piercing-shotgun-shell", "ammo-shotgun-shell")

update_subgroup("capsule", "grenade", "ammo-grenade")
update_subgroup("capsule", "cluster-grenade", "ammo-grenade")
update_subgroup("capsule", "poison-capsule", "ammo-grenade")
update_subgroup("capsule", "slowdown-capsule", "ammo-grenade")

update_subgroup("capsule", "defender-capsule", "ammo-capsule")
update_subgroup("capsule", "distractor-capsule", "ammo-capsule")
update_subgroup("capsule", "destroyer-capsule", "ammo-capsule")

update_subgroup("ammo", "flamethrower-ammo", "ammo-flamethrower")

update_subgroup("ammo", "rocket", "ammo-rocket")
update_subgroup("ammo", "explosive-rocket", "ammo-rocket")
update_subgroup("ammo", "atomic-bomb", "ammo-rocket")

update_subgroup("ammo", "cannon-shell", "ammo-cannon-shell")
update_subgroup("ammo", "explosive-cannon-shell", "ammo-cannon-shell")
update_subgroup("ammo", "uranium-cannon-shell", "ammo-cannon-shell")
update_subgroup("ammo", "explosive-uranium-cannon-shell", "ammo-cannon-shell")

update_subgroup("ammo", "artillery-shell", "ammo-artillery-shell")

update_subgroup("item", "land-mine", "ammo-landmine")
