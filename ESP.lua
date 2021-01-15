local fonts = {
	Fredoka = Enum.Font.FredokaOne,
	Bangers = Enum.Font.Bangers,
	Creepster = Enum.Font.Creepster,
	Arcade = Enum.Font.Arcade,
	Classic = Enum.Font.Code
}

local function GetFont(String)
   if String == "Fredoka" then
     return fonts.Fredoka
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

local function IdentifyPlayer(Table, Plr)
    for i = 1,#Table do
      if Table[i].userid == Plr.UserId then
        Tag(Plr, Table[i].TagText .. Table[i].TagIdentification, Table[i].ColorTable, GetFont(Table[i].Font))
      end
   end
end

local function Tag(Player, Text, Color, Font)
    
  local R = Color[1]
  local G = Color[2]
  local B = Color[3]
  
  local ChosenFont = Font
  
  if Font == nil then
    ChosenFont = fonts.Classic
  end
  
  local BBGUI = Instance.new("BillboardGui")
  local BBGUI_Text = Instance.new("TextLabel")
  
  BBGUI.Parent = Player.Character:WaitForChild"Torso"
  BBGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  BBGUI.Active = true
  BBGUI.AlwaysOnTop = true
  BBGUI.LightInfluence = 1.000
  BBGUI.Size = UDim2.new(0, 200, 0, 50)
  
  BBGUI_Text.Parent = BBGUI
  BBGUI_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  BBGUI_Text.BackgroundTransparency = 1.000
  BBGUI_Text.Size = UDim2.new(0, 200, 0, 50)
  BBGUI_Text.Font = ChosenFont
  BBGUI_Text.Text = Text
  BBGUI_Text.TextColor3 = Color3.fromRGB(R, G, B)
  BBGUI_Text.TextScaled = true
  BBGUI_Text.TextSize = 14.000
  BBGUI_Text.TextWrapped = true
end
