-- V HUB | NYX EDITION
-- Black & White UI

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "VHub"
gui.ResetOnSpawn = false

pcall(function()
    gui.Parent = CoreGui
end)

if not gui.Parent then
    gui.Parent = player:WaitForChild("PlayerGui")
end

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(300, 240)
main.Position = UDim2.new(0.5, -150, 0.5, -120)
main.BackgroundColor3 = Color3.fromRGB(12,12,12)
main.BorderSizePixel = 0
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0,12)
corner.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,50)
title.BackgroundTransparency = 1
title.Text = "V HUB  |  NYX"
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 22
title.Font = Enum.Font.GothamBold
title.Parent = main

local status = Instance.new("TextLabel")
status.Position = UDim2.fromOffset(15,60)
status.Size = UDim2.new(1,-30,0,30)
status.BackgroundTransparency = 1
status.Text = "NYX: NOT STARTED"
status.TextColor3 = Color3.fromRGB(180,180,180)
status.Font = Enum.Font.Gotham
status.TextSize = 13
status.Parent = main

local button = Instance.new("TextButton")
button.Position = UDim2.fromOffset(20,110)
button.Size = UDim2.new(1,-40,0,45)
button.BackgroundColor3 = Color3.fromRGB(255,255,255)
button.TextColor3 = Color3.fromRGB(0,0,0)
button.Text = "ACTIVATE NYX"
button.Font = Enum.Font.GothamBold
button.TextSize = 15
button.Parent = main

local bc = Instance.new("UICorner")
bc.CornerRadius = UDim.new(0,8)
bc.Parent = button

local started = false

button.MouseButton1Click:Connect(function()
    if started then return end
    started = true

    status.Text = "NYX: LOADING..."
    button.Text = "LOADING..."

    -- NYX external loader intentionally not executed here.
    status.Text = "NYX: READY FOR INTEGRATION"
    button.Text = "ACTIVATED"
end)
