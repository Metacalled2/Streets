_G.ESP = true

--[[
GUI
]]

loadstring(game:HttpGet"https://raw.githubusercontent.com/Metacalled2/Streets/main/ESP_GUI.lua")()

local fonts = {
	Fredoka = Enum.Font.FredokaOne,
	Bangers = Enum.Font.Bangers,
	Creepster = Enum.Font.Creepster,
	Arcade = Enum.Font.Arcade,
	Classic = Enum.Font.Code
}

local BBGUIS = {}

local function ESP_LIST()
  --[[
   DEBUGGING
  ]]
  --warn(game:GetService'HttpService':JSONDecode(game:HttpGet"https://raw.githubusercontent.com/Metacalled2/Streets/main/Tables/ESP_LIST.lua"))
  return game:GetService'HttpService':JSONDecode(game:HttpGet"https://raw.githubusercontent.com/Metacalled2/Streets/main/Tables/ESP_LIST.lua")
end

local function GetFont(String)
   if String == "Fredoka" then
     return fonts.FredokaOne
   elseif String == "Bangers" then
     return fonts.Bangers
   elseif String == "Creepster" then
     return fonts.Creepster
   elseif String == "Arcade" then
     return fonts.Arcade
   elseif String == "Classic" then
     return fonts.Classic
   end
end

local function Tag(Player, Text, Color, Font)
    
  local Font = nil
    
  local R = Color[1]
  local G = Color[2]
  local B = Color[3]
  
  if Font ~= nil then
     ChosenFont = Font
  end
  
  if Font == nil then
    ChosenFont = fonts.Classic
  end
  
  local BBGUI = Instance.new("BillboardGui")
  local BBGUI_Text = Instance.new("TextLabel")
  
  BBGUI.Parent = Player.Character:FindFirstChild"Head"
  BBGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  BBGUI.Active = true
  BBGUI.AlwaysOnTop = true
  BBGUI.LightInfluence = 1.000
  BBGUI.Size = UDim2.new(0, 200, 0, 50)
  BBGUI.StudsOffset = Vector3.new(0, 2, 0)
  
  BBGUI_Text.Parent = BBGUI
  BBGUI_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  BBGUI_Text.BackgroundTransparency = 1.000
  BBGUI_Text.Size = UDim2.new(0, 200, 0, 50)
  BBGUI_Text.Font = ChosenFont
  BBGUI_Text.Text = Text
  BBGUI_Text.TextColor3 = Color3.fromRGB(R, G, B)
  BBGUI_Text.TextScaled = true
  BBGUI_Text.TextSize = 15.00
  BBGUI_Text.TextWrapped = false
	
  table.insert(BBGUIS, BBGUI)
end

local function IdentifyPlayer(Table, Plr)
    for i = 1,#Table do
      if Table[i].userid == Plr.UserId then
        if Table[i].userid == game.Players.LocalPlayer.UserId then return warn('is self') end
	warn(Plr.Name .. " FOUND!")
        Tag(Plr, Table[i].TagText .. Table[i].TagIdentification, Table[i].ColorTable, GetFont(Table[i].Font))
        return true
      end
   end
end

local function CAESP(PLR)
  PLR.CharacterAdded:Connect(function(Character)
    local W4H = Character:WaitForChild"Head"
    
    IdentifyPlayer(ESP_LIST(), PLR)
  end)
end

game.Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function(Character)
      IdentifyPlayer(ESP_LIST(), Player)			
    end)
end)

for Key, Value in pairs(game:GetService"Players":GetPlayers()) do
   CAESP(Value)
   
   if Value.Character then
     IdentifyPlayer(ESP_LIST(), Value)	
   end
end

game:GetService"RunService".Heartbeat:Connect(function()
  if _G.ESP then
    for i = 1,#BBGUIS do
      BBGUIS[i].Enabled = true
    end
  elseif not _G.ESP then
      for i = 1,#BBGUIS do
        BBGUIS[i].Enabled = false
      end		
   end
end)
