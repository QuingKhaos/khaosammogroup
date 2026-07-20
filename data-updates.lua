local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["space-age"] then
  khaoslib_item:load("ammo", "capture-robot-rocket"):set {subgroup = "ammo-rocket"} :commit()
  khaoslib_recipe:load("capture-robot-rocket"):set {subgroup = "ammo-rocket"} :commit()
end
