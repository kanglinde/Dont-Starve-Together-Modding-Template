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

local function ChangeActionHandler(inst, act, fn)
	local old_handler = inst.actionhandlers[act].deststate
	inst.actionhandlers[act].deststate = function(inst, action)
		if IsIronlord(inst) then
			if type(fn) == "function" then
				return fn(inst, action, old_handler)
			elseif type(fn) == "string" then
				return fn
			end
		end
		return old_handler(inst, action)
	end
end

local function ChangeEventHandler(inst, event, fn)
	local old_handler = inst.events[event].fn 
	inst.events[event].fn  = function(inst, data)
		if IsIronlord(inst) then
			if type(fn) == "function" then
				fn(inst, data, old_handler)
			elseif type(fn) == "string" then
				inst.sg:GoToState(fn, data)
			end
			return
		end
		old_handler(inst, data)
	end
end

AddStategraphPostInit("wilson", function(inst)
end)

AddStategraphPostInit("wilson_client", function(inst)
end)