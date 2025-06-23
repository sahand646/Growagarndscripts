local ShacklesManager = {}

local player = game:GetService("Players").LocalPlayer

function ShacklesManager.Set(amount)
    local found = false
    for _, obj in pairs(player:GetDescendants()) do
        if (obj:IsA("IntValue") or obj:IsA("NumberValue")) and obj.Name == "Shackles" then
            obj.Value = amount
            found = true
            print("Shackles set to "..amount)
            break
        end
    end
    if not found then
        warn("Shackles not found!")
    end
end

function ShacklesManager.Get()
    for _, obj in pairs(player:GetDescendants()) do
        if (obj:IsA("IntValue") or obj:IsA("NumberValue")) and obj.Name == "Shackles" then
            return obj.Value
        end
    end
    warn("Shackles not found!")
    return nil
end

return ShacklesManager
