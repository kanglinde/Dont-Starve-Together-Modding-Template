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