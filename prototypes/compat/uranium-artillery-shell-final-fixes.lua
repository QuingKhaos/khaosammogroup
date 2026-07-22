local lib = require("__khaosammogroup__.prototypes.lib")

if mods["Uranium-Artillery-Shell"] then
    lib.update_subgroup("ammo", "uranium-artillery-shell", "ammo-artillery-shell")
    lib.update_subgroup("ammo", "uranium-artillery-shell-mk2", "ammo-artillery-shell")

  if mods["OCs_ammo_casting"] and settings.startup["allow-casting-explosive-ammo"].value then
    lib.update_recipe_subgroup("oc-casting-uranium-artillery-shell", "ammo-artillery-shell")
    if settings.startup["nuclear-ammo"].value then
      lib.update_recipe_subgroup("oc-casting-uranium-artillery-shell-mk2", "ammo-artillery-shell")
    end
  end
end
