local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["space-age"] then
  local subgroup = settings.startup["khaosammogroup-disable-new-subgroups"].value and "ammo" or "ammo-rocket"
  khaoslib_item:load("ammo", "capture-robot-rocket"):set {subgroup = subgroup} :commit()
  khaoslib_recipe:load("capture-robot-rocket"):set {subgroup = subgroup} :commit()
end
