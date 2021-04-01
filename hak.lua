--hacks for specific games (Vehicle Tycoon, ...)
--edit menu with mouse wheel (
--store shit in the script {script.val}
--scrollbar or field for true and false
-- idk more
--)
--chat bypass
--MADE BY THEMINECRAFTER05--
local power = 1150
local player = game.Players.LocalPlayer
local flying = false
local noclip = false
local wspeed = false
local moong = false
local jumph = false
local airjump = false
local clicktp = false
local swastika = false
local invis = false
local clone = false
local push = false
local spin = false
local follow = false
local following = false
local touchKill = false
local bypasstaser = false
local autoRespawn = false
local arrest = false
local aimbot = false
local esp = false
local freecam = false
local teleport = false
local nofall = false
local noarm = false
local noleg = false
local wpress = false
local apress = false
local spress = false
local dpress = false
local astronaut = false
local killaura = false
local vehiclespeedTy = false
local oldjumph = player.Character.Humanoid.JumpPower
local oldResptime = game.Players.RespawnTime
local oldppos
local playernameinput
local oldg = workspace.Gravity
local bigr6size = 1
local bignum = 0.1
local hipheightnum = math.floor(player.Character.Humanoid.HipHeight)
local oldspeed = player.Character.Humanoid.WalkSpeed
local UserInputService = game:GetService("UserInputService")
local rs = game:GetService("RunService")
local screengui = Instance.new("ScreenGui", game.CoreGui)
local buttonabstand = 0.005
screengui.Name = tostring(math.random(0,9)..math.random(0,9)..math.random(0,9)..math.random(0,9)..math.random(0,9)..math.random(0,9)..math.random(0,9)..math.random(0,9)..math.random(0,9)..math.random(0,9).."_999")
screengui.Enabled = true
screengui.ResetOnSpawn = false
local backframe = Instance.new("Frame",screengui)
backframe.Name = "CoolFrame"
backframe.Size = UDim2.new(0.15,0,0.56,0)
backframe.Position = UDim2.new(0.01,0,0.3,0)
backframe.BackgroundColor3 = Color3.new(0.07,0.1,0.06)
backframe.Selectable = true 
backframe.Active = true 
backframe.Draggable = true
local toptext = Instance.new("TextLabel", backframe)
toptext.TextColor3 = Color3.new(1,1,1)
toptext.TextScaled = true
toptext.Position = UDim2.new(0,0,0,0)
toptext.Size = UDim2.new(1,0,0.1,0)
toptext.Text = "FaceLesS"
toptext.BackgroundTransparency = 1
local copytext = Instance.new("TextLabel", backframe)
copytext.TextColor3 = Color3.new(1,1,1)
copytext.TextScaled = true
copytext.Position = UDim2.new(0,0,0.95,0)
copytext.Size = UDim2.new(1,0,0.05,0)
copytext.Text = "By TheMinecrafter05"
copytext.BackgroundTransparency = 1
local haxframe = Instance.new("ScrollingFrame",backframe)
haxframe.Size = UDim2.new(0.97,0,0.84,0)
haxframe.Position = UDim2.new(0.0125,0,0.1,0)
haxframe.BackgroundColor3 = Color3.new(0.09,0.12,0.08)
haxframe.ScrollingEnabled = true
haxframe.Selectable = true 
haxframe.Draggable = true
haxframe.CanvasSize = UDim2.new(0.8,0,5,0)
local flyButton = Instance.new("TextButton", haxframe)
flyButton.Position = UDim2.new(0,0,0.005,0)
flyButton.Size = UDim2.new(0.98,0,0.02,0)
flyButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
flyButton.Text = "Fly"
local nocButton = Instance.new("TextButton", haxframe)
nocButton.Position = UDim2.new(0,0,0.035,0)
nocButton.Size = UDim2.new(0.98,0,0.02,0)
nocButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
nocButton.Text = "NoClip"
local speedButton = Instance.new("TextButton", haxframe)
speedButton.Position = UDim2.new(0,0,0.065,0)
speedButton.Size = UDim2.new(0.98,0,0.02,0)
speedButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
speedButton.Text = "Speed"
local resizeButton = Instance.new("TextButton", haxframe)
resizeButton.Position = UDim2.new(0,0,0.095,0)
resizeButton.Size = UDim2.new(0.98,0,0.02,0)
resizeButton.BackgroundColor3 = Color3.new(0.05,0.15,0.5)
resizeButton.Text = "Resize: "..bigr6size
resizeButton.TextColor3 = Color3.new(1,1,1)
local heightButton = Instance.new("TextButton", haxframe)
heightButton.Position = UDim2.new(0,0,0.125,0)
heightButton.Size = UDim2.new(0.98,0,0.02,0)
heightButton.BackgroundColor3 = Color3.new(0.05,0.15,0.5)
heightButton.Text = "Height: "..hipheightnum
heightButton.TextColor3 = Color3.new(1,1,1)
local moongButton = Instance.new("TextButton", haxframe)
moongButton.Position = UDim2.new(0,0,0.155,0)
moongButton.Size = UDim2.new(0.98,0,0.02,0)
moongButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
moongButton.Text = "MoonGravity"
local jumphButton = Instance.new("TextButton", haxframe)
jumphButton.Position = UDim2.new(0,0,0.185,0)
jumphButton.Size = UDim2.new(0.98,0,0.02,0)
jumphButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
jumphButton.Text = "Jump Height"
local airjumpButton = Instance.new("TextButton", haxframe)
airjumpButton.Position = UDim2.new(0,0,0.215,0)
airjumpButton.Size = UDim2.new(0.98,0,0.02,0)
airjumpButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
airjumpButton.Text = "No Jump Limit"
local clicktpButton = Instance.new("TextButton", haxframe)
clicktpButton.Position = UDim2.new(0,0,0.245,0)
clicktpButton.Size = UDim2.new(0.98,0,0.02,0)
clicktpButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
clicktpButton.Text = "Click TP"
local swastikaButton = Instance.new("TextButton", haxframe)
swastikaButton.Position = UDim2.new(0,0,0.275,0)
swastikaButton.Size = UDim2.new(0.98,0,0.02,0)
swastikaButton.BackgroundColor3 = Color3.new(0,0,0)
swastikaButton.TextColor3 = Color3.new(1,1,1)
swastikaButton.Text = "Swastika V0.5"
local invisButton = Instance.new("TextButton", haxframe)
invisButton.Position = UDim2.new(0,0,0.305,0)
invisButton.Size = UDim2.new(0.98,0,0.02,0)
invisButton.BackgroundColor3 = Color3.new(0,0,0)
invisButton.TextColor3 = Color3.new(1,1,1)
invisButton.Text = "Invisible"
local cloneanimButton = Instance.new("TextButton", haxframe)
cloneanimButton.Position = UDim2.new(0,0,0.335,0)
cloneanimButton.Size = UDim2.new(0.98,0,0.02,0)
cloneanimButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
cloneanimButton.Text = "Clone Animation"
local pushButton = Instance.new("TextButton", haxframe)
pushButton.Position = UDim2.new(0,0,0.365,0)
pushButton.Size = UDim2.new(0.98,0,0.02,0)
pushButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
pushButton.Text = "Fling"
local spinButton = Instance.new("TextButton", haxframe)
spinButton.Position = UDim2.new(0,0,0.395,0)
spinButton.Size = UDim2.new(0.98,0,0.02,0)
spinButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
spinButton.Text = "Spin"
local followButton = Instance.new("TextButton", haxframe)
followButton.Position = UDim2.new(0,0,0.425,0)
followButton.Size = UDim2.new(0.98,0,0.02,0)
followButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
followButton.Text = "Follow"
local aimbotButton = Instance.new("TextButton", haxframe)
aimbotButton.Position = UDim2.new(0,0,0.455,0)
aimbotButton.Size = UDim2.new(0.98,0,0.02,0)
aimbotButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
aimbotButton.Text = "Aimbot V0.7"
local espButton = Instance.new("TextButton", haxframe)
espButton.Position = UDim2.new(0,0,0.485,0)
espButton.Size = UDim2.new(0.98,0,0.02,0)
espButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
espButton.Text = "ESP"
local noarmButton = Instance.new("TextButton", haxframe)
noarmButton.Position = UDim2.new(0,0,0.515,0)
noarmButton.Size = UDim2.new(0.98,0,0.02,0)
noarmButton.BackgroundColor3 = Color3.new(0,0,0)
noarmButton.TextColor3 = Color3.new(1,1,1)
noarmButton.Text = "No Arms"
local nolegButton = Instance.new("TextButton", haxframe)
nolegButton.Position = UDim2.new(0,0,0.545,0)
nolegButton.Size = UDim2.new(0.98,0,0.02,0)
nolegButton.BackgroundColor3 = Color3.new(0,0,0)
nolegButton.TextColor3 = Color3.new(1,1,1)
nolegButton.Text = "No Legs"
local freeCamButton = Instance.new("TextButton", haxframe)
freeCamButton.Position = UDim2.new(0,0,0.575,0)
freeCamButton.Size = UDim2.new(0.98,0,0.02,0)
freeCamButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
freeCamButton.Text = "FreeCam V0.95"
local teleportButton = Instance.new("TextButton", haxframe)
teleportButton.Position = UDim2.new(0,0,0.605,0)
teleportButton.Size = UDim2.new(0.98,0,0.02,0)
teleportButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
teleportButton.Text = "Teleport"
local astronautButton = Instance.new("TextButton", haxframe)
astronautButton.Position = UDim2.new(0,0,0.635,0)
astronautButton.Size = UDim2.new(0.98,0,0.02,0)
astronautButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
astronautButton.Text = "Astronaut"
local rejoinButton = Instance.new("TextButton", haxframe)
rejoinButton.Position = UDim2.new(0,0,0.665,0)
rejoinButton.Size = UDim2.new(0.98,0,0.02,0)
rejoinButton.BackgroundColor3 = Color3.new(0,0,0)
rejoinButton.TextColor3 = Color3.new(1,1,1)
rejoinButton.Text = "Rejoin"
local noFallDamageButton = Instance.new("TextButton", haxframe)
noFallDamageButton.Position = UDim2.new(0,0,0.695,0)
noFallDamageButton.Size = UDim2.new(0.98,0,0.02,0)
noFallDamageButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
noFallDamageButton.Text = "No Falldamage"
local spefButton = Instance.new("TextButton", haxframe)
spefButton.Position = UDim2.new(0,0,0.725,0)
spefButton.Size = UDim2.new(0.98,0,0.02,0)
spefButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
spefButton.Text = "Specific Games"
local firstpersonCursorFree = Instance.new("TextButton", screengui)
firstpersonCursorFree.Modal = false
firstpersonCursorFree.Size = UDim2.new(0, 0, 0, 0)
firstpersonCursorFree.BackgroundTransparency = 1
local playerwindow = Instance.new("Frame", screengui)
playerwindow.Size = UDim2.new(0.7,0,0.8,0)
playerwindow.Position = UDim2.new(0.15, 0, 0.1, 0)
playerwindow.BackgroundColor3 = Color3.new(0.09,0.12,0.08)
playerwindow.BackgroundTransparency = 0.1
playerwindow.Active = true
playerwindow.Draggable = true
playerwindow.Selectable = true
playerwindow.Visible = false
local headerplayerwindow = Instance.new("TextLabel", playerwindow)
headerplayerwindow.Text = "Please choose a player."
headerplayerwindow.BackgroundTransparency = 1
headerplayerwindow.TextScaled = true
headerplayerwindow.Size = UDim2.new(1,0,0.1,0)
headerplayerwindow.TextColor3 = Color3.new(1,1,1)
local PlayerFrameWindow = Instance.new("ScrollingFrame", playerwindow)
PlayerFrameWindow.BackgroundTransparency = 0.8
PlayerFrameWindow.Size = UDim2.new(0.9,0,0.8,0)
PlayerFrameWindow.Position = UDim2.new(0.05, 0, 0.11, 0)
PlayerFrameWindow.AutomaticCanvasSize = Enum.AutomaticSize.Y

