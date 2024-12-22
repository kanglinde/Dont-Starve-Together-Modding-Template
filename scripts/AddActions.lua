local function AddModAction(name, fn, data)
     AddAction(name, STRINGS.ACTIONS[name], fn)
     if data then
          if data.priority then ACTIONS.NAME.priority = data.priority end
          if data.distance then ACTIONS.NAME.distance = data.distance end
          if data.mount_valid then ACTIONS.NAME.mount_valid = data.mount_valid end
          if data.strfn then ACTIONS.NAME.strfn = data.strfn end
     end
end

AddComponentAction("USEITEM", "component", function(inst, doer, target, actions, right)
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