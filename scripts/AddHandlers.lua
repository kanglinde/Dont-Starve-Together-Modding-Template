local ActionHandler = GLOBAL.ActionHandler
local EventHandler = GLOBAL.EventHandler
local TheInput = GLOBAL.TheInput

AddModRPCHandler("MOD_TAG", "RPCname", function(player) -- client >> server
end)

AddClientModRPCHandler("MOD_TAG", "RPCname", function() -- server >> client
end)

-- Sending RPC
SendModRPCToServer(GetModRPC("MOD_TAG", "RPCname"))
SendModRPCToClient(GetClientModRPC("MOD_TAG", "RPCname"), client.userid)

-- TheInput == input devices(mouse/keyboard/controller)
-- Only work on client?
TheInput:AddControlHandler(GLOBAL.CONTROL_NAME, function(down)
end)

TheInput:AddMoveHandler(function()
end)

local function AddActionHandler(action, state)
	action = ACTIONS[action]
	AddStategraphActionHandler("wilson", ActionHandler(action, state))
	AddStategraphActionHandler("wilson_client", ActionHandler(action, state))
end

local function AddEventHandler(event, fn)
	AddStategraphEvent("wilson", EventHandler(event, fn))
	AddStategraphEvent("wilson_client", EventHandler(event, fn))
end