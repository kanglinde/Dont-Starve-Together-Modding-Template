local options = { "lan" }
local config = {}
for _,v in ipairs(options) do config[v] = GetModConfigData(v) end
print(config.lan)

PrefabFiles = {}

Assets = {
     Asset( "ANIM", "anim/.zip" ),

     Asset("ATLAS", "images/.xml"),
     Asset("IMAGE", "images/.tex"),

     Asset("SOUNDPACKAGE", "sound/.fev"),
     Asset("SOUND", "sound/.fsb"),
}

-- TUNING and STRINGS first

modimport("scripts/AddStrings")
modimport("scripts/AddActions")
modimport("scripts/AddHandlers")
modimport("scripts/AddPostinit")
modimport("scripts/AddRecipes")
modimport("scripts/AddStategraph")
modimport("scripts/AddStategraph_client")