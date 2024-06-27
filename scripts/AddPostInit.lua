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

-------------------------- StategraphPostInit --------------------------

local function ChangeActionHandler(inst, action, fn)
	local old_handler = inst.actionhandlers[action].deststate
	inst.actionhandlers[act].deststate = function(inst, action)
		return fn(inst, action, old_handler)
	end
end

local function ChangeEventHandler(inst, event, fn)
	local old_handler = inst.events[event].fn 
	inst.events[event].fn  = function(inst, data)
		fn(inst, data, old_handler)
	end
end

AddStategraphPostInit("wilson", function(inst)
end)

AddStategraphPostInit("wilson_client", function(inst)
end)