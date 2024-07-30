GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})

PrefabFiles = {}

Assets = {
     Asset( "ANIM", "anim/.zip" ),

     Asset("ATLAS", "images/.xml"),
     Asset("IMAGE", "images/.tex"),

     Asset("SOUNDPACKAGE", "sound/.fev"),
     Asset("SOUND", "sound/.fsb"),
}

RegisterInventoryItemAtlas("images/inventoryimages/.xml", ".tex")

AddMinimapAtlas("images/.xml")

modimport("")