local State = GLOBAL.State
local EventHandler = GLOBAL.EventHandler
local TimeEvent = GLOBAL.TimeEvent
local ACTIONS = GLOBAL.ACTIONS
local ActionHandler = GLOBAL.ActionHandler
local ShakeAllCameras = GLOBAL.ShakeAllCameras
local SpawnPrefab = GLOBAL.SpawnPrefab
local TheInput = GLOBAL.TheInput
local CanEntitySeeTarget = GLOBAL.CanEntitySeeTarget

local FRAMES = GLOBAL.FRAMES
local CAMERASHAKE = GLOBAL.CAMERASHAKE
local CONTROL_PRIMARY = GLOBAL.CONTROL_PRIMARY
local CONTROL_SECONDARY = GLOBAL.CONTROL_SECONDARY
local CONTROL_ACTION = GLOBAL.CONTROL_ACTION
local CONTROL_CONTROLLER_ACTION = GLOBAL.CONTROL_CONTROLLER_ACTION

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