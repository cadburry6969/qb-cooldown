# Export Method

exports["cad-cooldown"]:CheckCooldown()     [ returns True or False ]
* True: you can start rob
* False: cooldown enabled

# Callback Method

QBCore.Functions.TriggerCallback("cad-cooldown:server:checkcooldown", function(bool)
    if bool then
    --> true <--
    else
    --> false <--
    end
end)


* In Config you can set the cooldown timer

