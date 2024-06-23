GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})

PrefabFiles = {}

local assets_files = {
     image = {},
     bigport = {},
     anim = {},
}

Assets = {}
for k,v in pairs(assets_files) do
     if k == "image" then
          for _,file in ipairs(v) do
               table.insert(Assets, Asset("ATLAS", "images/"..file..".xml"))
               table.insert(Assets, Asset("IMAGE", "images/"..file..".tex"))
          end
     elseif k == "bigport" then
          for _,file in ipairs(v) do
               table.insert(Assets, Asset("ATLAS", "bigportraits/"..file..".xml"))
               table.insert(Assets, Asset("IMAGE", "bigportraits/"..file..".tex"))
          end
     elseif k == "anim" then
          for _,file in ipairs(v) do
               table.insert(Assets, Asset("ANIM", "anim/"..file..".zip"))
          end
     end
end

RegisterInventoryItemAtlas("images/inventoryimages/.xml", ".tex")
AddMinimapAtlas("images/.xml")

local import_files = {
     "AddTunings",
     "AddStrings",
     "AddActions",
     "AddHandlers",
     "AddPostinit",
     "AddRecipes",
     "AddStategraph",
     "AddStategraph_client",
}

for _,v in ipairs(import_files) do
     modimport("scripts/"..v)
end