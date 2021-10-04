# Export Method

exports["qb-cooldown"]:CheckCooldown()     [ returns True or False ]
* True: Cooldown active
* False: cooldown deactive

# Callback Method

QBCore.Functions.TriggerCallback("cad-cooldown:server:checkcooldown", function(bool)
    if bool then        
        --> Cooldown Active <--
    else
        --> Cooldown InActive <--
    end
end)


* In Config you can set the cooldown timer
