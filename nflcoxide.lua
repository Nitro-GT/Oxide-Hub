

--[[ 
Oxide V2 
Anything below should NOT be changed
]]

_G.SBV4R = false
_G.R6Mode = false
_G.MiztCompat = true
_G.Fling = false
local flingpos = game.Players.LocalPlayer:GetMouse().Hit
local flingpart = game.Players.LocalPlayer:GetMouse().Target
local flingplr = nil
local sineee=os.clock()
 local plr =game:GetService("Players").LocalPlayer
 local cf 
local lastcf = workspace.CurrentCamera.CFrame
local oldh = workspace.FallenPartsDestroyHeight
local function redo()
wait(.1)
local Hat = {
Rename = function(HatID, NAME, oname)
if oname == nil then oname = "Hat" end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") then
        if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            if v:WaitForChild("Handle"):FindFirstChildWhichIsA("SpecialMesh").TextureId == HatID then
          	  if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            end
        elseif game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 and v.Handle.TextureId == HatID  then
                 if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            elseif game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            if v.Handle.TextureID == HatID then
                if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
             end
                end
            end
        end
    end
end}


local gay = true -- dont edit >:(
hmode = nil
if gay == true then
hmode = "norm" 
else
hmode = "alsoo3" -- hate this guy
end



Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/library"))()

local HatMode=hmode

if HatMode=="alsoo3" then

local HATDUPES = Library.MakeTableOfHats("Mesh",{Mesh_Id=4315410540})
HATDUPES[1].Name = "DemonGodSword"
HATDUPES[2].Name = "RainbowGodSword"
HATDUPES[3].Name = "ToxicLordSword"
HATDUPES[4].Name = "DemonLordSword"
if Library.FindHat("ShadowBladeMasterAccessory") then
Library.FindHat("ShadowBladeMasterAccessory").Name="VoidLordSword"
end
	
if Library.FindHat("BladeMasterAccessory") then
Library.FindHat("BladeMasterAccessory").Name="AuroraSword"

end
else
print("richhhh")
end


--game:GetService("Workspace")["Error_30363"].EyesOfTheEverWorld.Name = "Puffer Vest"

_G.HeadMovement = false -- respawns your character and you will also have no animations unless you run a script
_G.HeadMovementv4 = false -- v2 was this but shit (semi-bot)
_G.HeadMovementv3 = true -- just aligns hats (iron bulb head)
_G.fakeHeadMovementv2 = false -- uses permadeath and the same hats as headmovementv2 to look cool or some shit (need fling hat)
_G.HatLimbs = true  -- swaps your limbs with hats
_G.PermaDeath = true
_G.ShowNetwork = false -- enable for debugging
_G.BlockHead = false  
_G.ReanimatedAnimations = false
_G.CFalign = false -- CFalign = better looking but less features , Original method (false) = worse looking  but more features
_G.BlockArm = false -- hides head with wackyhead
_G.YellowHatTorso = false -- smaller but looks ok
_G.Netless = true
_G.rcdbypass = true
_G.StabilityIncrease = true -- slight jitter motion but wont crumble
_G.DelHead = false -- deletes head
_G.HatBody = false -- gives hat torso aswel 
_G.AntiFling = true
_G.EnableNetLib = false
_G.wackyhead = false -- changes non pd alot
_G.BodyForceEnabled = true
_G.FasterLoad = true -- loads perma instantly (kinda) but is really buggy
_G.HealthHide = false -- patched
_G.Blockwackyhead = false -- sometimes face dissapears
_G.R15toR6 = false -- no settings work

local char = game:GetService("Players").LocalPlayer.Character
for i,v in pairs(char:GetDescendants()) do
if v:IsA("SpecialMesh") then
if v.MeshId == "rbxassetid://13003592387"  then
v.Parent.Parent.Name = "funnihead"
end
end
end

local char = game:GetService("Players").LocalPlayer.Character
for i,v in pairs(char:GetDescendants()) do
if v:IsA("MeshPart") then
if v.MeshId == "rbxassetid://13003592387"  then
v.Parent.Name = "funnihead"
end
end
end

pcall(function()
Hat.Rename("rbxassetid://17374768001","","LARM")
Hat.Rename("rbxassetid://17374768001","","RARM")
Hat.Rename("rbxassetid://14251599953", "Tor")
                end)
pcall(function()
Hat.Rename("rbxassetid://13415110780", "Tor")
                end)
pcall(function()
Hat.Rename("rbxassetid://14255543546","","LARM")
Hat.Rename("rbxassetid://14255543546","","RARM")
end)
pcall(function()
Hat.Rename("rbxassetid://14768664565", "Tor")
Hat.Rename("rbxassetid://14768683674","","LARM")
Hat.Rename("rbxassetid://14768683674","","RARM")
end)
local c = game:GetService("Players").LocalPlayer.Character
pcall(function()
c.gooblet.Name = "fooblet"
end)
pcall(function()
c.SHADES.Handle.AccessoryWeld.C1 = CFrame.new(0, 0.025, -0.6, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
pcall(function()
c["Accessory (LARM)"].Name = "LARM"
            end)
            pcall(function()
c["Accessory (RARM)"].Name = "RARM"
            end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/renameclones3"))()
if _G.EnableNetLib == true then
loadstring(game:HttpGet("https://raw.githubusercontent.com/TypicallyAUser/random-stuff/main/4eyesnetlib.lua"))()

Network.CharacterRelative = false

coroutine.resume(Network["PartOwnership"]["Enable"])
end

    


Connection = workspace.DescendantAdded:Connect(function(c)
    if c.Name == "Animate" then
        c.Disabled=false        
    end
end)

repeat wait() until game:GetService("Players").LocalPlayer.Character
Char = game:GetService("Players").LocalPlayer.Character
Died = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
    Connection:Disconnect()
    Died:Disconnect()
end)


function waitForChild(parent, childName)
local child = parent:findFirstChild(childName)
if child then return child end
while true do
    child = parent.ChildAdded:wait()
    if child.Name==childName then return child end
end
end
local char
if not workspace:FindFirstChild("non") then
 char =  game:GetObjects("rbxassetid://5195737219")[1]
else
 char = workspace.non
end
if _G.MiztCompat == false then
char.Name = c.Name.." (Dummy)"
else
char.Name = "non"
end
zz = Instance.new("Highlight",char)
zz.FillTransparency = 1
zz.DepthMode = Enum.HighlightDepthMode.Occluded
local qqz = Instance.new("Shirt",char)
qqz.ShirtTemplate = "rbxassetid://0"
if not workspace:FindFirstChild("non") then
char:SetPrimaryPartCFrame(c.HumanoidRootPart.CFrame *CFrame.new(0,0,2))
else
print("")
end
c["Body Colors"]:Clone().Parent = char
game:GetService("Players").LocalPlayer.Character.PrimaryPart = c.Head
char.HumanoidRootPart.Anchored = false
for i,v in pairs(c:GetChildren()) do
if v:IsA("Accessory") and v.Name == "Pants" then
v:Destroy()
end
end
char.Parent = workspace
c.Parent = char
	_G.Flinging = false

local swordbigvel = false



velocity = game:GetService("RunService").Heartbeat:Connect(function(set)
for i,v in pairs(c:GetChildren()) do
	if v:IsA("Accessory")  then
		v.Handle.AssemblyLinearVelocity = Vector3.new(char.Torso.AssemblyLinearVelocity.X*25, 25.01, char.Torso.AssemblyLinearVelocity*25)
	end
end
end)

local function force(part,force)
	local bodyforce = Instance.new("BodyForce", part)
	bodyforce.Force = force
end



for i,v in pairs(c:GetChildren()) do
	if v:IsA("Part") or v:IsA("MeshPart") then
		force(v,Vector3.new(80,80,80))
	end
end


    
    


speaker = game:GetService("Players").LocalPlayer
for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = true
				end
			end

	for _, v in pairs(char:GetChildren()) do
				if v:IsA("Part") then
				v.CollisionGroup = c.Head.CollisionGroup
				end
			end	


	


	if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet"  and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "Tor" and v.Name ~= "RectangleHead-2"  and v.Name ~= "Tor" and v.Name ~= "LARM" and v.Name ~= "RARM"  and v.Name ~="Unloaded head" and v:WaitForChild("Handle"):FindFirstChildOfClass("SpecialMesh").MeshId ~= "rbxassetid://11263221350"  then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle.AccessoryWeld.Part1 = char[a.Handle.AccessoryWeld.Part1.Name]
Accessory = v
      Handle = Accessory.Handle
      pcall(function() Handle:FindFirstChildOfClass("Weld"):Destroy() end)
    	local NewWeld = Instance.new("Weld")
    	NewWeld.Name = "AccessoryWeld"
    	NewWeld.Part0 = Handle
    	local Attachment = Handle:FindFirstChildOfClass("Attachment")
    	if Attachment then
    		NewWeld.C0 = Attachment.CFrame
    		NewWeld.C1 = char:FindFirstChild(tostring(Attachment), true).CFrame
    		NewWeld.Part1 = char:FindFirstChild(tostring(Attachment), true).Parent
    	else
    		NewWeld.Part1 = FakeCharacter:FindFirstChild("Head")
    		NewWeld.C1 = CFrame.new(0,char:FindFirstChild("Head").Size.Y / 2,0) * Accessory.AttachmentPoint:Inverse()
    	end
    	Handle.CFrame = NewWeld.Part1.CFrame * NewWeld.C1 * NewWeld.C0:Inverse()
    	NewWeld.Parent = Accessory.Handle 
a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
end
           end
       end
else

 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet"  and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "Tor" and v.Name ~= "RectangleHead-2"  and v.Name ~= "Tor" and v.Name ~= "LARM" and v.Name ~= "RARM"  and v.Name ~="Unloaded head" and v:WaitForChild("Handle").MeshId ~= "rbxassetid://11263221350"  then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle:BreakJoints()
Accessory = v
      Handle = Accessory.Handle
      z = a
      a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
a.Handle.Position = char.Head.Position
a.Handle.Velocity = Vector3.new(0,0,0)
a.Handle.Massless = true
w = Instance.new("Weld",z.Handle)
w.C0 = w.Parent:FindFirstChildOfClass("Attachment").CFrame
w.Name = "AccessoryWeld"
w.Part0 = z.Handle
a  = w.Parent:FindFirstChildOfClass("Attachment")
 if string.find(a.Name,"Left") then
  if string.find(a.Name,"Shoulder") then
w.Part1 = char["Left Arm"]
w.C1 =  char["Left Arm"].LeftShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Shoulder") then
  w.Part1 = char["Right Arm"]
  w.C1 =  char["Right Arm"].RightShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Left") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Left Leg"]
  w.C1 =  char["Left Leg"].LeftFootAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Right Leg"]
  w.C1 =  char["Right Leg"].RightFootAttachment.CFrame
end
 elseif string.find(a.Name,"Waist") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].WaistBackAttachment.CFrame
       end    
        elseif string.find(a.Name,"Body") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyBackAttachment.CFrame
       elseif  string.find(a.Name,"Front") then
          w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyFrontAttachment.CFrame
       end    
            elseif string.find(a.Name,"Hat") then
                w.Part1 = char["Head"]
       w.C1 =  char["Head"].HatAttachment.CFrame 
                elseif string.find(a.Name,"FaceFront") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceFrontAttachment.CFrame 
                       elseif string.find(a.Name,"FaceCenter") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceCenterAttachment.CFrame 
                                  elseif string.find(a.Name,"Neck") then
                       w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].NeckAttachment.CFrame 
                           elseif string.find(a.Name,"Hair") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].HairAttachment.CFrame 
                           end