--game screen
local gamewindow = Instance.new("Frame", screengui)
gamewindow.Size = UDim2.new(0.7,0,0.8,0)
gamewindow.Position = UDim2.new(0.15, 0, 0.1, 0)
gamewindow.BackgroundColor3 = Color3.new(0.09,0.12,0.08)
gamewindow.BackgroundTransparency = 0.1
gamewindow.Active = true
gamewindow.Draggable = true
gamewindow.Selectable = true
gamewindow.Visible = false
local headergamewindow = Instance.new("TextLabel", gamewindow)
headergamewindow.Text = "Please choose a game."
headergamewindow.BackgroundTransparency = 1
headergamewindow.TextScaled = true
headergamewindow.Size = UDim2.new(1,0,0.1,0)
headergamewindow.TextColor3 = Color3.new(1,1,1)
local GameFrameWindow = Instance.new("ScrollingFrame", gamewindow)
GameFrameWindow.BackgroundTransparency = 0.8
GameFrameWindow.Size = UDim2.new(0.9,0,0.8,0)
GameFrameWindow.Position = UDim2.new(0.05, 0, 0.11, 0)
GameFrameWindow.AutomaticCanvasSize = Enum.AutomaticSize.Y

--games
local prisonButon = Instance.new("TextButton", GameFrameWindow)
prisonButon.Size = UDim2.new(0.1,0,0.07,0)
prisonButon.BackgroundColor3 = Color3.new(0.5,0.15,0.5)
prisonButon.Text = "Prison Life"

