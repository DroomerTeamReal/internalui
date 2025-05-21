local StarterGui = game:GetService("StarterGui")

pcall(function()
	StarterGui:SetCore("DevConsoleVisible", true)
end)

wait(1)
local G2L = {}

local CoreGui = game:GetService("CoreGui")
local DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")

if not DevConsoleMaster then
	task.wait(0.25)
	DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
end

if not DevConsoleMaster then
	warn("DevConsoleMaster not found in CoreGui after 2 attempts!")
	return
end

-- MainFrame inserted into DevConsoleMaster
G2L["2"] = Instance.new("Frame", DevConsoleMaster);
G2L["2"]["Active"] = true;
G2L["2"]["ZIndex"] = 999999999;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["2"]["Size"] = UDim2.new(0, 600, 0, 350);
G2L["2"]["Position"] = UDim2.new(0.3, -489, 0.3, -266);
G2L["2"]["Name"] = [[MainFrame]];


-- StarterGui.InternalGUI.MainFrame.Execute
G2L["3"] = Instance.new("TextButton", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextSize"] = 14;
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["ZIndex"] = 999999999;
G2L["3"]["Size"] = UDim2.new(0, 100, 0, 25);
G2L["3"]["Text"] = [[Execute]];
G2L["3"]["Name"] = [[Execute]];
G2L["3"]["Position"] = UDim2.new(0, 10, 1.00571, -40);


-- StarterGui.InternalGUI.MainFrame.Execute.TextAnim
G2L["4"] = Instance.new("LocalScript", G2L["3"]);
G2L["4"]["Name"] = [[TextAnim]];


-- StarterGui.InternalGUI.MainFrame.Clear
G2L["5"] = Instance.new("TextButton", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["ZIndex"] = 999999999;
G2L["5"]["Size"] = UDim2.new(0, 100, 0, 25);
G2L["5"]["Text"] = [[Clear]];
G2L["5"]["Name"] = [[Clear]];
G2L["5"]["Position"] = UDim2.new(0, 120, 1.00571, -40);


-- StarterGui.InternalGUI.MainFrame.Clear.TextAnim
G2L["6"] = Instance.new("LocalScript", G2L["5"]);
G2L["6"]["Name"] = [[TextAnim]];


-- StarterGui.InternalGUI.MainFrame.Save
G2L["7"] = Instance.new("TextButton", G2L["2"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["ZIndex"] = 999999999;
G2L["7"]["Size"] = UDim2.new(0, 100, 0, 25);
G2L["7"]["Text"] = [[Save]];
G2L["7"]["Name"] = [[Save]];
G2L["7"]["Position"] = UDim2.new(0, 230, 1.00571, -40);


-- StarterGui.InternalGUI.MainFrame.Save.TextAnim
G2L["8"] = Instance.new("LocalScript", G2L["7"]);
G2L["8"]["Name"] = [[TextAnim]];


-- StarterGui.InternalGUI.MainFrame.Open
G2L["9"] = Instance.new("TextButton", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["ZIndex"] = 999999999;
G2L["9"]["Size"] = UDim2.new(0, 100, 0, 25);
G2L["9"]["Text"] = [[Open]];
G2L["9"]["Name"] = [[Open]];
G2L["9"]["Position"] = UDim2.new(0, 340, 1.00571, -40);


-- StarterGui.InternalGUI.MainFrame.Open.TextAnim
G2L["a"] = Instance.new("LocalScript", G2L["9"]);
G2L["a"]["Name"] = [[TextAnim]];


-- StarterGui.InternalGUI.MainFrame.ScrollingFrame
G2L["b"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["b"]["Active"] = true;
G2L["b"]["ZIndex"] = 999999999;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["b"]["ScrollBarImageTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(0, 538, 0, 260);
G2L["b"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Position"] = UDim2.new(0.08663, 0, 0.11429, 0);


-- StarterGui.InternalGUI.MainFrame.ScrollingFrame.TextBox
G2L["c"] = Instance.new("TextBox", G2L["b"]);
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["PlaceholderColor3"] = Color3.fromRGB(221, 221, 221);
G2L["c"]["ZIndex"] = 999999999;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 16;
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["MultiLine"] = true;
G2L["c"]["ClearTextOnFocus"] = false;
G2L["c"]["Size"] = UDim2.new(0, 515, 0, 260);
G2L["c"]["Position"] = UDim2.new(0.02393, 0, 0, 0);
G2L["c"]["Text"] = [[--Droomer On Top]];


-- StarterGui.InternalGUI.MainFrame.ScrollingFrame.LocalScript
G2L["d"] = Instance.new("LocalScript", G2L["b"]);



-- StarterGui.InternalGUI.MainFrame.ScrollingFrameLine
G2L["e"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["e"]["Active"] = true;
G2L["e"]["Interactable"] = false;
G2L["e"]["ZIndex"] = 999999999;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["e"]["Name"] = [[ScrollingFrameLine]];
G2L["e"]["ScrollBarImageTransparency"] = 1;
G2L["e"]["Size"] = UDim2.new(0, 35, 0, 260);
G2L["e"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Position"] = UDim2.new(0.01667, 0, 0.11429, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["ScrollBarThickness"] = 0;


-- StarterGui.InternalGUI.MainFrame.ScrollingFrameLine.LineNumbers
G2L["f"] = Instance.new("TextLabel", G2L["e"]);
G2L["f"]["Interactable"] = false;
G2L["f"]["ZIndex"] = 999999999;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 16;
G2L["f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(91, 91, 91);
G2L["f"]["Size"] = UDim2.new(0, 35, 0, 255);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[1]];
G2L["f"]["Name"] = [[LineNumbers]];


-- StarterGui.InternalGUI.MainFrame.ScrollingFrameLine.LocalScript
G2L["10"] = Instance.new("LocalScript", G2L["e"]);



-- StarterGui.InternalGUI.MainFrame.TopBar
G2L["11"] = Instance.new("Frame", G2L["2"]);
G2L["11"]["ZIndex"] = 999999999;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["11"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["11"]["Position"] = UDim2.new(0, 0, -0.00571, 0);
G2L["11"]["Name"] = [[TopBar]];


-- StarterGui.InternalGUI.MainFrame.TopBar.Title
G2L["12"] = Instance.new("TextLabel", G2L["11"]);
G2L["12"]["ZIndex"] = 999999999;
G2L["12"]["TextSize"] = 14;
G2L["12"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Size"] = UDim2.new(0, 200, 1, -10);
G2L["12"]["Text"] = [[Droomer]];
G2L["12"]["Name"] = [[Title]];
G2L["12"]["Position"] = UDim2.new(0, 10, 0, 5);


-- StarterGui.InternalGUI.MainFrame.TopBar.Close
G2L["13"] = Instance.new("TextButton", G2L["11"]);
G2L["13"]["TextSize"] = 14;
G2L["13"]["TextColor3"] = Color3.fromRGB(122, 122, 122);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["ZIndex"] = 999999999;
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Size"] = UDim2.new(0, 30, 1, 0);
G2L["13"]["Text"] = [[╳]];
G2L["13"]["Name"] = [[Close]];
G2L["13"]["Visible"] = false;
G2L["13"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.InternalGUI.MainFrame.TopBar.Close.TextAnim
G2L["14"] = Instance.new("LocalScript", G2L["13"]);
G2L["14"]["Name"] = [[TextAnim]];


-- StarterGui.InternalGUI.MainFrame.TopBar.Drag
G2L["15"] = Instance.new("LocalScript", G2L["11"]);
G2L["15"]["Name"] = [[Drag]];


-- StarterGui.InternalGUI.MainFrame.UserAgent
G2L["16"] = Instance.new("LocalScript", G2L["2"]);
G2L["16"]["Enabled"] = false;
G2L["16"]["Name"] = [[UserAgent]];
G2L["16"]["Disabled"] = true;


-- StarterGui.InternalGUI.MainFrame.Scroll2
G2L["17"] = Instance.new("LocalScript", G2L["2"]);
G2L["17"]["Name"] = [[Scroll2]];


-- StarterGui.InternalGUI.MainFrame.Scroll1
G2L["18"] = Instance.new("LocalScript", G2L["2"]);
G2L["18"]["Name"] = [[Scroll1]];


-- StarterGui.InternalGUI.MainFrame.Line Numbers
G2L["19"] = Instance.new("LocalScript", G2L["2"]);
G2L["19"]["Name"] = [[Line Numbers]];


-- StarterGui.InternalGUI.MainFrame.Execute
G2L["1a"] = Instance.new("LocalScript", G2L["2"]);
G2L["1a"]["Name"] = [[Execute]];


-- StarterGui.InternalGUI.MainFrame.Clear
G2L["1b"] = Instance.new("LocalScript", G2L["2"]);
G2L["1b"]["Name"] = [[Clear]];


-- StarterGui.InternalGUI.MainFrame.Hide
G2L["1c"] = Instance.new("LocalScript", G2L["2"]);
G2L["1c"]["Name"] = [[Hide]];


-- StarterGui.InternalGUI.MainFrame.UserAgent2
G2L["1d"] = Instance.new("LocalScript", G2L["2"]);
G2L["1d"]["Name"] = [[UserAgent2]];


-- StarterGui.InternalGUI.MainFrame.Execute.TextAnim
local function C_4()
local script = G2L["4"];
	local button = script.Parent
	
	local defaultColor = Color3.fromRGB(40, 40, 40)
	local hoverColor = Color3.fromRGB(56, 56, 56)
	
	button.BackgroundColor3 = defaultColor
	
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = hoverColor
	end)
	
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = defaultColor
	end)
	
end;
task.spawn(C_4);
-- StarterGui.InternalGUI.MainFrame.Clear.TextAnim
local function C_6()
local script = G2L["6"];
	local button = script.Parent
	
	local defaultColor = Color3.fromRGB(40, 40, 40)
	local hoverColor = Color3.fromRGB(56, 56, 56)
	
	button.BackgroundColor3 = defaultColor
	
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = hoverColor
	end)
	
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = defaultColor
	end)
	
end;
task.spawn(C_6);
-- StarterGui.InternalGUI.MainFrame.Save.TextAnim
local function C_8()
local script = G2L["8"];
	local button = script.Parent
	
	local defaultColor = Color3.fromRGB(40, 40, 40)
	local hoverColor = Color3.fromRGB(56, 56, 56)
	
	button.BackgroundColor3 = defaultColor
	
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = hoverColor
	end)
	
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = defaultColor
	end)
	
end;
task.spawn(C_8);
-- StarterGui.InternalGUI.MainFrame.Open.TextAnim
local function C_a()
local script = G2L["a"];
	local button = script.Parent
	
	local defaultColor = Color3.fromRGB(40, 40, 40)
	local hoverColor = Color3.fromRGB(56, 56, 56)
	
	button.BackgroundColor3 = defaultColor
	
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = hoverColor
	end)
	
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = defaultColor
	end)
	
end;
task.spawn(C_a);
-- StarterGui.InternalGUI.MainFrame.ScrollingFrame.LocalScript
local function C_d()
local script = G2L["d"];
	local scrollFrame = script.Parent
	local editorBox = script.Parent.TextBox
	
	-- Loop to constantly check and resize based on text height
	while true do
		task.wait(0.1) -- Adjust for performance if needed (e.g., 0.1s = 10 FPS update)
	
		local textHeight = editorBox.TextBounds.Y + 10
		editorBox.Size = UDim2.new(1, 0, 0, textHeight)
		scrollFrame.CanvasSize = UDim2.new(0, 0, 0, textHeight)
	end
	
end;
task.spawn(C_d);
-- StarterGui.InternalGUI.MainFrame.ScrollingFrameLine.LocalScript
local function C_10()
local script = G2L["10"];
	local scrollFrame = script.Parent
	local editorBox = scrollFrame:WaitForChild("LineNumbers")
	
	-- Loop to constantly check and resize based on text height
	while true do
		task.wait(0.1) -- Adjust for performance if needed (e.g., 0.1s = 10 FPS update)
	
		local textHeight = editorBox.TextBounds.Y + 10
		editorBox.Size = UDim2.new(1, 0, 0, textHeight)
		scrollFrame.CanvasSize = UDim2.new(0, 0, 0, textHeight)
	end
	
end;
task.spawn(C_10);
-- StarterGui.InternalGUI.MainFrame.TopBar.Close.TextAnim
local function C_14()
local script = G2L["14"];
	local button = script.Parent
	
	local defaultColor = Color3.fromRGB(121, 121, 121)
	local hoverColor = Color3.fromRGB(255, 255, 255)
	
	button.TextColor3 = defaultColor
	
	button.MouseEnter:Connect(function()
		button.TextColor3 = hoverColor
	end)
	
	button.MouseLeave:Connect(function()
		button.TextColor3 = defaultColor
	end)
	
end;
task.spawn(C_14);
-- StarterGui.InternalGUI.MainFrame.TopBar.Drag
local function C_15()
local script = G2L["15"];
	local UIS = game:GetService('UserInputService')
	local TweenService = game:GetService('TweenService')
	
	local frame = script.Parent.Parent
	local topbar = script.Parent
	
	local dragToggle = false
	local dragSpeed = 0
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		TweenService:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragToggle then
			updateInput(input)
		end
	end)
	
end;
task.spawn(C_15);
-- StarterGui.InternalGUI.MainFrame.Scroll2
local function C_17()
local script = G2L["17"];
	local frame = script.Parent
	local mainScroll = frame:WaitForChild("ScrollingFrameLine") -- Your main editor
	local lineScroll = frame:WaitForChild("ScrollingFrame") -- Your line numbers
	
	mainScroll:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
		lineScroll.CanvasPosition = Vector2.new(lineScroll.CanvasPosition.X, mainScroll.CanvasPosition.Y)
	end)
	
end;
task.spawn(C_17);
-- StarterGui.InternalGUI.MainFrame.Scroll1
local function C_18()
local script = G2L["18"];
	local frame = script.Parent
	local mainScroll = frame:WaitForChild("ScrollingFrame") -- Your main editor
	local lineScroll = frame:WaitForChild("ScrollingFrameLine") -- Your line numbers
	
	mainScroll:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
		lineScroll.CanvasPosition = Vector2.new(lineScroll.CanvasPosition.X, mainScroll.CanvasPosition.Y)
	end)
	
end;
task.spawn(C_18);
-- StarterGui.InternalGUI.MainFrame.Line Numbers
local function C_19()
local script = G2L["19"];
	local frame = script.Parent
	local scriptBox = script.Parent.ScrollingFrame.TextBox
	local lineNumbers = script.Parent.ScrollingFrameLine.LineNumbers
	
	local function updateLines()
		local lines = ""
		local count = #scriptBox.Text:split("\n")
		for i = 1, count do
			lines = lines .. tostring(i) .. "\n"
		end
		lineNumbers.Text = lines
	end
	
	scriptBox:GetPropertyChangedSignal("Text"):Connect(updateLines)
	
	updateLines()
end;
task.spawn(C_19);
-- StarterGui.InternalGUI.MainFrame.Execute
local function C_1a()
local script = G2L["1a"];
	local frame = script.Parent
	local executeButton = frame:WaitForChild("Execute")
	local scriptBox = script.Parent.ScrollingFrame.TextBox
	
	executeButton.MouseButton1Click:Connect(function()
		local code = scriptBox.Text
		local success, err = pcall(function()
			loadstring(code)()
		end)
	
		if not success then
			warn("Execution Error:", err)
		end
	end)
end;
task.spawn(C_1a);
-- StarterGui.InternalGUI.MainFrame.Clear
local function C_1b()
local script = G2L["1b"];
	local frame = script.Parent
	local clearButton = frame:WaitForChild("Clear")
	local scriptBox = script.Parent.ScrollingFrame.TextBox
	
	clearButton.MouseButton1Click:Connect(function()
		scriptBox.Text = ""
	end)
	
end;
task.spawn(C_1b);
-- StarterGui.InternalGUI.MainFrame.Hide
local function C_1c()
local script = G2L["1c"];
	local frame = script.Parent
	local UserInputService = game:GetService("UserInputService")
	
	local enabled = false
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
	
		if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Insert then
			enabled = not enabled
			frame.Visible = enabled
		end
	end)
	
end;
task.spawn(C_1c);
-- StarterGui.InternalGUI.MainFrame.UserAgent2
local function C_1d()
local script = G2L["1d"];
	local frame = script.Parent
	local executeButton = frame:WaitForChild("Execute")
	local scriptBox = script.Parent.ScrollingFrame.TextBox
	
	-- 👇 Custom request override with Droomer User-Agent
	local originalRequest = getgenv().request or function(options) return nil end
	getgenv().request = function(options)
		if options.Headers then
			options.Headers['User-Agent'] = 'Droomer'
		else
			options.Headers = {['User-Agent'] = 'Droomer'}
		end
		return originalRequest(options)
	end
	
	-- Droomer Executor API
	function identifyexecutor()
		return 'Droomer v2.0.0'
	end
	
	function printidentity()
		print('Current identity is 6')
	end
	
	function whatexecutor()
		return 'Droomer v2.0.0'
	end
	
	function getexecutorname()
		return 'Droomer'
	end
	
	function getscriptclosure(s)
		return function()
			local ok, result = pcall(function() return require(s) end)
			if ok and type(result) == 'table' and table.clone then
				return table.clone(result)
			end
			return result or nil
		end
	end
	
	function copy()
		local Params = {
			RepoURL = 'https://raw.githubusercontent.com/luau/SynSaveInstance/main/',
			SSI = 'saveinstance',
		}
	
		local synsaveinstance, err = pcall(function()
			return loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. '.luau', true))()
		end)
	
		if not synsaveinstance then
			warn('Droomer | Failed to load SynSaveInstance script: ' .. err)
			return
		end
	
		local CustomOptions = {
			SafeMode = true,
			ReadMe = false,
			timeout = 15,
			SaveBytecode = true
		}
	
		local success, err = pcall(function()
			synsaveinstance(CustomOptions)
		end)
	
		if not success then
			warn('Droomer | Failed to execute saveinstance function: ' .. err)
		else
			print('Save instance operation completed successfully. | Droomer')
		end
	end
	
	function checkcaller()
		local caller = debug.info(1, 'slnaf')
		local up = debug.info(2, 'slnaf')
		return caller ~= nil and caller == up
	end
	
	function iy()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/pasteisback/ImpulseFiles/refs/heads/main/Scripts/InfinityYield.luau'))()
	end
	
	function unc()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/pasteisback/ImpulseFiles/refs/heads/main/Scripts/UNC.luau'))()
	end
	
	function moonhub()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/pasteisback/ImpulseFiles/refs/heads/main/Scripts/MoonHub.luau'))()
	end
	
	function impulsehub()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/pasteisback/ImpulseFiles/refs/heads/main/Scripts/MoonHub.luau'))()
	end
	
	function dex()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/pasteisback/ImpulseFiles/refs/heads/main/Scripts/Dex.luau'))()
	end
	
	function cmdx()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
	end
	
	function xvchub()
		loadstring(game:HttpGet('https://pastebin.com/raw/Piw5bqGq'))()
	end
	
	function simplespy()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'))()
	end
	
	function darkdex()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua'))()
	end
	
	function trigbot()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/pasteisback/ImpulseFiles/refs/heads/main/Scripts/TriggerBot.luau'))()
	end
	
	function owlhub()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt'))()
	end
	
	function vgui()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
	end
	
	function dexv2()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()
	end
	
	function fatesadmin()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua'))()
	end
	
	-- EXECUTE BUTTON LOGIC
	executeButton.MouseButton1Click:Connect(function()
		local code = scriptBox.Text
		if code and #code > 0 then
			local success, result = pcall(function()
				loadstring(code)()
			end)
			if not success then
				warn("Droomer | Error executing script:\n" .. tostring(result))
			end
		end
	end)
end;
task.spawn(C_1d);

return G2L["1"], require;
