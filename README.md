# Export Method

`exports["qb-cooldown"]:CheckCooldown()`   -- [ returns True or False ]

* True: Cooldown deactive
* False: cooldown active

# Callback Method

```lua
QBCore.Functions.TriggerCallback("cad-cooldown:server:checkcooldown", function(bool)
    if bool then      
        --> Cooldown Active <--
    else
        --> Cooldown InActive <--
    end
end)
```

* In Config you can set the cooldown timer

# How to Use it
For every robbery there will be a start point forexample: you start robbery by using a thermite to open a door then add this export or callback given above to check if there is cooldown active, if the cooldown is active then dont allow the player to proceed further if its deactive then allow player to rob.

```lua
-- Callback method
RegisterNetEvent('thermite:UseThermite', function()
    QBCore.Functions.TriggerCallback('cad-cooldown:server:checkcooldown', function(isRobbed)
        if not isRobbed then
            print("can start robbing")
        else
            print("cannot rob as already it was robbed previously, please wait")
        end
    end)        
end)

-- Export Method
RegisterNetEvent('thermite:UseThermite', function()   
    if exports["qb-cooldown"]:CheckCooldown() then
        print("can start robbing")
    else
        print("cannot rob as already it was robbed previously, please wait")
    end
end)
```