local hideandseekextremeButon = Instance.new("TextButton", GameFrameWindow)
hideandseekextremeButon.Size = UDim2.new(0.1,0,0.07,0)
hideandseekextremeButon.Position = UDim2.new(0.15,0,0,0)
hideandseekextremeButon.BackgroundColor3 = Color3.new(0.5,0.15,0.5)
hideandseekextremeButon.Text = "Hide and seek extreme"

local VehicleTycoonButon = Instance.new("TextButton", GameFrameWindow)
VehicleTycoonButon.Size = UDim2.new(0.1,0,0.07,0)
VehicleTycoonButon.Position = UDim2.new(0.25,0,0,0)
VehicleTycoonButon.BackgroundColor3 = Color3.new(0.5,0.15,0.5)
VehicleTycoonButon.Text = "Vehicle Tycoon"

--specific games
local prisonLifeFrame = Instance.new("ScrollingFrame",backframe)
prisonLifeFrame.Size = UDim2.new(0.98,0,0.84,0)
prisonLifeFrame.Position = UDim2.new(0.0125,0,0.1,0)
prisonLifeFrame.BackgroundColor3 = Color3.new(0.09,0.12,0.08)
prisonLifeFrame.ScrollingEnabled = true
prisonLifeFrame.Selectable = true 
prisonLifeFrame.Draggable = true
prisonLifeFrame.Visible = false
local killNoToolButton = Instance.new("TextButton", prisonLifeFrame)
killNoToolButton.Position = UDim2.new(0,0,0.01,0)
killNoToolButton.Size = UDim2.new(0.98,0,0.05,0)
killNoToolButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
killNoToolButton.Text = "Kill All Players"
local killTouchButton = Instance.new("TextButton", prisonLifeFrame)
killTouchButton.Position = UDim2.new(0,0,0.065,0)
killTouchButton.Size = UDim2.new(0.98,0,0.05,0)
killTouchButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
killTouchButton.Text = "Touch Kill"
local killauraButton = Instance.new("TextButton", prisonLifeFrame)
killauraButton.Position = UDim2.new(0,0,0.125,0)
killauraButton.Size = UDim2.new(0.98,0,0.05,0)
killauraButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
killauraButton.Text = "Killaura"
local autoRespawnButton = Instance.new("TextButton", prisonLifeFrame)
autoRespawnButton.Position = UDim2.new(0,0,0.185,0)
autoRespawnButton.Size = UDim2.new(0.98,0,0.05,0)
autoRespawnButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
autoRespawnButton.Text = "AutoRespawn"
local arrestButton = Instance.new("TextButton", prisonLifeFrame)
arrestButton.Position = UDim2.new(0,0,0.245,0)
arrestButton.Size = UDim2.new(0.98,0,0.05,0)
arrestButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
arrestButton.Text = "Click arrest"
local bypassTaserButton = Instance.new("TextButton", prisonLifeFrame)
bypassTaserButton.Position = UDim2.new(0,0,0.305,0)
bypassTaserButton.Size = UDim2.new(0.98,0,0.05,0)
bypassTaserButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
bypassTaserButton.Text = "Bypass Taser / Handcuffs"
local closeprisonButton = Instance.new("TextButton", prisonLifeFrame)
closeprisonButton.Position = UDim2.new(0,0,0.365,0)
closeprisonButton.Size = UDim2.new(0.98,0,0.05,0)
closeprisonButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
closeprisonButton.Text = "Close"

local HideandSeekFrame = Instance.new("ScrollingFrame",backframe)
HideandSeekFrame.Size = UDim2.new(0.98,0,0.84,0)
HideandSeekFrame.Position = UDim2.new(0.0125,0,0.1,0)
HideandSeekFrame.BackgroundColor3 = Color3.new(0.09,0.12,0.08)
HideandSeekFrame.ScrollingEnabled = true
HideandSeekFrame.Selectable = true
HideandSeekFrame.Draggable = true
HideandSeekFrame.Visible = false
local killallplrsseekerButton = Instance.new("TextButton", HideandSeekFrame)
killallplrsseekerButton.Position = UDim2.new(0,0,0.01,0)
killallplrsseekerButton.Size = UDim2.new(0.98,0,0.05,0)
killallplrsseekerButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
killallplrsseekerButton.Text = "Kill All Players [Seeker]"
local getallcoinsButton = Instance.new("TextButton", HideandSeekFrame)
getallcoinsButton.Position = UDim2.new(0,0,0.065,0)
getallcoinsButton.Size = UDim2.new(0.98,0,0.05,0)
getallcoinsButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
getallcoinsButton.Text = "Get All Coins"
local closeHideaSeekExButton = Instance.new("TextButton", HideandSeekFrame)
closeHideaSeekExButton.Position = UDim2.new(0,0,0.125,0)
closeHideaSeekExButton.Size = UDim2.new(0.98,0,0.05,0)
closeHideaSeekExButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
closeHideaSeekExButton.Text = "Close"


local VehicleTycoonFrame = Instance.new("ScrollingFrame",backframe)
VehicleTycoonFrame.Size = UDim2.new(0.98,0,0.84,0)
VehicleTycoonFrame.Position = UDim2.new(0.0125,0,0.1,0)
VehicleTycoonFrame.BackgroundColor3 = Color3.new(0.09,0.12,0.08)
VehicleTycoonFrame.ScrollingEnabled = true
VehicleTycoonFrame.Selectable = true
VehicleTycoonFrame.Draggable = true
VehicleTycoonFrame.Visible = false
local infiniteVehicleSpeedButton = Instance.new("TextButton", VehicleTycoonFrame)
infiniteVehicleSpeedButton.Position = UDim2.new(0,0,0.01,0)
infiniteVehicleSpeedButton.Size = UDim2.new(0.98,0,0.05,0)
infiniteVehicleSpeedButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
infiniteVehicleSpeedButton.Text = "Infinite vehicle speed"
local closeVehicleTyButton = Instance.new("TextButton", VehicleTycoonFrame)
closeVehicleTyButton.Position = UDim2.new(0,0,0.065,0)
closeVehicleTyButton.Size = UDim2.new(0.98,0,0.05,0)
closeVehicleTyButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
closeVehicleTyButton.Text = "Close"

repeat wait() until player.Character:FindFirstChild("Humanoid")

local msg = "Hi                                                                                                                         {WARNING} "..player.Name.." just joined the game, say hi!"
if game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

