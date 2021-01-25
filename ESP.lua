_G.ESP = true
_G.BD = true
_G.Size = 15

--[[
GUI
]]

loadstring(game:HttpGet"https://raw.githubusercontent.com/Metacalled2/Streets/main/ESP_GUI.lua")()

local fonts = {Fredoka = Enum.Font.FredokaOne,Bangers = Enum.Font.Bangers,Creepster = Enum.Font.Creepster,Arcade = Enum.Font.Arcade,Classic = Enum.Font.Code}
local TagC = {}
local TagL = {}
local BBGUIS = {}

TagL = game:GetService'HttpService':JSONDecode(game:HttpGet"https://raw.githubusercontent.com/Metacalled2/Streets/main/Tables/TAG_LIST.JSON")
TagC = game:GetService'HttpService':JSONDecode(game:HttpGet"https://raw.githubusercontent.com/Metacalled2/Streets/main/Tables/COLOR_LIST.JSON")

local function ESP_LIST()
  return game:GetService'HttpService':JSONDecode(game:HttpGet"https://raw.githubusercontent.com/Metacalled2/Streets/main/Tables/ESP_LIST.lua")
end

local function GetColor(String)
   if String == "Red" then
    return TagC.Red
   elseif String == "Orange" then
    return TagC.Orange
   elseif String == "Yellow" then
    return TagC.Yellow
   elseif String == "Purple" then
    return TagC.Purple
   elseif String == "Green" then
    return TagC.Green
   elseif String == "RedPink" then
    return TagC.RedPink
   elseif String == "Pink" then
    return TagC.Pink
   elseif String == "Cyan" then
    return TagC.Cyan
   elseif String == "Blue" then
    return TagC.Blue
   elseif String == "Grl" then
    return TagC.Grl
   end
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

local function GetTagOrCustom(String)
   local Custom = true
   local NonCustoms = {"NG", "OG", "TH", "SC", "CO", "EX", "TR", "RE", "SMP"}
   
      if table.find(NonCustoms, String) then
        Custom = false
      end

   if Custom then
      local Split = string.split(String, "Custom/")
      warn('h')
      return " [ " .. tostring(Split[1]) .. " ] "
   else
   if String == "NG" then
        return " [ " .. TagL.NG .. " ] "
      elseif String == "OG" then
        return " [ " .. TagL.OG .. " ] "
      elseif String == "TH" then
        return " [ " .. TagL.TH .. " ] "
      elseif String == "SC" then
        return " [ " .. TagL.SC .. " ] "
      elseif String == "CO" then
        return " [ " .. TagL.CO .. " ] "
      elseif String == "EX" then
        return " [ " .. TagL.EX .. " ] "
      elseif String == "TR" then
        return " [ " .. TagL.TR .. " ] "
      elseif String == "RE" then
        return " [ " .. TagL.RE .. " ] "
      elseif String == "SMP" then
        return " [ " .. TagL.SMP .. " ] "
      else
        return " [ INVALID ] "
      end
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
  
  BBGUI.Parent = Player.Character:WaitForChild"Head"
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
  BBGUI_Text.TextSize = 15
  BBGUI_Text.TextWrapped = false
	
  table.insert(BBGUIS, BBGUI)
end

local function IdentifyPlayer(Table, Plr)
    for i = 1,#Table do
      if Table[i].userid == Plr.UserId then
        warn(Plr.Name)
        Tag(Plr, Table[i].TagText .. GetTagOrCustom(Table[i].TagIdentification), GetColor(Table[i].Color), GetFont(Table[i].Font))
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
      if BBGUIS[i]:FindFirstChild"TextLabel" then
	BBGUIS[i]:FindFirstChild"TextLabel".TextSize = _G.Size			
      end
    end
  elseif not _G.ESP then
      for i = 1,#BBGUIS do
        BBGUIS[i].Enabled = false
      end		
   end
end)
