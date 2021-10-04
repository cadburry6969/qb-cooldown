local isCooldown = false

Citizen.CreateThread(function()
    while true do        
        Citizen.Wait(1000)
        if isCooldown then
            Citizen.SetTimeout(Config.CooldownTimer * 60 * 1000, function()
                isCooldown = false
            end)   
        end         
    end
end)

RegisterServerEvent("cad-cooldown:server:coolsync")
AddEventHandler("cad-cooldown:server:coolsync", function(bool)
    isCooldown = bool    
end)

QBCore.Functions.CreateCallback("cad-cooldown:server:checkcooldown", function(source, cb)
    if isCooldown then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Commands.Add("cooldown", "Toggle Robbery Cooldown", {{name="state", help="true/false"}}, false, function(src, args)    
    if tostring(args[1]) == "true" then
        isCooldown = true
    elseif tostring(args[1]) == "false" then
        isCooldown = false
    end    
end, 'admin')