function connectfunc()
    flyButton.MouseButton1Click:Connect(buttonfuncFly)
    nocButton.MouseButton1Click:Connect(buttonfuncNoclip)
    speedButton.MouseButton1Click:Connect(buttonfuncSpeed)
    resizeButton.MouseButton1Click:Connect(buttonfuncResizeBig)
    resizeButton.MouseButton2Click:Connect(buttonfuncResizeSmall)
    heightButton.MouseButton1Click:Connect(buttonfuncHeightBig)
    heightButton.MouseButton2Click:Connect(buttonfuncHeightSmall)
    moongButton.MouseButton1Click:Connect(buttonfuncMoonGravity)
    jumphButton.MouseButton1Click:Connect(buttonfuncJumpHeight)
    airjumpButton.MouseButton1Click:Connect(buttonfuncAirJump)
    clicktpButton.MouseButton1Click:Connect(buttonfuncClickTP)
    swastikaButton.MouseButton1Click:Connect(buttonfuncSwastika)
    invisButton.MouseButton1Click:Connect(buttonfuncInvis)
    cloneanimButton.MouseButton1Click:Connect(buttonfuncCloneAnim)
    pushButton.MouseButton1Click:Connect(buttonfuncPush)
    killNoToolButton.MouseButton1Click:Connect(buttonfuncKillNoTool)
    spinButton.MouseButton1Click:Connect(buttonfuncSpin)
    autoRespawnButton.MouseButton1Click:Connect(buttonfuncAutoRespawn)
    arrestButton.MouseButton1Click:Connect(buttonfuncArrest)
    bypassTaserButton.MouseButton1Click:Connect(buttonfuncBypassTaser)
    killTouchButton.MouseButton1Click:Connect(buttonfuncTouchKill)
    followButton.MouseButton1Click:Connect(buttonfuncFollow)
    aimbotButton.MouseButton1Click:Connect(buttonfuncAimbot)
    espButton.MouseButton1Click:Connect(buttonfuncESP)
    noarmButton.MouseButton1Click:Connect(buttonfuncNoArm)
    nolegButton.MouseButton1Click:Connect(buttonfuncNoLeg)
    freeCamButton.MouseButton1Click:Connect(buttonfuncFreeCam)
    teleportButton.MouseButton1Click:Connect(buttonfuncTeleport)
    astronautButton.MouseButton1Click:Connect(buttonfuncAstronaut)
    spefButton.MouseButton1Click:Connect(buttonfuncSpef)
    rejoinButton.MouseButton1Click:Connect(buttonfuncRejoin)
    noFallDamageButton.MouseButton1Click:Connect(buttonfuncNoFallDamage)
    closeprisonButton.MouseButton1Click:Connect(buttonfuncClosePrisonLife)
    killauraButton.MouseButton1Click:Connect(buttonfuncKillAura)
    killallplrsseekerButton.MouseButton1Click:Connect(buttonfuncKillAllPlrsSeeker)
    closeHideaSeekExButton.MouseButton1Click:Connect(buttonfuncCloseHideAndSeek)
    getallcoinsButton.MouseButton1Click:Connect(buttonfuncgetAllCoinsHDSE)
    infiniteVehicleSpeedButton.MouseButton1Click:Connect(buttonfuncInfiniteVehicleSpeedVTY)
    closeVehicleTyButton.MouseButton1Click:Connect(buttonfuncCloseVehicleTycoon)

    --specific
    prisonButon.MouseButton1Click:Connect(buttonfuncPrisonLife)
    hideandseekextremeButon.MouseButton1Click:Connect(buttonfuncHideAndSeekExtreme)
    VehicleTycoonButon.MouseButton1Click:Connect(buttonfuncVehicleTycoon)
    
end

