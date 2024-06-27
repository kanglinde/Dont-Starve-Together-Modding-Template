local NewStates = 
{
     State{
          name = "",
          tags = {"attack", "notalking", "abouttoattack", "busy"},
          
          onenter = function(inst)
          end,

          onupdate = function(inst, dt)
          end,
          
          timeline=
          {
               TimeEvent(n * FRAMES, function(inst)
               end),     
          },

          ontimeout = function(inst)
          end,

          events=
          {
               EventHandler("animqueueover", function(inst)
                    if inst.AnimState:AnimDone() then
                         inst.sg:GoToState("idle")
                    end
               end),
          },

          onexit = function(inst)
          end,
     }
}

for _,state in pairs(NewStates) do
     AddStategraphState("wilson", state)
end


local NewActions = 
{
}

for act,state in pairs(NewActions) do
     AddStategraphActionHandler("wilson", ActionHandler(ACTIONS[act], state))
end


local NewEvents = 
{
}

for event,fn in pairs(NewEvents) do
     AddStategraphEvent("wilson", EventHandler(event, fn))
end


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