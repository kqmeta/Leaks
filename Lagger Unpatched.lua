repeat task.wait() until game.Players.LocalPlayer

local Player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local ScreenGui = Instance.new("ScreenGui", Player:WaitForChild("PlayerGui"))
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "IllusionLagUI"

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 220, 0, 420)
MainFrame.Position = UDim2.new(0.5, -110, 0.5, -210)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 25, 45)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame)

local IsLagging, IsCrashing, BoosterEnabled, ClientReduction = false, false, false, false
local LagTarget, CrashTarget = 10, 2
local PowerValue, SpeedValue = 0, 0
local JumpPowerValue = 50 
local LastJump = 0

RunService.RenderStepped:Connect(function()
    if BoosterEnabled and Player.Character then
        local RootPart = Player.Character:FindFirstChild("HumanoidRootPart")
        local Humanoid = Player.Character:FindFirstChild("Humanoid")
        
        if RootPart and Humanoid then
            local MoveDirection = Humanoid.MoveDirection
            if MoveDirection.Magnitude > 0 then
                local CurrentVelocity = RootPart.AssemblyLinearVelocity
                local TargetVelocity = MoveDirection.Unit * SpeedValue

                RootPart.AssemblyLinearVelocity = Vector3.new(
                    TargetVelocity.X,
                    CurrentVelocity.Y,
                    TargetVelocity.Z
                )
            end

            if Humanoid.FloorMaterial ~= Enum.Material.Air then
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    if tick() - LastJump > 0.2 then
                        LastJump = tick()
                        RootPart.AssemblyLinearVelocity = Vector3.new(
                            RootPart.AssemblyLinearVelocity.X,
                            JumpPowerValue,
                            RootPart.AssemblyLinearVelocity.Z
                        )
                    end
                end
            end
        end
    end

    local CurrentTarget = nil
    if IsCrashing then 
        CurrentTarget = ClientReduction and 30 or CrashTarget 
    elseif IsLagging then 
        CurrentTarget = ClientReduction and 30 or LagTarget 
    end

    if CurrentTarget and CurrentTarget > 0 then
        local StartTime = os.clock()
        while os.clock() - StartTime < (1 / CurrentTarget) do end
    end
end)

local TitleLabel = Instance.new("TextLabel", MainFrame)
TitleLabel.Size = UDim2.new(1, -20, 0, 35)
TitleLabel.Position = UDim2.new(0, 12, 0, 5)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "KOMETA LAG"
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 16
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

local function CreateInput(Name, YPos, Default)
    local InputFrame = Instance.new("Frame", MainFrame)
    InputFrame.Size = UDim2.new(1, -20, 0, 45)
    InputFrame.Position = UDim2.new(0, 10, 0, YPos)
    InputFrame.BackgroundColor3 = Color3.fromRGB(25, 35, 55)
    Instance.new("UICorner", InputFrame)

    local InputLabel = Instance.new("TextLabel", InputFrame)
    InputLabel.Size = UDim2.new(0.6, 0, 1, 0)
    InputLabel.Position = UDim2.new(0, 10, 0, 0)
    InputLabel.BackgroundTransparency = 1
    InputLabel.Text = Name
    InputLabel.Font = Enum.Font.Gotham
    InputLabel.TextSize = 13
    InputLabel.TextColor3 = Color3.new(1, 1, 1)
    InputLabel.TextXAlignment = Enum.TextXAlignment.Left

    local TextBox = Instance.new("TextBox", InputFrame)
    TextBox.Size = UDim2.new(0, 50, 0, 25)
    TextBox.Position = UDim2.new(1, -60, 0.5, -12)
    TextBox.BackgroundColor3 = Color3.fromRGB(40, 50, 70)
    TextBox.BorderSizePixel = 0
    TextBox.Text = tostring(Default)
    TextBox.TextColor3 = Color3.new(1, 1, 1)
    TextBox.Font = Enum.Font.Gotham
    TextBox.TextSize = 12
    Instance.new("UICorner", TextBox)

    TextBox.FocusLost:Connect(function()
        local NewVal = tonumber(TextBox.Text) or 0
        if Name == "Power" then PowerValue = NewVal else SpeedValue = NewVal end
    end)
end