game.Players.LocalPlayer.Character.HumanoidRootPart.Touched:Connect(function(tou)
    if touchKill == true then
        if tou.Parent:FindFirstChild("Humanoid") then
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
            game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
        end
    end
end)

    rs.Stepped:connect(function()

        if freecam == true then
            repeat
                wait()
                if not game.Workspace:FindFirstChild("FreeCam") then break end
                player.Character:WaitForChild("Humanoid").WalkSpeed = 0
                game.Workspace.CurrentCamera.CameraSubject = game.Workspace:FindFirstChild("FreeCam")
            until game.Workspace.CurrentCamera.CameraSubject == game.Workspace:FindFirstChild("FreeCam")
        end


        if wspeed == true then
            player.Character:WaitForChild("Humanoid").WalkSpeed = 70
        end

        if noclip == true then
            for i,v in pairs(player.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end

        if moong == true then
            workspace.Gravity = 40
        end

        if jumph == true then
            player.Character.Humanoid.JumpPower = 140
        end

        if killaura == true then
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= player.Name then
                    if v.Character then
                        if v.Character:FindFirstChild("HumanoidRootPart") then
                            if(player.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude < 18 then
                                game.ReplicatedStorage.meleeEvent:FireServer(v)
                                game.ReplicatedStorage.meleeEvent:FireServer(v)
                            end
                        end
                    end
                end
            end

        end

        if push == true then
            for i,v in pairs(player.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end

            if not player.Character.HumanoidRootPart:FindFirstChild("thru") then
                local bambam = Instance.new("BodyThrust")
                bambam.Name = "thru"
                bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                bambam.Force = Vector3.new(power,0,power)
                bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            end
        end

        if esp == true then
            for i, v in pairs(game.Players:GetPlayers()) do
                if v.Character then
                    if game.Workspace[v.Name]:FindFirstChild("Head") then
                        if v.Character.Head:FindFirstChild("ESP") then
                            v.Character.Head:FindFirstChild("ESP").TextLabel.Text = v.Name.." / "..math.floor((player.Character.Head.Position - v.Character.Head.Position).magnitude).."m"
                        else
                            if v.Name ~= player.Name then
                                local billboard = Instance.new("BillboardGui", v.Character.Head)
                                billboard.Name = "ESP"
                                billboard.Active = true
                                billboard.Enabled = true
                                billboard.AutoLocalize = true
                                billboard.AlwaysOnTop = true
                                billboard.MaxDistance = 99999
                                billboard.Size = UDim2.new(0,200,0,75)
                                billboard.ResetOnSpawn = false
                                local text = Instance.new("TextLabel", billboard)
                                text.Size = UDim2.new(0,200,0,75)
                                text.BackgroundTransparency = 1
                                text.TextColor3 = Color3.new(0,1,0)
                                text.TextScaled = true
                                text.TextStrokeTransparency = 1
                                billboard.Adornee = v.Character.Head
                            end
                        end
                    end
                end
            end
        end

        if vehiclespeedTy == true then
            if game.Workspace:WaitForChild("Vehicles"):FindFirstChild(player.Name) then
                game.Workspace:WaitForChild("Vehicles"):FindFirstChild(player.Name):WaitForChild("Stats").MaxSpeed.Value = 100000
                game.Workspace:WaitForChild("Vehicles"):FindFirstChild(player.Name):WaitForChild("Stats").ReverseSpeed.Value = 100000
                game.Workspace:WaitForChild("Vehicles"):FindFirstChild(player.Name):WaitForChild("Stats").TurnSpeed.Value = 100000
                game.Workspace:WaitForChild("Vehicles"):FindFirstChild(player.Name):WaitForChild("Stats").TurnRadius.Value = 80
            end
        end

        if game.workspace[game.Players.LocalPlayer.Name].Head:FindFirstChild("face") then
            game.workspace[game.Players.LocalPlayer.Name].Head.face:Destroy()
        end

        if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChildWhichIsA("Shirt") then
            game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChildWhichIsA("Shirt"):Destroy()
        end

        if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChildWhichIsA("Pants") then
            game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChildWhichIsA("Pants"):Destroy()
        end
    end)

    player.CharacterAdded:Connect(function(char)
    
            char:WaitForChild("HumanoidRootPart").Touched:Connect(function(tou)
                if touchKill == true then
                    if tou.Parent:FindFirstChild("Humanoid") then
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                        game.ReplicatedStorage.meleeEvent:FireServer(game.Players[tou.Parent.Name])
                    end
                end
            end)

            if arrest == true then
                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.Button1Down:connect(function()
                    game.Workspace.Remote.arrest:InvokeServer(mouse.Target)
                end)
            end

            if bypasstaser == true then
                game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
            end

            while nofall == true do
                wait(0.1)
                if player.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                    player.Character.Humanoid:ChangeState(10)
                    player.Character.Humanoid:ChangeState(10)
                    player.Character.Humanoid:ChangeState(10)
                end
            end
    end)

local myChar = player.Character
local myHRP = myChar:WaitForChild("HumanoidRootPart")
local camera = game.Workspace.CurrentCamera
local speed = 0.5
function fly()
    if flying == false then
        flying = true
        flyButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        player.Character.Humanoid.WalkSpeed = 0
        while flying == true do
            rs.RenderStepped:wait()
            player.Character.Humanoid:ChangeState(11)
            root = player.Character.HumanoidRootPart
            cam = game.Workspace.CurrentCamera
            if wpress == true then
                root.CFrame = CFrame.new(root.CFrame.p,root.CFrame.p+Vector3.new(cam.CFrame.lookVector.X,cam.CFrame.lookVector.Y,cam.CFrame.lookVector.Z)) * CFrame.new(0,0,-0.7)
            end
            
            if apress == true then
                root.CFrame = CFrame.new(root.CFrame.p,root.CFrame.p+Vector3.new(cam.CFrame.lookVector.X,cam.CFrame.lookVector.Y,cam.CFrame.lookVector.Z)) * CFrame.new(-0.7,0,0)
            end
            if spress == true then
                root.CFrame = CFrame.new(root.CFrame.p,root.CFrame.p+Vector3.new(cam.CFrame.lookVector.X,cam.CFrame.lookVector.Y,cam.CFrame.lookVector.Z)) * CFrame.new(0,0,0.7)
            end
            if dpress == true then
                root.CFrame = CFrame.new(root.CFrame.p,root.CFrame.p+Vector3.new(cam.CFrame.lookVector.X,cam.CFrame.lookVector.Y,cam.CFrame.lookVector.Z)) * CFrame.new(0.7,0,0)
            end
            if wpress == false and apress == false and dpress == false and spress == false then
                root.CFrame = CFrame.new(root.CFrame.p,root.CFrame.p+Vector3.new(cam.CFrame.lookVector.X,cam.CFrame.lookVector.Y,cam.CFrame.lookVector.Z))
            end
        end
    end
end
function endFlying()
    flying = false
    flyButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
    player.Character.Humanoid.WalkSpeed = oldspeed
end
function startnoclip()
    noclip = true
    nocButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
end
function endnoclip()
    noclip = false
    nocButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
end

	function buttonfuncFly()
        if player.Character.Humanoid.Health < 1 then return end
		if not flying then
			fly()
		else
			endFlying()
		end
	end

    function buttonfuncNoclip()
        if player.Character.Humanoid.Health < 1 then return end
        if not noclip then
			startnoclip()
		else
			endnoclip()
		end
    end

    function buttonfuncSpeed()
        if player.Character.Humanoid.Health < 1 then return end
        if wspeed == false then
            wspeed = true
            speedButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            wspeed = false
            speedButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            wait(.25)
            player.Character.Humanoid.WalkSpeed = oldspeed
        end
    end

    function buttonfuncResizeBig()
        if player.Character.Humanoid.Health < 1 then return end
        bigr6size = bigr6size + bignum
        resizeButton.Text = "Resize: "..bigr6size
        if player.Character:FindFirstChild("LowerTorso") then
            player.Character.Humanoid.BodyWidthScale.Value = player.Character.Humanoid.BodyWidthScale.Value + bignum
            player.Character.Humanoid.BodyDepthScale.Value = player.Character.Humanoid.BodyDepthScale.Value + bignum
            player.Character.Humanoid.BodyHeightScale.Value = player.Character.Humanoid.BodyHeightScale.Value + bignum
            player.Character.Humanoid.BodyProportionScale.Value = player.Character.Humanoid.BodyProportionScale.Value + bignum
            player.Character.Humanoid.BodyTypeScale.Value = player.Character.Humanoid.BodyTypeScale.Value + bignum
            player.Character.Humanoid.BodyWidthScale.Value = player.Character.Humanoid.BodyWidthScale.Value + bignum
            player.Character.Humanoid.HeadScale.Value = player.Character.Humanoid.HeadScale.Value + bignum
        else
            giant(player, bigr6size)
        end
    end

    function buttonfuncResizeSmall()
        if player.Character.Humanoid.Health < 1 then return end
        bigr6size = bigr6size - bignum
        resizeButton.Text = "Resize: "..bigr6size
        if player.Character:FindFirstChild("LowerTorso") then
            player.Character.Humanoid.BodyWidthScale.Value = player.Character.Humanoid.BodyWidthScale.Value - bignum
            player.Character.Humanoid.BodyDepthScale.Value = player.Character.Humanoid.BodyDepthScale.Value - bignum
            player.Character.Humanoid.BodyHeightScale.Value = player.Character.Humanoid.BodyHeightScale.Value - bignum
            player.Character.Humanoid.BodyProportionScale.Value = player.Character.Humanoid.BodyProportionScale.Value - bignum
            player.Character.Humanoid.BodyTypeScale.Value = player.Character.Humanoid.BodyTypeScale.Value - bignum
            player.Character.Humanoid.BodyWidthScale.Value = player.Character.Humanoid.BodyWidthScale.Value - bignum
            player.Character.Humanoid.HeadScale.Value = player.Character.Humanoid.HeadScale.Value - bignum
        else
            giant(player, bigr6size)
        end
    end

    function buttonfuncHeightBig()
        if player.Character.Humanoid.Health < 1 then return end
        player.Character.Humanoid.HipHeight = player.Character.Humanoid.HipHeight + 1
        heightButton.Text = "Height: "..player.Character.Humanoid.HipHeight
    end

    function buttonfuncHeightSmall()
        if player.Character.Humanoid.Health < 1 then return end
        player.Character.Humanoid.HipHeight = player.Character.Humanoid.HipHeight - 1
        heightButton.Text = "Height: "..player.Character.Humanoid.HipHeight
    end

    function buttonfuncMoonGravity()
        if player.Character.Humanoid.Health < 1 then return end
        if moong == false then
            moong = true
            moongButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            moong = false
            moongButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            workspace.Gravity = oldg
        end
    end



    function buttonfuncJumpHeight()
        if player.Character.Humanoid.Health < 1 then return end
        if jumph == false then
            jumph = true
            jumphButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            jumph = false
            jumphButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            player.Character.Humanoid.JumpPower = oldjumph
        end
    end

    function buttonfuncAirJump()
        if player.Character.Humanoid.Health < 1 then return end
        if airjump == false then
            airjump = true
            airjumpButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            airjump = false
            airjumpButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end

    function buttonfuncClickTP()
        if player.Character.Humanoid.Health < 1 then return end
        if clicktp == false then
            clicktp = true
            clicktpButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            clicktp = false
            clicktpButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end

    function buttonfuncSwastika()
        if player.Character:FindFirstChild("LowerTorso") then

        else
            local rootpart = player.Character:WaitForChild("HumanoidRootPart",5)
            function cpos(p,a,b,c,x,y,z)
                local bf = Instance.new("BodyForce")
                bf.force = Vector3.new(0, workspace.Gravity * p:GetMass(), 0)
                bf.Parent = p
                rs.RenderStepped:Connect(function()
                    p.CFrame = rootpart.CFrame * CFrame.new(a,b,c) * CFrame.Angles(x,y,z)
                end)
                p:BreakJoints()
            end
            cpos(player.Character["Left Arm"],-1.5,1.5,0,0,0,math.rad(-90))
            cpos(player.Character["Right Arm"],1.5,1,0,0,0,math.rad(180))
            cpos(player.Character["Left Leg"],-1.5,-1,0,0,0,math.rad(0))
            cpos(player.Character["Right Leg"],1,-1.5,0,0,0,math.rad(90))
        end
    end

    function buttonfuncInvis()
        if player.Character.Humanoid.Health < 1 then return end
        Char  = player.Character
        touched,tpdback = false, false
        player.CharacterAdded:connect(function(char)
            wait(.25)
            loc = Char.HumanoidRootPart.Position
            Char:MoveTo(box.Position + Vector3.new(0,.5,0))
        end)
        box = Instance.new('Part',workspace)
        box.Anchored = true
        box.CanCollide = true
        box.Size = Vector3.new(10,1,10)
        box.Position = Vector3.new(0,10000,0)
        box.Touched:connect(function(part)
            if (part.Parent.Name == player.Name) then
                if touched == false then
                    touched = true
                    function apply()
                        no = Char.HumanoidRootPart:Clone()
                        wait(.25)
                        Char.HumanoidRootPart:Destroy()
                        no.Parent = Char
                        Char:MoveTo(loc)
                        print(no.Position)
                        touched = false
                    end
                    if Char then
                        apply()
                    end
                end
            end
        end)
        repeat wait() until Char
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end

    function buttonfuncCloneAnim()
        if player.Character.Humanoid.Health < 1 then return end
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://215384594"
        local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        if clone == false then
            clone = true
            cloneanimButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
            track:Play(.5, 1, 1e7)
        else
            clone = false
            cloneanimButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            local Humanoid = player.Character.Humanoid
            local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
            for _,v in pairs(ActiveTracks) do
                v:Stop()
            end
        end
    end


    function buttonfuncPush()
        if push == false then
            push = true
            pushButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            push = false
            pushButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            player.Character.HumanoidRootPart:FindFirstChild("thru"):Destroy()
            wait(0.25)
            player.Character.Humanoid:ChangeState(11)
        end
    end


    function buttonfuncKillNoTool()
        for i, plr in pairs(game.Players:GetPlayers()) do
            if plr.Name ~= game.Players.LocalPlayer.Name then
                if plr.Character then
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(plr.Character:GetPrimaryPartCFrame())
                    wait(0.35)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                    game.ReplicatedStorage.meleeEvent:FireServer(plr)
                end
            end
        end
    end


    function buttonfuncSpin()
        if spin == false then
            spin = true
            spinButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
            while spin == true do
                rs.RenderStepped:wait()
                player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame *CFrame.Angles(0,0.5,0)
            end
        else
            spin = false
            spinButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end

    local followplayer = nil

    function buttonfuncFollow()
        if follow == false then
            follow = true
            followButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)

            createPlayerwindow()
        else
            follow = false
            followplayer = nil
            followButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            if player.Character.HumanoidRootPart:FindFirstChild("ExploitPosition") then
                player.Character.HumanoidRootPart:FindFirstChild("ExploitPosition"):Destroy()
            end
            createPlayerwindow()
            following = false
        end
    end

    function buttonfuncAutoRespawn()
        if autoRespawn == false then
            autoRespawn = true
            autoRespawnButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
            game.Players.RespawnTime = 0

            while autoRespawn == true do
                rs.RenderStepped:wait()
                if player.Character.Humanoid.Health < 1 then
                    local location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				    local A_1 = "\66\114\111\121\111\117\98\97\100\100"
				    local Event = game:GetService("Workspace").Remote.loadchar
				    Event:InvokeServer(A_1)
				    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
                end
            end
        else
            autoRespawn = false
            autoRespawnButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            game.Players.RespawnTime = oldResptime
        end
    end

    function buttonfuncArrest()
        if arrest == false then
            arrest = true
            arrestButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
            local mouse = game.Players.LocalPlayer:GetMouse()
            mouse.Button1Down:connect(function()
                local response = game.Workspace.Remote.arrest:InvokeServer(mouse.Target)
                print(response)
            end)
        else
            arrest = false
            arrestButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end


    function buttonfuncBypassTaser()
        if bypasstaser == false then
            bypasstaser = true
            bypassTaserButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)

            game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
        else
            bypasstaser = false
            bypassTaserButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
        end
    end

    function buttonfuncTouchKill()
        if touchKill == false then
            touchKill = true
            killTouchButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            touchKill = false
            killTouchButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end


    function buttonfuncAimbot()
        if aimbot == false then
            aimbot = true
            aimbotButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            aimbot = false
            aimbotButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end

    function buttonfuncESP()
        if esp == false then
            esp = true
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
	            Text = 'WARNING: if the distance doesnt change, de- and activate the ESP and then it should work.';
	            Font = Enum.Font.SourceSansBold;
	            Color = Color3.new(1,0,0);
	            FontSize = Enum.FontSize.Size18;
            })
            espButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            esp = false
            espButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            for i, v in pairs(game.Players:GetPlayers()) do
                if v.Character.Head:FindFirstChild("ESP") then
                    repeat wait()
                        v.Character.Head:FindFirstChild("ESP"):Destroy()
                    until not v.Character.Head:FindFirstChild("ESP")
                end
            end
        end
    end 


    function buttonfuncNoArm()
        if player.Character:FindFirstChild("LowerTorso") then
            player.Character["LeftUpperArm"]:Destroy()
            player.Character["RightUpperArm"]:Destroy()
            player.Character["RightLowerArm"]:Destroy()
            player.Character["RightLowerArm"]:Destroy()
            player.Character["LeftHand"]:Destroy()
            player.Character["RightHand"]:Destroy()
        else
            player.Character["Left Arm"]:Destroy()
            player.Character["Right Arm"]:Destroy()
        end
    end

    function buttonfuncNoLeg()
        if player.Character:FindFirstChild("LowerTorso") then
            player.Character["LeftUpperLeg"]:Destroy()
            player.Character["RightUpperLeg"]:Destroy()
            player.Character["RightLowerLeg"]:Destroy()
            player.Character["RightLowerLeg"]:Destroy()
            player.Character["LeftFoot"]:Destroy()
            player.Character["RightFoot"]:Destroy()
        else
            player.Character["Left Leg"]:Destroy()
            player.Character["Right Leg"]:Destroy()
        end
    end

    function buttonfuncFreeCam()
        if freecam == false then
            freecam = true
            player.Character.Humanoid.WalkSpeed = 0
            freeCamButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)

            local newCam = Instance.new("Part", game.Workspace)
            newCam.Name = "FreeCam"
            newCam.CFrame = player.Character.Head.CFrame
            newCam.Size = Vector3.new(0,0,0)
            newCam.Anchored = true
            newCam.Transparency = 1
            firstpersonCursorFree.Modal = true

            repeat
                game.Workspace.CurrentCamera.CameraSubject = newCam
            until game.Workspace.CurrentCamera.CameraSubject == newCam

            while freecam == true do
                rs.RenderStepped:wait()
                if not game.Workspace:FindFirstChild("FreeCam") then
                    freecam = false
                    break
                end
                player.CameraMode = Enum.CameraMode.LockFirstPerson

                if wpress == true then
                    game.Workspace:FindFirstChild("FreeCam").CFrame = game.Workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -1)
                end
                
                if apress == true then
                    game.Workspace:FindFirstChild("FreeCam").CFrame = game.Workspace.CurrentCamera.CFrame * CFrame.new(-0.5, 0, -0.5)
                end
                if spress == true then
                    game.Workspace:FindFirstChild("FreeCam").CFrame = game.Workspace.CurrentCamera.CFrame
                end
                if dpress == true then
                    game.Workspace:FindFirstChild("FreeCam").CFrame = game.Workspace.CurrentCamera.CFrame * CFrame.new(0.5, 0, -0.5)
                end
                if wpress == false and apress == false and dpress == false and spress == false then
                    game.Workspace:FindFirstChild("FreeCam").CFrame = game.Workspace.CurrentCamera.CFrame * CFrame.new(0,0,-0.5)
                end
            end
        else
            freecam = false
            player.Character.Humanoid.WalkSpeed = oldspeed
            freeCamButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            firstpersonCursorFree.Modal = false
            repeat
                game.Workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
            until game.Workspace.CurrentCamera.CameraSubject == player.Character.Humanoid
            game.Workspace:FindFirstChild("FreeCam"):Destroy()
            player.CameraMode = Enum.CameraMode.Classic
        end
    end

    function buttonfuncTeleport()
        if teleport == false then
            teleport = true
            createPlayerwindow()
        else
            teleport = false
            createPlayerwindow()
        end
    end

    function buttonfuncAstronaut()
        if astronaut == false then
            astronaut = true
            astronautButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
            game.Workspace.Gravity = 0.01

            while astronaut == true do
                rs.RenderStepped:wait()
                player.Character.Humanoid:ChangeState(16)
            end

        else
            astronaut = false
            astronautButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
            game.Workspace.Gravity = oldg
            player.Character.Humanoid.WalkSpeed = oldspeed
            wait(.25)
            player.Character.Humanoid:ChangeState(0)
        end
    end

    function buttonfuncNoFallDamage()
        if nofall == false then
            nofall = true
            noFallDamageButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)

            while nofall == true do
                wait(0.1)
                if player.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                    player.Character.Humanoid:ChangeState(10)
                    player.Character.Humanoid:ChangeState(10)
                    player.Character.Humanoid:ChangeState(10)
                end
            end
        else
            nofall = false
            noFallDamageButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end

    function buttonfuncSpef()
        gamewindow.Visible = not gamewindow.Visible
    end

    function buttonfuncPrisonLife()
        gamewindow.Visible = not gamewindow.Visible

        prisonLifeFrame.Visible = not prisonLifeFrame.Visible

        haxframe.Visible = not haxframe.Visible
    end

    function buttonfuncHideAndSeekExtreme()
        gamewindow.Visible = not gamewindow.Visible

        HideandSeekFrame.Visible = not HideandSeekFrame.Visible

        haxframe.Visible = not haxframe.Visible
    end

    function buttonfuncVehicleTycoon()
        gamewindow.Visible = not gamewindow.Visible

        VehicleTycoonFrame.Visible = not VehicleTycoonFrame.Visible

        haxframe.Visible = not haxframe.Visible
    end

    function buttonfuncClosePrisonLife()
        prisonLifeFrame.Visible = not prisonLifeFrame.Visible

        haxframe.Visible = not haxframe.Visible
    end

    function buttonfuncCloseHideAndSeek()
        HideandSeekFrame.Visible = not HideandSeekFrame.Visible

        haxframe.Visible = not haxframe.Visible
    end

    function buttonfuncCloseVehicleTycoon()
        VehicleTycoonFrame.Visible = not VehicleTycoonFrame.Visible

        haxframe.Visible = not haxframe.Visible
    end

    function buttonfuncRejoin()

        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
 
        ts:Teleport(game.PlaceId, p)

    end

    function buttonfuncKillAura()
        if killaura == false then
            killaura = true
            killauraButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            killaura = false
            killauraButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end

    function buttonfuncKillAllPlrsSeeker()
        local oldpos = player.Character:GetPrimaryPartCFrame()
        for i,v in pairs(game.Players:GetPlayers()) do
            wait(0.3)
            if v.Character:FindFirstChild("HumanoidRootPart") then
                player.Character:SetPrimaryPartCFrame(v.Character.HumanoidRootPart.CFrame)
            end
        end
        wait(0.1)
        player.Character:SetPrimaryPartCFrame(oldpos)

    end

    function buttonfuncgetAllCoinsHDSE()
        local oldpos = player.Character:GetPrimaryPartCFrame()
        for i,v in pairs(game.Workspace.GameObjects:GetChildren()) do
            wait(0.3)
            player.Character:SetPrimaryPartCFrame(v.CFrame)
        end

        wait(0.1)
        player.Character:SetPrimaryPartCFrame(oldpos)
    end

    function buttonfuncInfiniteVehicleSpeedVTY()
        if vehiclespeedTy == false then
            vehiclespeedTy = true
            infiniteVehicleSpeedButton.BackgroundColor3 = Color3.new(0.15,0.5,0.05)
        else
            vehiclespeedTy = false
            infiniteVehicleSpeedButton.BackgroundColor3 = Color3.new(0.5,0.15,0.05)
        end
    end
