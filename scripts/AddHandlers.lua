-- modname == "workshop-id"

-- client >> server
AddModRPCHandler(modname, "RPCname", function(player, ...) 
end)

SendModRPCToServer(GetModRPC(modname, "RPCname"), ...)

-- server >> client
AddClientModRPCHandler(modname, "RPCname", function(...)
    -- ThePlayer
end)

SendModRPCToClient(GetClientModRPC(modname, "RPCname"), client.userid, ...)
-- "client.userid" can be a list, if nil then "all clients" in the same shard


-- TheInput == input devices(mouse/keyboard/controller)
TheInput:AddControlHandler(GLOBAL.CONTROL_NAME, function(down)
end)

TheInput:AddMoveHandler(function()
end)