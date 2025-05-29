local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local head = character:WaitForChild("Head")
local camera = workspace.CurrentCamera

local function setGradient(parent)
	local gradient = Instance.new("UIGradient", parent)
	gradient.Rotation = 5
	gradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(123, 104, 238)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 225, 225))
	}
end

local ui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
	ui.Name = 'abqorHub'
	ui.ResetOnSpawn = false

local background = Instance.new("Frame", ui)
	background.Size = UDim2.new(0, 750, 0, 400)
	background.Position = UDim2.new(0.5, -400, 0.5, -250)
	background.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	background.BackgroundTransparency = 0.35
	background.Active = true
	background.Draggable = true
    Instance.new("UICorner", background).CornerRadius = UDim.new(0, 15)

local menu = Instance.new("TextButton", ui)
    menu.Text = "AbqorHub"
	menu.Position = UDim2.new(0, 260, 0, 450)
	menu.Size = UDim2.new(0, 140, 0, 50)
	menu.Active = true
	menu.Font = Enum.Font.GothamBold
	menu.TextColor3 = Color3.new(1, 1, 1)
	menu.TextSize  = 30
	menu.Draggable = true
	setGradient(menu)
	menu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	menu.BackgroundTransparency = 0.05
	Instance.new("UICorner", menu).CornerRadius = UDim.new(0, 15)

	menu.MouseButton1Click:Connect(function()
			background.Visible = not background.Visible
		end)

local menuStroke = Instance.new("UIStroke", menu)
	menuStroke.ApplyStrokeMode = "Border"
        menuStroke.Thickness = 3
	menuStroke.Color =  Color3.fromRGB(248, 248, 255)

   local label = Instance.new("TextLabel", background)
	   label.Size = UDim2.new(0, 340, 0, 40)
	   label.BackgroundTransparency = 1
	   label.Text = "AbqorHub | Universal 0.01 Alpha"
	   label.TextColor3 = Color3.new(1, 1, 1)
	   label.Font = Enum.Font.GothamBold
	   label.TextSize = 23
	   setGradient(label)
	   label.Position = UDim2.new(0.07, -50, 0, 1)
	   Instance.new("UIStroke", label).Thickness = 2

  local label2 = Instance.new("TextLabel", background)
	   label2.Size = UDim2.new(0, 340, 0, 40)
	   label2.BackgroundTransparency = 1
	   label2.Text = "Made By Abqor | Credits Zentex Hacker"
	   label2.TextColor3 = Color3.new(0.7, 0.7, 0.7)
	   label2.Font = Enum.Font.GothamBold
	   label2.TextSize = 16
	   label2.Position = UDim2.new(0.05, -50, 0.05, 1)
	   Instance.new("UIStroke", label2).Thickness = 2

local function addFrame(name, size)
   local btn = Instance.new("ScrollingFrame", background)
   btn.Name = name
   btn.Active = true
   btn.BackgroundTransparency  = 0.98
   btn.Position = UDim2.new(0.2, 0, 0.2, 0)
   btn.Visible = false
   btn.CanvasSize = UDim2.new(0, 0, size, 0)
   btn.Size = UDim2.new(0, 600, 0, 319)
   return btn
end

-- add button ui

 local function addButton(text, decription, parent, posY, func)
