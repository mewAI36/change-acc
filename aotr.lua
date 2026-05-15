repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Config = getgenv().Config or {
    ["Required Gems"] = 1000000,
    ["Check Delay"] = 60
}

local RequiredGems = tonumber(Config["Required Gems"])

local function getGems()

    local success, result = pcall(function()

        local amountLabel = Player
            :WaitForChild("PlayerGui")
            :WaitForChild("Interface")
            :WaitForChild("Topbar")
            :WaitForChild("Main")
            :WaitForChild("Currencies")
            :WaitForChild("Gems")
            :WaitForChild("Amount")

        local text = amountLabel.Text:gsub(",", "")

        return tonumber(text)
    end)

    if success then
        return result
    end

    return nil
end

while task.wait(Config["Check Delay"]) do

    local gems = getGems()

    if gems then

        print("Current Gems:", gems)

        if gems >= RequiredGems then

            writefile(
                Player.Name .. ".txt",
                "Completed-AOTR_" .. tostring(gems)
            )

            print("Saved:", Player.Name .. ".txt")

            break
        end
    end
end
