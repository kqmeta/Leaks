-- AEZY HUB ðŸ‡µðŸ‡­
-- discord.gg/DzpBf95AK

local keyLocked = true
local userUnlocked = false
local savedKeys = {
    ["AEZYHUB2025"] = true,
    ["PREMIUM123"] = true,
    ["VIPACCESS"] = true,
    ["PHILIPPINES"] = true,
}

local vipUsers = {}

-- IMPORTANT: Replace this with actual user IDs
-- Example: vipUsers = {123456, 789012, 345678}

-- Safe loading function for external scripts
local function safeLoadScript(url)
    local success, loadedScript = pcall(function()
        return game:HttpGet(url, true)
    end)
    
    if success and loadedScript then
        local executeSuccess, executeError = pcall(function()
            local func, compileError = loadstring(loadedScript)
            if func then
                return func()
            else
                error("Compile error: " .. tostring(compileError))
            end
        end)
        
        if not executeSuccess then
            warn("[AEZY HUB] Script execution failed:", executeError)
            return false, executeError
        end
        return true
    else
        warn("[AEZY HUB] Failed to load script from:", url, "Error:", loadedScript)
        return false, loadedScript
    end
end

local function makeDraggable(gui)
    local dragging = false
    local dragInput, dragStart, startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    -- Allow dragging from the entire UI frame
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            -- Add a subtle visual feedback when dragging starts
            local originalBackground = gui.BackgroundColor3
            gui.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    gui.BackgroundColor3 = originalBackground
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragging then
            dragInput = input
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            update(input)
        end
    end)
end

local function checkUser()
    local player = game:GetService("Players").LocalPlayer
    if not player then return false end
    
    local playerId = player.UserId
    for _, id in ipairs(vipUsers) do
        if playerId == id then
            return true
        end
    end
    return false
end

local function loadSavedKey()
    if not isfile then 
        warn("[AEZY HUB] isfile function not available")
        return nil 
    end
    if isfile("aezyhub_key.txt") then
        local key = readfile("aezyhub_key.txt")
        key = key:upper():gsub("%s+", "")
        if savedKeys[key] then
            return key
        end
    end
    return nil
end

local function saveKey(key)
    if not writefile then 
        warn("[AEZY HUB] writefile function not available")
        return 
    end
    pcall(function()
        writefile("aezyhub_key.txt", key)
    end)
end

local function checkLinkvertise(key)
    -- Simple check against saved keys
    if savedKeys[key] then
        return true, "Premium"
    end
    
    -- You can add actual Linkvertise API call here later
    -- For now, return false
    return false, "Invalid"
end

local function loadMainHubScript()
    print("[AEZY HUB] Loading main hub script...")
    
    -- Try multiple sources for reliability
    local sources = {
        "add your github too if you want btw", -- Replace with your GitHub
        "https://pastebin.com/raw/g4JpNNy1", -- Your pastebin
        "not need but backup incase" -- Alternative source
    }
    
    for i, source in ipairs(sources) do
        print("[AEZY HUB] Trying source", i, ":", source)
        local success, errorMsg = safeLoadScript(source)
        if success then
            print("[AEZY HUB] Successfully loaded from source", i)
            return true
        else
            warn("[AEZY HUB] Failed to load from source", i, ":", errorMsg)
        end
        wait(0.5) -- Small delay between attempts
    end
    
    -- If all sources fail, show an error
    warn("[AEZY HUB] All sources failed. Please check your internet connection.")
    return false
end

loadMainHubScript()

-- Main execution with better error handling
task.spawn(function()
    local success, err = pcall(function()
        -- Wait for player to be ready
        local player = game:GetService("Players").LocalPlayer
        if not player then
            repeat task.wait() until game:GetService("Players").LocalPlayer
        end
        
        -- First check for saved key
        local savedKey = loadSavedKey()
        if savedKey then
            userUnlocked = true
            print("[AEZY HUB] Saved key found, loading hub...")
            local loadSuccess = loadMainHubScript()
            if not loadSuccess then
                makeKeyUI() -- Show UI if loading fails
            end
        elseif checkUser() then
            print("[AEZY HUB] Whitelisted user detected, loading hub...")
            local loadSuccess = loadMainHubScript()
            if not loadSuccess then
                makeKeyUI() -- Show UI if loading fails
            end
        else
            print("[AEZY HUB] No saved key or whitelist, showing verification UI...")
            makeKeyUI()
        end
    end)
    
    if not success then
        warn("[AEZY HUB] Critical error:", err)
        -- Even if there's an error, try to show the UI
        pcall(makeKeyUI)
    end
end)