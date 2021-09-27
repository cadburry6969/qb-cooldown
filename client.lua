function CheckCooldown()
    QBCore.Functions.TriggerCallback("cad-cooldown:server:checkcooldown", function(bool)
        if bool then
            return false
        else
            return true
        end
    end)
end

exports("CheckCooldown", CheckCooldown)