end
           end
       end

end




for i,v in pairs(c:GetChildren()) do
	if v:IsA("Accessory") then
		force(v.Handle,Vector3.new(80,80,80))
	end
end

   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name ~= "RectangleHead" and v.Name ~= "RectangleHead-1"  and v.Name ~= "RectangleHead-3"  and v.Name ~= "funnihead" and v.Name ~= "RectangleFace-1" and v.Name ~= "RectangleFace" and v.Name ~= "RectangleFace-2" and v.Name ~= "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 
   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "RectangleHead" and v.Name =="Puffer Vest" and v.Name == "RectangleFace" and v.Name == "RectangleFace-2" and v.Name == "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 

for _, child in pairs(char:GetChildren()) do
				if child:IsA("BasePart") then
					child.Transparency = 1
				end
			end



       local ch = game:GetService("Players").LocalPlayer.Character
local prt=Instance.new("Model", workspace)
local z1 =  Instance.new("Part", prt)
z1.Name="Torso"
z1.CanCollide = false
z1.Anchored = true
local z2  =Instance.new("Part", prt)
z2.Name="Head"
z2.Anchored = true
z2.CanCollide = false
local z3 =Instance.new("Humanoid", prt)
z3.Name="Humanoid"
z1.Position = Vector3.new(0,9999,0)
z2.Position = Vector3.new(0,9991,0)

 function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso')
	return rootPart
