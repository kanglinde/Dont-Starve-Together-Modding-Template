local assets = {
    Asset( "ANIM", "anim/.zip" ),

    Asset("ATLAS", "images/.xml"),
    Asset("IMAGE", "images/.tex"),

    Asset("SOUNDPACKAGE", "sound/.fev"),
    Asset("SOUND", "sound/.fsb"),
}

local function onsave(inst, data)
end

local function onload(inst, data)
    if data then
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

    inst.AnimState:SetBank("")
    inst.AnimState:SetBuild("")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("")

    inst.OnSave = onsave
    inst.OnLoad = onload

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("", fn, assets)