UserInputService.InputBegan:connect(function(input, chatting)

    if chatting == true then return end
        
        player = game.Players.LocalPlayer

        if input.KeyCode == Enum.KeyCode.Space then
            if airjump == true then
                player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end

        if input.KeyCode == Enum.KeyCode.W then
            wpress = true
        end

        if input.KeyCode == Enum.KeyCode.A then
            apress = true
        end

        if input.KeyCode == Enum.KeyCode.S then
            spress = true
        end

        if input.KeyCode == Enum.KeyCode.D then
            dpress = true
        end
end)

UserInputService.InputEnded:Connect(function(input, chatting)

    if chatting == true then return end

    if input.KeyCode == Enum.KeyCode.W then
        wpress = false
    end

    if input.KeyCode == Enum.KeyCode.A then
        apress = false
    end

    if input.KeyCode == Enum.KeyCode.S then
        spress = false
    end

    if input.KeyCode == Enum.KeyCode.D then
        dpress = false
    end

end)


Mouse = player:GetMouse()
Mouse.Button1Down:Connect(function()
    if(clicktp == true) then
        player.Character:MoveTo(Mouse.Hit.p)
    end
end)


function giant(p, size) 
    local pchar = p.Character
    if pchar then
        local function scale(chr,scl)

            for _,v in pairs(pchar:GetChildren()) do
                if v:IsA("Hat") then
                    v:Clone()
                    v.Parent = game.Lighting
                end
            end

            local Head = chr['Head']
            local Torso = chr['Torso']
            local LA = chr['Left Arm']
            local RA = chr['Right Arm']
            local LL = chr['Left Leg']
            local RL = chr['Right Leg']
            local HRP = chr['HumanoidRootPart']

            wait(0.1)

            Head.formFactor = 3
            Torso.formFactor = 3
            LA.formFactor = 3
            RA.formFactor = 3
            LL.formFactor = 3
            RL.formFactor = 3
            HRP.formFactor = 3

            Head.Size = Vector3.new(scl * 2, scl, scl)
            Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
            LA.Size = Vector3.new(scl, scl * 2, scl)
            RA.Size = Vector3.new(scl, scl * 2, scl)
            LL.Size = Vector3.new(scl, scl * 2, scl)
            RL.Size = Vector3.new(scl, scl * 2, scl)
            HRP.Size = Vector3.new(scl * 2, scl * 2, scl)

            local Motor1 = Instance.new('Motor6D', Torso)
            Motor1.Part0 = Torso
            Motor1.Part1 = Head
            Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
            Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
            Motor1.Name = "Neck"

            local Motor2 = Instance.new('Motor6D', Torso)
            Motor2.Part0 = Torso
            Motor2.Part1 = LA
            Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
            Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
            Motor2.Name = "Left Shoulder"

            local Motor3 = Instance.new('Motor6D', Torso)
            Motor3.Part0 = Torso
            Motor3.Part1 = RA
            Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
            Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
            Motor3.Name = "Right Shoulder"

            local Motor4 = Instance.new('Motor6D', Torso)
            Motor4.Part0 = Torso
            Motor4.Part1 = LL
            Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
            Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
            Motor4.Name = "Left Hip"

            local Motor5 = Instance.new('Motor6D', Torso)
            Motor5.Part0 = Torso
            Motor5.Part1 = RL
            Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
            Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
            Motor5.Name = "Right Hip"

            local Motor6 = Instance.new('Motor6D', HRP)
            Motor6.Part0 = HRP
            Motor6.Part1 = Torso
            Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
            Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)

        end

        scale(pchar, size)
        pchar.Humanoid.WalkSpeed = 15 * size

        for _,v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("Hat") then
                v.Parent = pchar
            end
        end
    end
