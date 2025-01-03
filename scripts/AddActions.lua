AddAction(name, STRINGS.ACTIONS[name], function(act)
    return true
end)
ACTIONS.NAME.mount_valid = true

-- using an object in the world
AddComponentAction("SCENE", "component", function(inst, doer, actions, right)
end)

-- using an inventory item on an object in the world
AddComponentAction("USEITEM", "component", function(inst, doer, target, actions, right)
end)

-- using an inventory item on a point in the world
AddComponentAction("POINT", "component", function(inst, doer, pos, actions, right, target)
end)

-- using an equiped item on yourself or a target object in the world
AddComponentAction("EQUIPPED", "component", function(inst, doer, target, actions, right)
end)

-- using an inventory item
AddComponentAction("INVENTORY", "component", function(inst, doer, actions, right)
end)

local NewActions = {}

for act,state in pairs(NewActions) do
    AddStategraphActionHandler("wilson", ActionHandler(ACTIONS[act], state))
    AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS[act], state))
end

local NewEvents = {}

for event,fn in pairs(NewEvents) do
    AddStategraphEvent("wilson", EventHandler(event, fn))
    AddStategraphEvent("wilson_client", EventHandler(event, fn))
end