local function CreateToggle(Name, YPos, Callback)
    local ToggleFrame = Instance.new("Frame", MainFrame)
    ToggleFrame.Size = UDim2.new(1, -20, 0, 40)
    ToggleFrame.Position = UDim2.new(0, 10, 0, YPos)
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(25, 35, 55)
    Instance.new("UICorner", ToggleFrame)

    local ToggleLabel = Instance.new("TextLabel", ToggleFrame)
    ToggleLabel.Size = UDim2.new(0.65, 0, 1, 0)
    ToggleLabel.Position = UDim2.new(0, 10, 0, 0)
    ToggleLabel.BackgroundTransparency = 1
    ToggleLabel.Text = Name
    ToggleLabel.Font = Enum.Font.Gotham
    ToggleLabel.TextSize = 12
    ToggleLabel.TextColor3 = Color3.new(1, 1, 1)
    ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local SwitchButton = Instance.new("TextButton", ToggleFrame)
    SwitchButton.Size = UDim2.new(0, 34, 0, 18)
    SwitchButton.Position = UDim2.new(1, -44, 0.5, -9)
    SwitchButton.Text = ""
    SwitchButton.BackgroundColor3 = Color3.fromRGB(60, 70, 90)
    Instance.new("UICorner", SwitchButton)

    local SwitchDot = Instance.new("Frame", SwitchButton)
    SwitchDot.Size = UDim2.new(0, 14, 0, 14)
    SwitchDot.Position = UDim2.new(0, 2, 0, 2)
    SwitchDot.BackgroundColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", SwitchDot)

    local IsOn = false
    SwitchButton.MouseButton1Click:Connect(function()
        IsOn = not IsOn
        SwitchDot:TweenPosition(IsOn and UDim2.new(1, -16, 0, 2) or UDim2.new(0, 2, 0, 2), "Out", "Quad", 0.15, true)
        SwitchButton.BackgroundColor3 = IsOn and Color3.fromRGB(0, 170, 90) or Color3.fromRGB(60, 70, 90)
        Callback(IsOn)
    end)
end

CreateToggle("Lag", 45, function(Value) IsLagging = Value end)
CreateInput("Power", 90, 0)
CreateToggle("Speed", 140, function(Value) BoosterEnabled = Value end)
CreateInput("Speed Value", 185, 0)
CreateToggle("Crasher", 235, function(Value) IsCrashing = Value end)
CreateToggle("Reduce Client Lag", 280, function(Value) ClientReduction = Value end)

local SaveButton = Instance.new("TextButton", MainFrame)
SaveButton.Size = UDim2.new(1, -20, 0, 35)
SaveButton.Position = UDim2.new(0, 10, 1, -50)
SaveButton.BackgroundColor3 = Color3.fromRGB(0, 170, 90)
SaveButton.Text = "SAVE CONFIG"
SaveButton.TextColor3 = Color3.new(1, 1, 1)
SaveButton.Font = Enum.Font.GothamBold
SaveButton.TextSize = 12
Instance.new("UICorner", SaveButton)

SaveButton.MouseButton1Click:Connect(function()
    SaveButton.Text = "SAVED!"
    task.wait(0.5)
    SaveButton.Text = "SAVE CONFIG"
end)

local MinimizeButton = Instance.new("TextButton", MainFrame)
MinimizeButton.Size = UDim2.new(0, 25, 0, 25)
MinimizeButton.Position = UDim2.new(1, -30, 0, 5)
MinimizeButton.Text = "-"
MinimizeButton.BackgroundColor3 = Color3.fromRGB(30, 40, 60)
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", MinimizeButton)

local MiniCube = nil
MinimizeButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    if not MiniCube then
        MiniCube = Instance.new("TextButton", ScreenGui)
        MiniCube.Size = UDim2.new(0, 35, 0, 35)
        MiniCube.Position = UDim2.new(0.05, 0, 0.5, 0)
        MiniCube.Text = "IL"
        MiniCube.TextColor3 = Color3.new(1, 1, 1)
        MiniCube.BackgroundColor3 = Color3.fromRGB(0, 170, 90)
        Instance.new("UICorner", MiniCube)
        MiniCube.MouseButton1Click:Connect(function()
            MainFrame.Visible = true
            MiniCube.Visible = false
        end)
    end
    MiniCube.Visible = true
end)