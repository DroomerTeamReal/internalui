local IDEModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/lib/ide.lua"))()
local ReGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua"))()

local PrefabsId = `rbxassetid://{ReGui.PrefabsId}`
ReGui:Init({
	Prefabs = game:GetService("InsertService"):LoadLocalAsset(PrefabsId)
})

ReGui:DefineTheme("Dark Theme", {
	Text = Color3.fromRGB(255, 255, 255),
	WindowBg = Color3.fromRGB(20, 20, 20),
	TitleBarBg = Color3.fromRGB(30, 30, 30),
	TitleBarBgActive = Color3.fromRGB(45, 45, 45),
	Border = Color3.fromRGB(45, 45, 45),
	ResizeGrab = Color3.fromRGB(45, 45, 45),
})
ReGui:DefineTheme("Light Theme", {
	Text = Color3.fromRGB(0, 0, 0),
	WindowBg = Color3.fromRGB(255, 255, 255),
	TitleBarBg = Color3.fromRGB(220, 220, 220),
	TitleBarBgActive = Color3.fromRGB(200, 200, 200),
	Border = Color3.fromRGB(180, 180, 180),
	ResizeGrab = Color3.fromRGB(180, 180, 180),
})
ReGui:DefineTheme("Green Theme", {
	Text = Color3.fromRGB(255, 255, 255),
	WindowBg = Color3.fromRGB(35, 50, 35),
	TitleBarBg = Color3.fromRGB(45, 60, 45),
	TitleBarBgActive = Color3.fromRGB(60, 75, 60),
	Border = Color3.fromRGB(60, 75, 60),
	ResizeGrab = Color3.fromRGB(60, 75, 60),
})
ReGui:DefineTheme("Blue Theme", {
	Text = Color3.fromRGB(255, 255, 255),
	WindowBg = Color3.fromRGB(35, 50, 100),
	TitleBarBg = Color3.fromRGB(45, 60, 120),
	TitleBarBgActive = Color3.fromRGB(60, 75, 150),
	Border = Color3.fromRGB(60, 75, 150),
	ResizeGrab = Color3.fromRGB(60, 75, 150),
})
ReGui:DefineTheme("Pink Theme", {
	Text = Color3.fromRGB(200, 180, 200),
	WindowBg = Color3.fromRGB(35, 30, 35),
	TitleBarBg = Color3.fromRGB(35, 30, 35),
	TitleBarBgActive = Color3.fromRGB(50, 45, 50),
	Border = Color3.fromRGB(50, 45, 50),
	ResizeGrab = Color3.fromRGB(50, 45, 50),
})
ReGui:DefineTheme("Normal Theme", {
	Text = Color3.fromRGB(255, 255, 255),
	WindowBg = Color3.fromRGB(50, 50, 50),
	TitleBarBg = Color3.fromRGB(70, 70, 70),
	TitleBarBgActive = Color3.fromRGB(90, 90, 90),
	Border = Color3.fromRGB(90, 90, 90),
	ResizeGrab = Color3.fromRGB(90, 90, 90),
})

local Window = ReGui:TabsWindow({
	Title = "Frostware",
	Size = UDim2.fromOffset(400, 250),
	NoClose = true
})

local EditorTab = Window:CreateTab({Name = "Editor"})

local IDE = IDEModule.CodeFrame.new({
	Editable = true,
	FontSize = 13,
	Text = [[--Frostware]]
})

ReGui:ApplyFlags({
	Object = IDE.Gui,
	WindowClass = Window,
	Class = {
		Parent = EditorTab:GetObject(),
		Fill = true,
		BackgroundTransparency = 1
	}
})

local buttonFrame = Instance.new("Frame")
buttonFrame.Size = UDim2.new(1, 0, 0, 30)
buttonFrame.Position = UDim2.new(0, 0, 0, 8)
buttonFrame.BackgroundTransparency = 1
buttonFrame.Parent = EditorTab:GetObject()

local layout = Instance.new("UIListLayout")
layout.FillDirection = Enum.FillDirection.Horizontal
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 6)
layout.Parent = buttonFrame

EditorTab:Button({
	Text = "Execute",
	Callback = function()
		local success, err = pcall(function()
			loadstring(IDE.Text)()
		end)
		if not success then warn("Execution failed: ", err) end
	end,
	Parent = buttonFrame
})

EditorTab:Button({
	Text = "Clear",
	Callback = function()
		IDE:SetText("")
	end,
	Parent = buttonFrame
})

local OptionsTab = Window:CreateTab({Name = "Options"})

OptionsTab:Keybind({
	Label = "Toggle Internal UI",
	Value = Enum.KeyCode.Insert,
	Callback = function()
		Window:ToggleVisibility()
	end,
})
