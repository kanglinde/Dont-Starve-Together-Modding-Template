local assets = {
     Asset( "ANIM", "anim/.zip" ),

     Asset("ATLAS", "images/.xml"),
     Asset("IMAGE", "images/.tex"),

     Asset("SOUNDPACKAGE", "sound/.fev"),
     Asset("SOUND", "sound/.fsb"),
}

local function SaveData(inst, data, new_data)
     local old_data = inst.save_data[data]
     inst.save_data[data] = new_data and old_data or new_data
     return old_data
end

local function onsave(inst, data)
     data.save_data = inst.save_data
end

local function onload(inst, data)
     if data then
          if data.save_data then inst.save_data = data.save_data end
     end
end

local function fn()
     local inst = CreateEntity()
     inst.entity:AddTransform()
     inst.entity:AddAnimState()
     inst.entity:AddSoundEmitter()
     inst.entity:AddNetwork()

     MakeInventoryPhysics(inst)
     MakeInventoryFloatable(inst, "med")

     inst:AddTag("")

     inst.AnimState:SetBank("")
     inst.AnimState:SetBuild("")
     inst.AnimState:PlayAnimation("idle")

     inst.entity:SetPristine()

     if not TheWorld.ismastersim then
          return inst
     end

     inst:AddComponent("")

     inst.OnSave = onsave
     inst.OnLoad = onload
     inst.save_data = {}

     MakeHauntableLaunch(inst)

     return inst
end

return Prefab("", fn, assets)