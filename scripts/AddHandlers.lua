-- modname == "workshop-id"
AddModRPCHandler(modname, "RPCname", function(player) -- client >> server
end)

AddClientModRPCHandler(modname, "RPCname", function() -- server >> client
    -- ThePlayer
end)

-- Sending RPC
SendModRPCToServer(GetModRPC(modname, "RPCname"))
SendModRPCToClient(GetClientModRPC(modname, "RPCname"), client.userid)

-- TheInput == input devices(mouse/keyboard/controller)
-- Only work on client?
TheInput:AddControlHandler(GLOBAL.CONTROL_NAME, function(down)
end)

TheInput:AddMoveHandler(function()
end)