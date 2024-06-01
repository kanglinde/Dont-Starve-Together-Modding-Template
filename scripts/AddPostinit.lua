local EQUIPSLOTS = GLOBAL.EQUIPSLOTS
local resolvefilepath = GLOBAL.resolvefilepath

AddComponentPostInit("component", function(self)
end)

AddClassPostConstruct("components/component_replica", function(self)
end)

AddPrefabPostInit("prefab", function(inst)
     if not GLOBAL.TheWorld.ismastersim then return end
     -- Components must be handled on server only
end)

AddStategraphPostInit("wilson", function(inst)
end)

AddStategraphPostInit("wilson_client", function(inst)
end)