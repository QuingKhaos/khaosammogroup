local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

--- @class KhaosAmmoGroup.lib
local lib = {}

--- @param _type khaoslib_item.Types
--- @param name string
--- @param subgroup data.ItemSubGroupID
function lib.update_subgroup(_type, name, subgroup)
  if settings.startup["khaosammogroup-disable-new-subgroups"].value then
    subgroup = "ammo"
  end

  if khaoslib_item.exists(_type, name) then
    khaoslib_item:load(_type, name):set {subgroup = subgroup} :commit()
  end

  if khaoslib_recipe.exists(name) then
    khaoslib_recipe:load(name):set {subgroup = subgroup} :commit()
  end

  if mods["recycler"] then
    if khaoslib_recipe.exists(name .. "-recycling") then
      khaoslib_recipe:load(name .. "-recycling"):set {subgroup = subgroup} :commit()
    end
  end
end

--- @param _type khaoslib_item.Types
--- @param name string
--- @param subgroup data.ItemSubGroupID
function lib.update_item_subgroup(_type, name, subgroup)
  if settings.startup["khaosammogroup-disable-new-subgroups"].value then
    subgroup = "ammo"
  end

  if khaoslib_item.exists(_type, name) then
    khaoslib_item:load(_type, name):set {subgroup = subgroup} :commit()
  end

  if mods["recycler"] then
    if khaoslib_recipe.exists(name .. "-recycling") then
      khaoslib_recipe:load(name .. "-recycling"):set {subgroup = subgroup} :commit()
    end
  end
end

--- @param name string
--- @param subgroup data.ItemSubGroupID
function lib.update_recipe_subgroup(name, subgroup)
  if settings.startup["khaosammogroup-disable-new-subgroups"].value then
    subgroup = "ammo"
  end

  if khaoslib_recipe.exists(name) then
    khaoslib_recipe:load(name):set {subgroup = subgroup} :commit()
  end
end

return lib
