function CheckCooldown()
    QBCore.Functions.TriggerCallback("cad-cooldown:server:checkcooldown", function(bool)
        if bool then
            return true
        else
            return false
        end
    end)
end

exports("CheckCooldown", CheckCooldown)
