-- modname == "workshop-id"

-- client >> server
AddModRPCHandler(modname, "RPCname", function(player) 
end)

SendModRPCToServer(GetModRPC(modname, "RPCname"))

-- server >> client
AddClientModRPCHandler(modname, "RPCname", function()
    -- ThePlayer
end)

SendModRPCToClient(GetClientModRPC(modname, "RPCname"), client.userid)


-- TheInput == input devices(mouse/keyboard/controller)
-- Only works on client?
TheInput:AddControlHandler(GLOBAL.CONTROL_NAME, function(down)
end)

TheInput:AddMoveHandler(function()
end)