local function onexample(self, val)
end

local Component = Class(function(self, inst)
     self.inst = inst
     self.example = false

     --self.inst:StartUpdatingComponent(self)
end,
{
     example = onexample,
})

function Component:Fn()
end

function Component:OnSave()
end

function Component:OnLoad()
end

function Component:OnUpdate(dt)
end

return Component