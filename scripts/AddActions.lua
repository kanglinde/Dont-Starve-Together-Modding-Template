local ACTIONS = GLOBAL.ACTIONS
local STRINGS = GLOBAL.STRINGS

local function AddModAction(name, fn, priority, distance, mount_valid, strfn)
     AddAction(name, STRINGS.ACTIONS[name], fn)
     ACTIONS.NAME.priority = priority
     ACTIONS.NAME.distance = distance
     ACTIONS.NAME.mount_valid = mount_valid
     ACTIONS.NAME.strfn = strfn
end

AddComponentAction("USEITEM", "component", function(inst, doer, target, actions, right)
end)