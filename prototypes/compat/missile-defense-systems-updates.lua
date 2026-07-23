local khaoslib_item = require("__khaoslib__.prototypes.item")
local lib = require("__khaosammogroup__.prototypes.lib")

if mods["missile_defense_systems_continued"] then
  for _, name in pairs(khaoslib_item.find("ammo", function(item)
    --- @cast item data.AmmoItemPrototype
    return item.ammo_category == "mds-ballistic-missile"
  end)) do
    lib.update_item_subgroup("ammo", name, "ammo-rocket")
  end
end