end




function createPlayerwindow()
    local abstandX = 0.05
    local abstandY = 0.05
    local reihe = 1
    local num = 0

    if following == false then
        playerwindow.Visible = not playerwindow.Visible
        if playerwindow.Visible == true then
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= player.Name and not PlayerFrameWindow:FindFirstChild(v.Name.."Frame") then
                    local showPlayerFrame = Instance.new("ImageButton", PlayerFrameWindow)
                    showPlayerFrame.Name = v.Name
                    showPlayerFrame.Size = UDim2.new(0.1,0,0.17,0)
                    showPlayerFrame.Position = UDim2.new(abstandX,0,abstandY,0)
                    local playertext = Instance.new("TextLabel", showPlayerFrame)
                    playertext.Text = v.Name
                    playertext.Size = UDim2.new(1,0,0.2,0)
                    playertext.Position = UDim2.new(0,0,1.2,0)
                    playertext.BackgroundTransparency = 0.5
                    playertext.TextScaled = true
                    if v.Neutral == true then
                        playertext.TextColor3 = Color3.new(1,1,1)
                    else
                        playertext.TextColor3 = v.TeamColor.Color
                    end
                    local content, isReady = game.Players:GetUserThumbnailAsync(v.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
                    showPlayerFrame.Image = content
                    abstandX = abstandX + 0.16
                    num = num + 1
                    if num/6 == 1 then
                        num = 0
                        abstandX = 0.05
                        abstandY = abstandY + 0.25
                    end
    
                    showPlayerFrame.MouseButton1Click:Connect(function()
                        if teleport == true then
                            player.Character:SetPrimaryPartCFrame(game.Players[showPlayerFrame.Name].Character:GetPrimaryPartCFrame())
                            createPlayerwindow()
                            teleport = false
                        elseif follow == true then
                            if not showPlayerFrame.Name or type(showPlayerFrame.Name) == nil then return end
                            followplayer = showPlayerFrame.Name
                            following = true
                            playerwindow.Visible = not playerwindow.Visible
                            local bodyposition = Instance.new("BodyPosition", player.Character.HumanoidRootPart)
                            bodyposition.Name = "ExploitPosition"
                            bodyposition.maxForce = Vector3.new(500000000, 500000000, 500000000)
                            bodyposition.P = 4000000
                            bodyposition.D = 1000
                            while follow == true do
                                rs.RenderStepped:wait()
                                local plrin = game.Players:FindFirstChild(followplayer)
                                if plrin then
                                    if plrin.Character and player.Character then
                                        if plrin.Character.HumanoidRootPart and player.Character.HumanoidRootPart then
                                            bodyposition.position = plrin.Character:GetPrimaryPartCFrame().p
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        else
            while #PlayerFrameWindow:GetChildren() > 1 do
                wait()
                for i,v in pairs(PlayerFrameWindow:GetChildren()) do
                    v:Destroy()
                end
            end
        end

    end

end

connectfunc()