end
		local character = game:GetService("Players").LocalPlayer.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.SeatPart then
			humanoid.Sit = false
			wait(0.1)
		end
	
		local hipHeight = humanoid and humanoid.HipHeight > 0 and (humanoid.HipHeight + 1)
		local rootPart = getRoot(character)
		local rootPartPosition = rootPart.Position
	
	
 game:GetService("Players").LocalPlayer.Character=prt
 game:GetService("Players").LocalPlayer.Character=char
 

 
if _G.wackyhead == true then 
  wait(game:GetService("Players").RespawnTime + 0.5)  
    
    end


  --wait(game:GetService("Players").RespawnTime + 0.25)  
rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X,char.HumanoidRootPart.CFrame.Y,char.HumanoidRootPart.CFrame.Z) + Vector3.new(0, hipHeight or 4, 0)



if _G.ReanimatedAnimations == true then
pcall(function()
c.Animate.Disabled = true
c.Animate.Disabled = false
--char.Animate:Destroy()
c.Animate.Parent = char
char.Animate.Disabled = true
--char.Animate.Disabled = false
end)
c.Humanoid.Animator.Parent = char.Humanoid
workspace.CurrentCamera.CameraSubject = char.Humanoid
else 
--char.Animate:Destroy()
c.Animate.Disabled = true
c.Animate.Parent = char
char.Animate.Disabled = true
c.Humanoid.Animator.Parent = char.Humanoid
workspace.CurrentCamera.CameraSubject = char.Humanoid
end
if c:FindFirstChild("Torso") then
c.Torso["Right Hip"]:Destroy()
c.Torso["Left Hip"]:Destroy()
 c.Torso["Right Shoulder"]:Destroy()
c.Torso["Left Shoulder"]:Destroy()
end
if _G.wackyhead == true then 
c.Torso.Neck:Destroy()
    end