local btn = Instance.new("TextButton", parent)
	btn.Size  = UDim2.new(0, 350, 0, 60)
	btn.Position = UDim2.new(0.012, 0, 0.025, posY)
       btn.BackgroundColor3 = Color3.fromRGB(13, 9, 7)
	btn.BackgroundTransparency = 0.30
	btn.Text = ''
	btn.Active = true
	btn.Draggable = false
    
    local btnStroke = Instance.new("UIStroke", btn)
        btnStroke.ApplyStrokeMode = "Border"
        btnStroke.Thickness = 2
	btnStroke.Color =  Color3.fromRGB(248, 248, 255)
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)

	local tl = Instance.new("TextLabel", btn)
          tl.Size =  UDim2.new(0, 50, 0, 20)
          tl.Position = UDim2.new(0.19, 0, 0.17, 0)
          tl.Text = text
          tl.TextSize = 20
          tl.TextColor3 = Color3.fromRGB(248, 248, 255)
          tl.BackgroundTransparency = 1
          tl.Font = Enum.Font.GothamBold

      local tlStroke = Instance.new("UIStroke", tl)
          tlStroke.ApplyStrokeMode = "Contextual"
          tlStroke.Thickness = 2
	  tlStroke.Color =  Color3.fromRGB(13, 9, 7)

	local tl2 = Instance.new("TextLabel", btn)
         tl2.Size =  UDim2.new(0, 50, 0, 20)
         tl2.Position = UDim2.new(0.35, 0, 0.45, 0)
         tl2.Text = decription
        tl2.TextSize = 15
         tl2.TextColor3 = Color3.new(0.5, 0.5, 0.5)
        tl2.BackgroundTransparency = 1
       tl2.Font = Enum.Font.GothamBold

   local tl2Stroke = Instance.new("UIStroke", tl2)
    tl2Stroke.ApplyStrokeMode = "Contextual"
    tl2Stroke.Thickness = 1.5
    tl2Stroke.Color =  Color3.fromRGB(13, 9, 7)

	local sbtn = Instance.new("TextButton", btn)
	sbtn.Size  = UDim2.new(0, 30, 0, 30)
	sbtn.Position = UDim2.new(0.83, 0, 0.25, 0)
         sbtn.BackgroundColor3 = Color3.fromRGB(13, 9, 7)
	sbtn.BackgroundTransparency = 0.75
	sbtn.Text = ''
	sbtn.Active = true
	sbtn.Draggable = false
    
    local sbtnStroke = Instance.new("UIStroke", sbtn)
        sbtnStroke.ApplyStrokeMode = "Border"
        sbtnStroke.Thickness = 2
	sbtnStroke.Color =  Color3.fromRGB(248, 248, 255)
	Instance.new("UICorner", sbtn).CornerRadius = UDim.new(0, 10)

        local A = false

    btn.MouseButton1Click:Connect(function()
	A = not A
	 if A then
    	sbtn.BackgroundColor3 = Color3.fromRGB(248, 248, 255)
		sbtn.BackgroundTransparency = 0.25
    else
	    sbtn.BackgroundColor3 = Color3.fromRGB(13, 9, 7)
     	sbtn.BackgroundTransparency = 0.75
	end
	func()
  end)

	 sbtn.MouseButton1Click:Connect(function()
	A = not A
	 if A then
    	sbtn.BackgroundColor3 = Color3.fromRGB(248, 248, 255)
		sbtn.BackgroundTransparency = 0.25
    else
	    sbtn.BackgroundColor3 = Color3.fromRGB(13, 9, 7)
     	sbtn.BackgroundTransparency = 0.75
	end
	func()
  end)
end

 local function addView(text, decription, parent, posY)
local btn = Instance.new("TextButton", parent)
	btn.Size  = UDim2.new(0, 350, 0, 60)
	btn.Position = UDim2.new(0.012, 0, 0.025, posY)
        btn.BackgroundColor3 = Color3.fromRGB(13, 9, 7)
	btn.BackgroundTransparency = 0.30
	btn.Text = ''
	btn.Active = true
	btn.Draggable = false
    
    local btnStroke = Instance.new("UIStroke", btn)
        btnStroke.ApplyStrokeMode = "Border"
        btnStroke.Thickness = 2
	btnStroke.Color =  Color3.fromRGB(248, 248, 255)
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)


local tl = Instance.new("TextLabel", btn)
   tl.Size =  UDim2.new(0, 50, 0, 20)
   tl.Position = UDim2.new(0.32 , 0, 0.17, 0)
   tl.Text = text
   tl.TextSize = 20
   tl.TextColor3 = Color3.fromRGB(248, 248, 255)
   tl.BackgroundTransparency = 1
   tl.Font = Enum.Font.GothamBold

    local tlStroke = Instance.new("UIStroke", tl)
    tlStroke.ApplyStrokeMode = "Contextual"
    tlStroke.Thickness = 2
    tlStroke.Color =  Color3.fromRGB(13, 9, 7)

local tl2 = Instance.new("TextLabel", btn)
   tl2.Size =  UDim2.new(0, 40, 0, 20)
   tl2.Position = UDim2.new(0.45, 0, 0.45, 0)
   tl2.Text = decription
   tl2.TextSize = 15
   tl2.TextColor3 = Color3.new(0.5, 0.5, 0.5)
   tl2.BackgroundTransparency = 1
   tl2.Font = Enum.Font.GothamBold

   local tl2Stroke = Instance.new("UIStroke", tl2)
    tl2Stroke.ApplyStrokeMode = "Contextual"
    tl2Stroke.Thickness = 1.5
    tl2Stroke.Color =  Color3.fromRGB(13, 9, 7)

	btn.MouseButton1Click:Connect(function()
		func()
	end)
end

local function tabName(tabname)
	local btn = Instance.new("TextLabel", background)
	   btn.Size = UDim2.new(0, 340, 0, 40)
	   btn.BackgroundTransparency = 1
	   btn.Text = tabname
	   btn.TextColor3 = Color3.new(1, 1, 1)
	   btn.Font = Enum.Font.GothamBold
	   btn.TextSize = 23
	   setGradient(btn)
	   btn.Visible = false
	   btn.Position = UDim2.new(0.15, 0, 0.125, 0)
	   Instance.new("UIStroke", btn).Thickness = 2
	return btn
end

--add tab
local function addTab(text, posY, func)
   local btn = Instance.new("TextButton", background)
	btn.Size = UDim2.new(0, 120, 0, 45)
	btn.Position = UDim2.new(0.01, 0, 0.15, posY)
	btn.BackgroundColor3 = Color3.fromRGB(7, 6, 6)
	btn.BackgroundTransparency = 0.5
	btn.Text = text
	btn.TextColor3 = Color3.new(0.5, 0.5, 0.5)
	btn.Font = Enum.Font.GothamBold
	btn.TextSize  = 27
	btn.Active = true
	btn.AutoButtonColor = true
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

	  btn.MouseButton1Click:Connect(function()
              func()
		end)
	return btn
