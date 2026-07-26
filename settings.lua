local khaoslib_setting = require("__khaoslib__.settings.setting")

-- Emulate as if AmmoGroup is installed
mods["AmmoGroup"] = "1.1.3"

khaoslib_setting:load {
  type = "color-setting",
  name = "khaosammogroup-advanced-icon-color-magazine-1",
  setting_type = "startup",
  default_value = util.color("00f4fc7f"),
  order = "a[advanced]-a[icon-color]-a[magazine-1]",
  hidden = not mods["khaos-advanced-settings"]
} :commit()

khaoslib_setting:load {
  type = "color-setting",
  name = "khaosammogroup-advanced-icon-color-magazine-2",
  setting_type = "startup",
  default_value = util.color("e04800c8"),
  order = "a[advanced]-a[icon-color]-b[magazine-2]",
  hidden = not mods["khaos-advanced-settings"]
} :commit()

khaoslib_setting:load {
  type = "color-setting",
  name = "khaosammogroup-advanced-icon-color-bullets",
  setting_type = "startup",
  default_value = util.color("ff0086c8"),
  order = "a[advanced]-a[icon-color]-c[bullets]",
  hidden = not mods["khaos-advanced-settings"]
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaosammogroup-disable-new-subgroups",
  setting_type = "startup",
  default_value = false,
  order = "a[settings]-a[disable-new-subgroups]",
} :commit()
