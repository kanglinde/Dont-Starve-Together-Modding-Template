AddComponentPostInit("component", function(self)
end)

AddClassPostConstruct("components/component_replica", function(self)
end)

AddPrefabPostInit("prefab", function(inst)
     if not TheWorld.ismastersim then return end
     -- components should be handled on server
end)

AddPlayerPostInit(function(inst)
	if not TheWorld.ismastersim then return end
	-- components should be handled on server
end)