c.Humanoid:TakeDamage(c.Humanoid.MaxHealth*9e9)
c:BreakJoints()
if c:FindFirstChild("Torso") then
--c.Torso.Neck:Destroy()
else
--c.Head.Neck:Destroy()
c.Humanoid:TakeDamage(c.Humanoid.MaxHealth)
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TypicallyAUser/TypicalsConvertingLibrary/main/Main"))()


speaker = game:GetService("Players").LocalPlayer
	Clip = false

	local function NoclipLoop()
			for _, child in pairs(c:GetChildren()) do
				if child:IsA("BasePart") then
					child.CanCollide = false
				end
			end


		end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)


    	local function NoclipLoo()
			for _, child in pairs(char:GetChildren()) do
				if child:IsA("BasePart") then
					child.CanCollide = false
				end
			end
		end
	Noclipping2 = game:GetService('RunService').Stepped:Connect(NoclipLoo)

	


local Char = game:GetService("Players").LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

    for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:Stop()
    end
if _G.Fling == true then
local Held = false

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

Mouse.Button1Down:Connect(function()
    Held = true
end)

Mouse.Button1Up:Connect(function()
    Held = false
end)
c.HumanoidRootPart.Transparency = 0.7
local BodyVelocity = Instance.new("BodyVelocity", c.HumanoidRootPart)
BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
BodyVelocity.Velocity = Vector3.new(0, 0, 0)
flinger = Instance.new("BodyAngularVelocity",c.HumanoidRootPart)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(5000000000000000000,5000000000000000000,5000000000000000000)
spawn(function()
    while task.wait() do
        pcall(function()
            if Held == true then
                   _G.Flinging = true
               c.HumanoidRootPart.CFrame = Mouse.Hit
            else
                   _G.Flinging = false
                c.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
            end
        end)
    end
end)
end

for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end
local removinghealth = false

 
   if _G.Blockwackyhead == true and _G.wackyhead == true then
  c.Hat1.Handle:ClearAllChildren()
       
       end
   


 if _G.wackyhead == true and _G.HatBody == true then
     c.Head:Destroy()
     c.PrimaryPart = c["Right Arm"]
     
 end
  if _G.wackyhead == true and _G.BlockArm == true then
     c.Head:Destroy()
     c.PrimaryPart = c["Right Arm"]
 end
 local canactuallydo
 if _G.FasterLoad == true then
  canactuallydo = false
 else
       canactuallydo = true
 end
for k,v in pairs(c:GetChildren()) do
    if v:IsA("Accessory") then
   --     v.Handle:FindFirstChild("Attachment"):Destroy() -- destroying basic welds
    end
end

  -- workspace[game:GetService("Players").LocalPlayer.Name.." Protected Welds"]:Destroy()



local function Align(Part1, Part0, Position, Angle)
if _G.EnableNetLib == true then
             Network.RetainPart(Part1)
			 end
    game:GetService("RunService").Heartbeat:Connect(function(set)
        Part1.CFrame = Part0.CFrame * Position * Angle
       
    
        end)
    end
	
	local function Align2(Part1, Part0, Position, Angle)
          
    game:GetService("RunService").Heartbeat:Connect(function(set)
	if removinghealth == false then
        Part1.CFrame = Part0.CFrame * Position * Angle
       end
    
        end)
    end
    
	local function Align3 (Part1, Part0, Position, Angle)
          
    game:GetService("RunService").Heartbeat:Connect(function(set)
	if _G.Fling == false then
        Part1.CFrame = Part0.CFrame * Position * Angle
       end
    
        end)
	end


