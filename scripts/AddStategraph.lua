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

-- new handlers
AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.action, fn))

AddStategraphEvent("wilson", EventHandler(event, fn))

-- change existed handlers
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