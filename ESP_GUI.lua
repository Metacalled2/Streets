local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local OC = Instance.new("ImageButton")
local Title = Instance.new("Folder")
local Status = Instance.new("Folder")
local Buttons = Instance.new("Folder")
local BD_B = Instance.new("TextButton")
local ESP_B = Instance.new("TextButton")
local BD = Instance.new("TextLabel")
local ESP = Instance.new("TextLabel")
local STNGS = Instance.new("TextLabel")

ScreenGui.Parent = game:GetService"CoreGui"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Huh = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p"}

ScreenGui.Name = Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)] .. Huh[math.random(1, #Huh)]

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(80, 80, 121)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.0719999969, 0, 0.425999999, 0)
Main.Size = UDim2.new(0, 137, 0, 146)

OC.Name = "O/C"
OC.Parent = Main
OC.BackgroundColor3 = Color3.fromRGB(80, 80, 121)
OC.BorderSizePixel = 0
OC.Position = UDim2.new(1, 0, 0.515606403, 0)
OC.Size = UDim2.new(0, 29, 0, 32)
OC.Image = "rbxassetid://4726772330"

Title.Name = "Title"
Title.Parent = Main

Status.Name = "Status"
Status.Parent = Main

Buttons.Name = "Buttons"
Buttons.Parent = Main

BD_B.Name = "BD_B"
BD_B.Parent = Main
BD_B.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
BD_B.BorderSizePixel = 0
BD_B.Position = UDim2.new(0.0656934306, 0, 0.686839223, 0)
BD_B.Size = UDim2.new(0, 67, 0, 34)
BD_B.Font = Enum.Font.SourceSansBold
BD_B.Text = "BACKDOOR"
BD_B.TextColor3 = Color3.fromRGB(255, 255, 255)
BD_B.TextScaled = true
BD_B.TextSize = 14.000
BD_B.TextWrapped = true

ESP_B.Name = "ESP_B"
ESP_B.Parent = Main
ESP_B.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
ESP_B.BorderSizePixel = 0
ESP_B.Position = UDim2.new(0.0656934306, 0, 0.346327811, 0)
ESP_B.Size = UDim2.new(0, 67, 0, 34)
ESP_B.Font = Enum.Font.SourceSansBold
ESP_B.Text = "ESP"
ESP_B.TextColor3 = Color3.fromRGB(255, 255, 255)
ESP_B.TextScaled = true
ESP_B.TextSize = 14.000
ESP_B.TextWrapped = true

BD.Name = "BD"
BD.Parent = Main
BD.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
BD.BorderSizePixel = 0
BD.Position = UDim2.new(0.613138735, 0, 0.680813313, 0)
BD.Size = UDim2.new(0, 35, 0, 34)
BD.Font = Enum.Font.SourceSansBold
BD.Text = ""
BD.TextColor3 = Color3.fromRGB(255, 255, 255)
BD.TextScaled = true
BD.TextSize = 14.000
BD.TextWrapped = true

ESP.Name = "ESP"
ESP.Parent = Main
ESP.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
ESP.BorderSizePixel = 0
ESP.Position = UDim2.new(0.613138735, 0, 0.346327811, 0)
ESP.Size = UDim2.new(0, 35, 0, 34)
ESP.Font = Enum.Font.SourceSansBold
ESP.Text = ""
ESP.TextColor3 = Color3.fromRGB(255, 255, 255)
ESP.TextScaled = true
ESP.TextSize = 14.000
ESP.TextWrapped = true

STNGS.Name = "STNGS"
STNGS.Parent = Main
STNGS.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
STNGS.BorderSizePixel = 0
STNGS.Size = UDim2.new(0, 137, 0, 40)
STNGS.Font = Enum.Font.SourceSansBold
STNGS.Text = "SETTINGS"
STNGS.TextColor3 = Color3.fromRGB(255, 255, 255)
STNGS.TextScaled = true
STNGS.TextSize = 14.000
STNGS.TextWrapped = true

local function ZWKLGON_fake_script() -- OC.O/C 
	local script = Instance.new('LocalScript', OC)

	local Button = script.Parent
	local Main_F = script.Parent.Parent
	local OpenST = false
	local DoingT = false
	
	Button.MouseButton1Down:Connect(function()
		if not (OpenST) and not (DoingT) then
			DoingT = true
			OpenST = true
			Button.Rotation = 180
			Main_F:TweenPosition(UDim2.new(0, 0,0.426, 0))
			DoingT = false
		else
			if (OpenST) and not (DoingT) then
				DoingT = true
				OpenST = false
				Button.Rotation = 0
				Main_F:TweenPosition(UDim2.new(-0.072, 0,0.426, 0))
				DoingT = false
			end
		end
	end)
end
coroutine.wrap(ZWKLGON_fake_script)()
local function PEPWK_fake_script() -- BD_B.BD_B 
	local script = Instance.new('LocalScript', BD_B)

	local Button = script.Parent
	local Main_F = script.Parent.Parent
	
	local Status = {
		Off = Color3.fromRGB(255, 0, 0),
		On = Color3.fromRGB(0, 255, 0)
	}
	
	Button.MouseButton1Down:Connect(function()
		if _G.BD == true then
			local BD_ST = Main_F:WaitForChild"BD"
			
			BD_ST.BackgroundColor3 = Status.Off
			_G.BD = false
		elseif _G.BD == false then
			local BD_ST = Main_F:WaitForChild"BD"
			BD_ST.BackgroundColor3 = Status.On
			_G.BD = true
		end
	end)
end
coroutine.wrap(PEPWK_fake_script)()
local function ZQEBYWN_fake_script() -- ESP_B.ESP_B 
	local script = Instance.new('LocalScript', ESP_B)

	local Button = script.Parent
	local Main_F = script.Parent.Parent
	
	local Status = {
		Off = Color3.fromRGB(255, 0, 0),
		On = Color3.fromRGB(0, 255, 0)
	}
	
	Button.MouseButton1Down:Connect(function()
		if _G.ESP == true then
			local EST_ST = Main_F:WaitForChild"ESP"
			
			EST_ST.BackgroundColor3 = Status.Off
			_G.ESP = false
		elseif _G.ESP == false then
			local EST_ST = Main_F:WaitForChild"ESP"
			EST_ST.BackgroundColor3 = Status.On
			_G.ESP = true
		end
	end)
end
coroutine.wrap(ZQEBYWN_fake_script)()