end

mainFrame = addFrame('main')
 mainFrame.Visible = true
 characterFrame  = addFrame('character', 1.1)
 visualFrame = addFrame('visual')
 othersFrame = addFrame('others')
 settingsFrame = addFrame('settings')

--add button

--Main
addView('Version of The Script', '0.01 Universal Version', mainFrame, 0)
addView('Creator of The Script', 'Abqor and Zentex Hacker(Helper)', mainFrame, 75)
addView('Version of The Game', placeText, mainFrame, 150)

--Character
addButton('Infinite Jump', 'Allow You To Jump Unlimitedly', characterFrame, 0)
addButton('Speed', 'Boost Your WalkSpeed To 40', characterFrame, 75)
addButton('Fly', 'Allow You To Fly Across Every Object', characterFrame, 150)
addButton('NoClip', 'Make You Can No Clipping Walls', characterFrame, 225)
addButton('Fling To Sky', 'Make Ur Character Fling To Sky', characterFrame, 300)

--Visual
addButton('FullBright', 'Increase  Ur  Game Screen Brghtness', visualFrame, 0)
addButton('Unlock Mouse', 'Unlock Your Mouse  (useful at Gun Game)', visualFrame, 75)
addButton('Remove Fog', 'Remove Every Fog On The Server', visualFrame, 150)
addView('Tp All To Me', 'Teleport All Player To Ur', visualFrame, 225)


--  add tab name label
mainTab = tabName('Main Tab')
characterTab = tabName('Character Tab')
visualTab = tabName('Visual Tab')
othersTab = tabName('Others Tab')
settingsTab = tabName('Settings Tab')
mainTab.Visible = true


main = addTab('Main', 0, function() 
  mainfunc()
end)
setTrans(main,0.1)

character = addTab('Character', 50, function()
	characterfunc()
end)

visual = addTab('Visual', 100, function()
	visualfunc()
end)

others = addTab("Others", 150, function()
othersfunc()
end)

settings = addTab('Settings', 200, function()
settingsfunc()
end)
	
function setTrans(parents, num)
parents.BackgroundTransparency = num
end

function mainfunc()
   mainFrame.Visible = true
   characterFrame.Visible = false
   visualFrame.Visible = false
   othersFrame.Visible = false
   settingsFrame.Visible = false
   setTrans(main,0.1)
   setTrans(character,0.5)
   setTrans(visual,0.5)
   setTrans(others,0.5)
   setTrans(settings,0.5)
   mainTab.Visible = true
   characterTab.Visible = false
   visualTab.Visible = false
   othersTab.Visible = false
   settingsTab.Visible = false
end

function characterfunc()
   mainFrame.Visible = false
   characterFrame.Visible = true
   visualFrame.Visible = false
   othersFrame.Visible = false
   settingsFrame.Visible = false
   setTrans(main,0.5)
   setTrans(character,0.1)
   setTrans(visual,0.5)
   setTrans(others,0.5)
   setTrans(settings,0.5)
   mainTab.Visible = false
   characterTab.Visible = true
   visualTab.Visible = false
   othersTab.Visible = false
   settingsTab.Visible = false
end

function visualfunc()
	mainFrame.Visible = false
   characterFrame.Visible = false
   visualFrame.Visible = true
   othersFrame.Visible = false
   settingsFrame.Visible = false
   setTrans(main,0.5)
   setTrans(character,0.5)
   setTrans(visual,0.1)
   setTrans(others,0.5)
   setTrans(settings,0.5)
   mainTab.Visible = false
   characterTab.Visible = false
   visualTab.Visible = true
   othersTab.Visible = false
   settingsTab.Visible = false
end

function othersfunc()
	mainFrame.Visible = false
   characterFrame.Visible = false
   visualFrame.Visible = false
   othersFrame.Visible = true
   settingsFrame.Visible = false
   setTrans(main,0.5)
   setTrans(character,0.5)
   setTrans(visual,0.5)
   setTrans(others,0.1)
   setTrans(settings,0.5)
   mainTab.Visible = false
   characterTab.Visible = false
   visualTab.Visible = false
   othersTab.Visible = true
   settingsTab.Visible = false
end

function settingsfunc()
   mainFrame.Visible = false  
	characterFrame.Visible = false  
	visualFrame.Visible = false 
	othersFrame.Visible = false
	settingsFrame.Visible = true
	setTrans(main,0.5)
	setTrans(character,0.5)
	setTrans(visual,0.5) 
	setTrans(others,0.5)
	setTrans(settings,0.1)
	mainTab.Visible = false
	characterTab.Visible = false
	visualTab.Visible = false
	othersTab.Visible = false
	settingsTab.Visible = true
end


