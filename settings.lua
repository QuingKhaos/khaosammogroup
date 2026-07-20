local khaoslib_setting = require("__khaoslib__.settings.setting")

-- Emulate as if AmmoGroup is installed
mods["AmmoGroup"] = "1.1.3"

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaosammogroup-disable-new-subgroups",
  setting_type = "startup",
  default_value = false,
} :commit()