local connect
pcall(function()
	--char.Animate.Disabled = false
	end)
 	   connect = game:GetService("RunService").Heartbeat:Connect(function(set)
         	    pcall(function()
 c["Tor"].Handle.CFrame = char["Torso"].CFrame *CFrame.new(0,0,0)   *CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
end)
pcall(function()
c["gooblet"].Handle.CFrame = char["Left Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  *CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
end)
  	  pcall(function()
 c["fooblet"].Handle.CFrame = char["Right Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))*CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
   end)
   	  pcall(function()
  c["Accessory (rightleg)"].Handle.CFrame = char["Right Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))   *CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
 end)
 	  pcall(function()
c["Accessory (LLeg)"].Handle.CFrame = char["Left Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))   *CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
 end)

pcall(function()
          for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name ~= "gooblet" and v.Name ~= "fooblet"   and v.Name ~= "Tor" and v.Name ~= "LARM" and v.Name ~= "RARM" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LLeg)" then  
v.Handle.CFrame = char[v.Name].Handle.CFrame *CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
v.Handle.CanTouch = false
end
end
end)       
  for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory")   then
v.Handle.CanCollide = false
           end
 end

	oldcf = workspace.CurrentCamera.CFrame
	settings().Physics.AllowSleep = false
end)




		settings().Physics.AllowSleep = false


wait()
pcall(function()
rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X,-300,char.HumanoidRootPart.CFrame.Z) + Vector3.new(0, hipHeight or 4, 0)
end)
pcall(function()
for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = false
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end
        end)

end
local function redo2()
wait(.001)
local Hat = {
Rename = function(HatID, NAME, oname)
if oname == nil then oname = "Hat" end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") then
        if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            if v:WaitForChild("Handle"):FindFirstChildWhichIsA("SpecialMesh").TextureId == HatID then
          	  if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            end
            elseif game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
           if not v:WaitForChild("Handle"):FindFirstChildOfClass("SpecialMesh") then
           if v:WaitForChild("Handle").TextureID == HatID then
               print("wtf")
                if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
             end
                end
                else
            if v:WaitForChild("Handle"):FindFirstChildWhichIsA("SpecialMesh").TextureId == HatID then
          	  if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            end
                end
            end
        end
    end
end}


local gay = true -- dont edit >:(
hmode = nil
if gay == true then
hmode = "norm" 
else
hmode = "alsoo3" -- hate this guy
end



Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/library"))()

local HatMode=hmode

if HatMode=="alsoo3" then

local HATDUPES = Library.MakeTableOfHats("Mesh",{Mesh_Id=4315410540})
HATDUPES[1].Name = "DemonGodSword"
HATDUPES[2].Name = "RainbowGodSword"
HATDUPES[3].Name = "ToxicLordSword"
HATDUPES[4].Name = "DemonLordSword"
if Library.FindHat("ShadowBladeMasterAccessory") then
Library.FindHat("ShadowBladeMasterAccessory").Name="VoidLordSword"
end
	
if Library.FindHat("BladeMasterAccessory") then
Library.FindHat("BladeMasterAccessory").Name="AuroraSword"

end
else
end


--game:GetService("Workspace")["Error_30363"].EyesOfTheEverWorld.Name = "Puffer Vest"

pcall(function()
Hat.Rename("rbxassetid://17374768001","","LARM")
Hat.Rename("rbxassetid://17374768001","","RARM")
Hat.Rename("rbxassetid://14251599953", "Tor")
                end)
pcall(function()
Hat.Rename("rbxassetid://13415110780", "Tor")
                end)
pcall(function()
Hat.Rename("rbxassetid://14255543546","","LARM")
Hat.Rename("rbxassetid://14255543546","","RARM")
end)
pcall(function()
Hat.Rename("rbxassetid://14768664565", "Tor")
Hat.Rename("rbxassetid://14768683674","","LARM")
Hat.Rename("rbxassetid://14768683674","","RARM")
end)
local c = game:GetService("Players").LocalPlayer.Character
_G.OxideRealChar = c
pcall(function()
c.gooblet.Name = "fooblet"
end)
pcall(function()
c["Accessory (LARM)"].Name = "gooblet"
            end)
            pcall(function()
c["Accessory (RARM)"].Name = "RARM"
            end)
                        pcall(function()
if not c:FindFirstChild("Tor") then 
c.ExtraNoobTorso.Name = "Tor"
end
            end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/renameclones3"))()
local flingloop
if _G.Fling == true then
    local BodyVelocity = Instance.new("BodyVelocity", c.HumanoidRootPart)
BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
BodyVelocity.Velocity = Vector3.new(0, 0, 0)
flinger = Instance.new("BodyAngularVelocity",c.HumanoidRootPart)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(5000000000000000000,5000000000000000000,5000000000000000000)

flingloop = game:GetService("RunService").Heartbeat:Connect(function()
c.HumanoidRootPart.CFrame = flingpos
c.HumanoidRootPart.Velocity = Vector3.new(9e9,9e9,9e9)
end)
wait(.35)
flingloop:Disconnect()
BodyVelocity:Destroy()
flinger:Destroy()
for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
    end
 end
 _G.Fling =false
end



function waitForChild(parent, childName)
local child = parent:findFirstChild(childName)
if child then return child end
while true do
    child = parent.ChildAdded:wait()
    if child.Name==childName then return child end
end
end
local char
if not workspace:FindFirstChild("non") then
 char =  workspace.Terrain.non
else
 char = workspace.non
end
game:GetService("Players").LocalPlayer.Character.PrimaryPart = c.Head
char.HumanoidRootPart.Anchored = false
if not c:FindFirstChild("Tor") then
repeat wait() until c:FindFirstChild("Tor")
end

speaker = game:GetService("Players").LocalPlayer
	Clip = false

	local function NoclipLoop()
			for _, child in pairs(c:GetChildren()) do
				if child:IsA("BasePart") then
					child.CanCollide = false
				end
			end

		end
        Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)

	

for i,v in pairs(c:GetChildren()) do
if v:IsA("Accessory") and v.Name == "Pants" then
v:Destroy()
end
end
char.Parent = workspace
c.Parent = char
	_G.Flinging = false

local swordbigvel = false
velocity = game:GetService("RunService").Heartbeat:Connect(function()
for i,v in pairs(c:GetChildren()) do
	if v:IsA("Accessory")  then
		v.Handle.AssemblyLinearVelocity = Vector3.new(char.Torso.AssemblyLinearVelocity.X*15, 25.012, char.Torso.AssemblyLinearVelocity.Z*15)
               end
	end
end)

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') 
	return rootPart
end
		local character = game:GetService("Players").LocalPlayer.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.SeatPart then
			humanoid.Sit = false
			wait(0.1)
		end
	
		local hipHeight = humanoid and humanoid.HipHeight > 0 and (humanoid.HipHeight + 1)
		local rootPart = getRoot(character)
		local rootPartPosition = rootPart.Position
        if _G.HideCharacter == false then
        rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X +5 ,char.HumanoidRootPart.CFrame.Y,char.HumanoidRootPart.CFrame.Z +5) 
        else
rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X   , workspace.FallenPartsDestroyHeight + 50,char.HumanoidRootPart.CFrame.Z  ) 
        end

for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
v.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
 end



local function force(part,force)
	local bodyforce = Instance.new("BodyForce", part)
	bodyforce.Force = force
end



    
    


speaker = game:GetService("Players").LocalPlayer
for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = false
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = true
				end
			end

	for _, v in pairs(char:GetChildren()) do
				if v:IsA("Part") then
				v.CollisionGroup = c.Head.CollisionGroup
				end
			end	


	if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LARM)"  and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "Tor" and v.Name ~= "RectangleHead-2"  and v.Name ~= "Tor" and v.Name ~= "Accessory (LLeg)" and v.Name ~= "RARM"  and v.Name ~="Unloaded head" then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle.AccessoryWeld.Part1 = char[a.Handle.AccessoryWeld.Part1.Name]
