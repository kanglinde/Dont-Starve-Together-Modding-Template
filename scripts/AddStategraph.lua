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