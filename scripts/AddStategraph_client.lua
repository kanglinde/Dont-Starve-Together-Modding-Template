local TIMEOUT = 2

local NewStates = 
{
     State{
          name = "name",
          tags = {"attack", "notalking", "abouttoattack", "busy"},
          server_states = {"name"}
          
          onenter = function(inst)
               inst:PerformPreviewBufferedAction()
               inst.sg:SetTimeout(TIMEOUT)
          end,

          ontimeout = function(inst)
               inst:ClearBufferedAction()
               inst.sg:GoToState("idle", true)
          end,
  

          onupdate = function(inst, dt)
          end,
          
          timeline=
          {
               TimeEvent(n * FRAMES, function(inst)
               end),     
          },

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
     AddStategraphState("wilson_client", state)
end

-- new handlers
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.action, fn))

AddStategraphEvent("wilson_client", EventHandler(event, fn))

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

AddStategraphPostInit("wilson_client", function(inst)
end)