Accessory = v
      Handle = Accessory.Handle
      pcall(function() Handle:FindFirstChildOfClass("Weld"):Destroy() end)
a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
end
           end
       end
else

 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LARM)"  and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "Tor" and v.Name ~= "RectangleHead-2"  and v.Name ~= "Tor" and v.Name ~= "Accessory (LLeg)" and v.Name ~= "RARM"  and v.Name ~="Unloaded head"  then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle:BreakJoints()
Accessory = v
      Handle = Accessory.Handle
      z = a
      a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
a.Handle.Position = char.Head.Position
a.Handle.Velocity = Vector3.new(0,0,0)
a.Handle.Massless = true
w = Instance.new("Weld",z.Handle)
w.C0 = w.Parent:FindFirstChildOfClass("Attachment").CFrame
w.Name = "AccessoryWeld"
w.Part0 = z.Handle
a  = w.Parent:FindFirstChildOfClass("Attachment")
 if string.find(a.Name,"Left") then
  if string.find(a.Name,"Shoulder") then
w.Part1 = char["Left Arm"]
w.C1 =  char["Left Arm"].LeftShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Shoulder") then
  w.Part1 = char["Right Arm"]
  w.C1 =  char["Right Arm"].RightShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Left") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Left Leg"]
  w.C1 =  char["Left Leg"].LeftFootAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Right Leg"]
  w.C1 =  char["Right Leg"].RightFootAttachment.CFrame
end
 elseif string.find(a.Name,"Waist") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].WaistBackAttachment.CFrame
       end    
        elseif string.find(a.Name,"Body") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyBackAttachment.CFrame
       elseif  string.find(a.Name,"Front") then
          w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyFrontAttachment.CFrame
       end    
            elseif string.find(a.Name,"Hat") then
                w.Part1 = char["Head"]
       w.C1 =  char["Head"].HatAttachment.CFrame 
                elseif string.find(a.Name,"FaceFront") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceFrontAttachment.CFrame 
                       elseif string.find(a.Name,"FaceCenter") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceCenterAttachment.CFrame 
                                  elseif string.find(a.Name,"Neck") then
                       w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].NeckAttachment.CFrame 
                           elseif string.find(a.Name,"Hair") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].HairAttachment.CFrame 
                           end


end
           end
       end

end



   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name ~= "RectangleHead" and v.Name ~= "RectangleHead-1"  and v.Name ~= "RectangleHead-3"  and v.Name ~= "funnihead" and v.Name ~= "RectangleFace-1" and v.Name ~= "RectangleFace" and v.Name ~= "RectangleFace-2" and v.Name ~= "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 
   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "RectangleHead" and v.Name =="Puffer Vest" and v.Name == "RectangleFace" and v.Name == "RectangleFace-2" and v.Name == "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 

for _, child in pairs(char:GetChildren()) do
				if child:IsA("BasePart") then
					child.Transparency = 1
				end
			end



       local ch = game:GetService("Players").LocalPlayer.Character
local prt=Instance.new("Model", workspace)
local z1 =  Instance.new("Part", prt)
z1.Name="Torso"
z1.CanCollide = false
z1.Anchored = true
local z2  =Instance.new("Part", prt)
z2.Name="Head"
z2.Anchored = true
z2.CanCollide = false
local z3 =Instance.new("Humanoid", prt)
z3.Name="Humanoid"
z1.Position = Vector3.new(0,9999,0)
z2.Position = Vector3.new(0,9991,0)


task.spawn(function()
    rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X   , workspace.FallenPartsDestroyHeight + 50,char.HumanoidRootPart.CFrame.Z  ) 
  task.wait(.01)
   c:BreakJoints()	
 end)
