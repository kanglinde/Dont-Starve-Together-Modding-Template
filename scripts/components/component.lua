local function onexample(self, val)
end

local Component = Class(function(self, inst)
     self.inst = inst
     self.example = false
end,
{
     example = onexample,
})

function Component:Fn()
end

return Component