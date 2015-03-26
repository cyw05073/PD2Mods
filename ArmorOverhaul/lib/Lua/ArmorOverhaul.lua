------[[Script setup]]------
--[[POSTREQUIRE SCRIPTS]]
RegisterScript("lib/Lua/ArmorOverhaul/upgradestweakdata.lua", 2, "lib/tweak_data/upgradestweakdata")
RegisterScript("lib/Lua/ArmorOverhaul/playerdamage.lua", 2, "lib/units/beings/player/playerdamage")

--[[OPTIONAL POSTREQUIRE SCRIPTS (but recommended)]]
RegisterScript("lib/Lua/ArmorOverhaul/armortext.lua", 2, "lib/managers/localizationmanager")
RegisterScript("lib/Lua/ArmorOverhaul/blackmarketgui.lua", 2, "lib/managers/menu/blackmarketgui")

--[[PERSIST SCRIPTS]]
AddPersistScript("AmmoPool", "lib/Lua/ArmorOverhaul/default_upgrades.lua")