task.spawn(function()	
task.wait(.02)
 game:GetService("Players").LocalPlayer.Character=prt
 game:GetService("Players").LocalPlayer.Character=char
end)
 
prt:Destroy()
 



  --wait(game:GetService("Players").RespawnTime + 0.25)  






for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = true
				end
			end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TypicallyAUser/TypicalsConvertingLibrary/main/Main"))()





local Char = game:GetService("Players").LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

    for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:Stop()
    end


for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end
local removinghealth = false

 



    
pcall(function()
          for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "Heavenly Void Wings" then  
           if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
               v.Handle.SpecialMesh.MeshId = "rbxassetid://17578463084"
               v.Handle.SpecialMesh.TextureId = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
               else
               v.Handle.TextureID = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
           end
end
end
end)
pcall(function()
          for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "Ultra-Fabulous Hair" then  
           if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
               v.Handle.Mesh.TextureId = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
               else
               v.Handle.TextureID = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
           end
end
end
end)  

if _G.SBV4R == true then
local v = c:WaitForChild("fooblet")
           if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
               v.Handle.SpecialMesh.TextureId = ""
               else
               v.Handle.TextureID = ""
           end
           v.Handle.Material = 1584
           v.Handle.Transparency = 1
           char["Right Arm"].Transparency = 0
             char["Right Arm"].Material = 1584
           

end


local connect
pcall(function()
	--char.Animate.Disabled = false
	end)
 	   connect = game:GetService("RunService").Heartbeat:Connect(function(set)
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChildOfClass("Humanoid")
        lastcf = workspace.CurrentCamera.CFrame
        pcall(function()
workspace.FallenPartsDestroyHeight = oldh 
        end)
         	    pcall(function()
 c["Tor"].Handle.CFrame = char["Torso"].CFrame   *CFrame.new(-.0025*math.sin(100*tick()),-.005*math.sin(100*tick()),-.0025*math.sin(100*tick()))
end)
pcall(function()
c["gooblet"].Handle.CFrame = char["Left Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  *CFrame.new(-.0025*math.sin(100*tick()),-.005*math.sin(100*tick()),-.0025*math.sin(100*tick()))
end)
  	  pcall(function()
 c["fooblet"].Handle.CFrame = char["Right Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))*CFrame.new(-.0025*math.sin(100*tick()),-.005*math.sin(100*tick()),-.0025*math.sin(100*tick()))
   end)
   	  pcall(function()
  c["Accessory (rightleg)"].Handle.CFrame = char["Right Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  *CFrame.new(-.0025*math.sin(100*tick()),-.005*math.sin(100*tick()),-.0025*math.sin(100*tick()))
 end)
 	  pcall(function()
c["Accessory (LLeg)"].Handle.CFrame = char["Left Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  *CFrame.new(-.0025*math.sin(100*tick()),-.005*math.sin(100*tick()),-.0025*math.sin(100*tick()))
 end)

pcall(function()
          for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name ~= "gooblet" and v.Name ~= "fooblet"   and v.Name ~= "Tor" and v.Name ~= "LARM" and v.Name ~= "RARM" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LLeg)" then  
v.Handle.CFrame = char[v.Name].Handle.CFrame *CFrame.new(-.0025*math.sin(100*tick()),-.005*math.sin(100*tick()),-.0025*math.sin(100*tick()))
v.Handle.CanTouch = false
end
end
end)
pcall(function()
   if _G.SBV4R == false then
  for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory")   then
v.Handle.CanCollide = false
v.Handle.Material = Enum.Material.Glass
v.Handle.Reflectance = -1
           end
 end
 else
 c["fooblet"].Handle.Material = 1584
 c["fooblet"].Handle.Color = char["Right Arm"].Color
 end
end)

	oldcf = workspace.CurrentCamera.CFrame
	settings().Physics.AllowSleep = false
end)


char:FindFirstChildOfClass("Humanoid").Died:Connect(function()
ws= workspace

lp = game:GetService("Players").LocalPlayer

local function respawnrequest()
    local cameraCframe = ws.CurrentCamera.CFrame
    local c = lp.Character
    lp.Character = nil
    lp.Character = c
    ws.CurrentCamera:GetPropertyChangedSignal("CFrame"):Wait()
    ws.CurrentCamera.CFrame = cameraCframe
end


Noclipping:Disconnect()
local spamRequests = true
spawn(function()
    while wait(0.1) and spamRequests do
        respawnrequest()
    end
end)

spamRequests = false

wait(game:GetService("Players").RespawnTime +.1)
connect:Disconnect()
char:Destroy()
velocity:Disconnect()
end)



		settings().Physics.AllowSleep = false




for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = false
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end
wait(game:GetService("Players").RespawnTime - .05)
local cam = workspace.CurrentCamera
local cf = cam.CFrame
task.wait(.05)
velocity:Disconnect() 
task.wait(.5)
connect:Disconnect()
cam.CFrame = cf
end
redo()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2 - Respawn Time";
        Duration = 20;
		Text = "Your character will refit (respawn) every "..game:GetService("Players").RespawnTime.." seconds."
	})
 local function cfAdd(a,b) return a+b end
 local sin=math.sin
 local oldh = workspace.FallenPartsDestroyHeight
plr.CharacterAdded:Connect(function(re)
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
repeat wait() until plr.Character:FindFirstChild("Head")
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
repeat wait() until plr.Character:FindFirstChildOfClass("Accessory")

if _G.HideCharacter == false then
if plr.Character.Name ~= "non" then
    if workspace:FindFirstChild("non") then
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
if plr.Character.Name ~= "non" then
 plr.Character.HumanoidRootPart.CFrame = CFrame.new( workspace.non.HumanoidRootPart.CFrame.X +5 , workspace.non.HumanoidRootPart.CFrame.Y, workspace.non.HumanoidRootPart.CFrame.Z +5) 
end
task.wait(.005)
redo2()
else
workspace.CurrentCamera.CameraSubject = workspace.Terrain.non:FindFirstChildOfClass("Humanoid")
if plr.Character.Name ~= "non" then
 plr.Character.HumanoidRootPart.CFrame = CFrame.new( workspace.Terrain.non.HumanoidRootPart.CFrame.X +5 , workspace.Terrain.non.HumanoidRootPart.CFrame.Y, workspace.Terrain.non.HumanoidRootPart.CFrame.Z +5) 
end
task.wait(.005)
redo2()
    end
end
else
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
local flingloop
local c = re
if _G.FlingEnabled == true then 
if _G.Fling == true then
    local flingpart = _G.flingpart
local sineee=os.clock()
if flingpart ~= nil then
      if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
          c.Humanoid:ChangeState(16)
if flingpart.Name ~= "Torso" or flingpart.Name ~= "HumanoidRootPart" or flingpart.Name ~= "Handle" then
    if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
    flingpart = flingpart.Parent.HumanoidRootPart
    elseif flingpart.Name == "Handle" then
flingpart = flingpart.Parent.Parent.HumanoidRootPart
_G.flingplr = tostring(flingpart.Parent:FindFirstChildOfClass("Humanoid").DisplayName.." (@"..flingpart.Parent.Name..")")
    end
end
flingloop = game:GetService("RunService").Heartbeat:Connect(function()
sineee=os.clock()
pcall(function()
if  flingpart.Parent:WaitForChild("Humanoid") then
c.HumanoidRootPart.CFrame = cfAdd(flingpart.CFrame,flingpart.AssemblyLinearVelocity*(sin(sineee*15)+1))
end
c.HumanoidRootPart.Velocity = Vector3.new(9e9,-9e7,9e9)
      end)
end)
local n = 0
workspace.FallenPartsDestroyHeight = 0/0
repeat 
wait(.05)
n=n+.05
until  flingpart.AssemblyLinearVelocity.X <= 3500 and n >= .5 or n >= 1
local success,err = pcall(function()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2 - Fling:";
        Duration = 5;
		Text = "Successfully flung: "..flingpart.Parent:WaitForChild("Humanoid").DisplayName.." (@"..flingpart.Parent.Name..") in: "..n.." seconds!"
	})
end)
local success,err2
if err then 
 success,err2 =   pcall(function()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2 - Fling:";
        Duration = 5;
		Text = "Successfully flung: @"..flingpart.Parent.Name.." in: "..n.." seconds!"
	})
