local lib = require("__khaosammogroup__.prototypes.lib")

if mods["missile_defense_systems_continued"] then
    lib.update_subgroup("ammo", "mds-ballistic-missile", "ammo-rocket")
    lib.update_subgroup("ammo", "mds-ballistic-explosive-missile", "ammo-rocket")
end