end)
end
if err2 then  
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2 - Fling:";
        Duration = 5;
		Text = "Successfully flung: ".._G.flingplr.." in: "..n.." seconds! (fun fact: this errored twice!)"
	})
end
flingloop:Disconnect()
workspace.FallenPartsDestroyHeight = oldh
for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
v.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
 end
 end
end
 _G.Fling =false
end
end
if plr.Character.Name ~= "non" then
        if plr.Character.Name ~= "non" then
 plr.Character.HumanoidRootPart.CFrame =CFrame.new( workspace.non.HumanoidRootPart.CFrame.X  , workspace.FallenPartsDestroyHeight + 50, workspace.non.HumanoidRootPart.CFrame.Z  ) 
 print( plr.Character.HumanoidRootPart.CFrame)
for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
v.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
 end
end

workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
task.wait(.005)
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
redo2()
end
end
end)
function attackone()
    task.spawn(function()
flingpos = game.Players.LocalPlayer:GetMouse().Hit
flingpart = game.Players.LocalPlayer:GetMouse().Target
_G.flingplr = nil
if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
       _G.Fling = true
_G.flingpart = flingpart
_G.flingplr = tostring(flingpart.Parent:FindFirstChildOfClass("Humanoid").DisplayName.." (@"..flingpart.Parent.Name..")")
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2 - Fling:";
        Duration = 3;
		Text = "Locked onto player: "..flingpart.Parent:FindFirstChildOfClass("Humanoid").DisplayName.." (@"..flingpart.Parent.Name..")"
	})
else
print("not a player")
   _G.Fling = false
end
   end)

end
