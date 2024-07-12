local script = game:GetObjects("rbxassetid://5375511885")[1].RUN
script.MovesList.ResetOnSpawn = false
print("Created By InfiniteOneWithdank, Shackluster/PityPolygon Made The Original Base Of This Script")

local function runner()
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
Mouse = Player:GetMouse()
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local TWEENSERVICE = game:GetService("TweenService")
local debris = game:GetService("Debris")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local cam = workspace.CurrentCamera
local HUM = Character.Humanoid
local ROOT = HUM.Torso
local MOUSEPOS = ROOT.Position
local DAMAGEMULTIPLIER = 1
local TERRIBLE = {}  

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

-----------------------------------
--||///////============\\\\\\\\||--
--><Values	
Animation_Speed = 3
Animation_Speed2 = 5
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 100
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "DSCRIPT"
WEAPONGUI.ResetOnSpawn = false
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true

local Musika = IT("Sound", RootPart)
local Volu = 7.5
local Pitch = 1
local Song = 3789336531
local TSPT, TVY, TSTP

local Musika2 = IT("Sound", RootPart)
local Volu2 = 3
local Pitch2 = 1
local Song2 = 0
local TSPT2, TVY2, TSTP2

local Player_Size = 1
local WALKINGANIM = false
local SCALE = 2

local Decal = IT("Decal")
local STUFF = Instance.new("Folder",Character)

local SLASHES = 1
local OTHER = false

local HITPLAYERSOUNDS = {"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}

-----------------------------------


-----------------------------------
--------------------------------->
-----------------------------------

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

-----------------------------------

--><Some Functions
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end
function weldSomethings(a, b, acf)
    local we = Instance.new("Weld", a)
    we.Part0 = a
    we.Part1 = b
if acf ~= nil then
    we.C0 = acf
end
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end
function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end
function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.EmitterSize = VOLUME * 3
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
function NewSound(TABLE)
	local ID = "rbxassetid://"..(TABLE.ID or 0)
	local PARENT = (TABLE.PARENT or ROOT)
	local VOLUME = (TABLE.VOLUME or 0.5)
	local PITCH = (TABLE.PITCH or 1)
	local LOOP = (TABLE.LOOP or false)
	local MAXDISTANCE = (TABLE.MAXDISTANCE or 100)
	local EMITTERSIZE = (TABLE.EMITTERSIZE or 10)
	local PLAYING = (TABLE.PLAYING or true)
	local PLAYONREMOVE = (TABLE.PLAYONREMOVE or false)
	local DOESDEBRIS = (TABLE.DOESDEBRIS or true)
	if ID ~= "rbxassetid://0" then
		local SOUND = IT("Sound",PARENT)
		SOUND.SoundId = ID
		SOUND.Volume = VOLUME
		SOUND.Pitch = PITCH
		SOUND.Looped = LOOP
		SOUND.MaxDistance = MAXDISTANCE
		SOUND.EmitterSize = EMITTERSIZE
		SOUND.PlayOnRemove = PLAYONREMOVE
		if DOESDEBRIS == true and PLAYING == true and LOOP == false then
			Debris:AddItem(SOUND,SOUND.TimeLength+5)
		end
		if PLAYING == true then
			SOUND:Play()
		end
		return SOUND
	end
end 
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function MagicRing()
	local O1 = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "Warphole", VT(0, 0, 0))
	O1.CFrame = RootPart.CFrame * CF(0, 0, -3) * ANGLES(RAD(90), RAD(0), RAD(0))
	local decal = Decal:Clone()
	decal.Parent = O1
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id=0"
	local decal2 = Decal:Clone()
	decal2.Parent = O1
	decal2.Face = "Bottom"
	decal2.Texture = "http://www.roblox.com/asset/?id=0"
	return O1
end
function MagicRing2(PART,CFRAME)
	local RING = CreatePart(3, Effects, "Neon", 0, 1, "Royal purple", "MagicRing", VT(0,0,0),false)
	local WELD = CreateWeldOrSnapOrMotor("Weld", PART, PART, RING, CFRAME, CF(0, 0, 0))
	local MESH = IT("BlockMesh",RING)
	local BOTTOMTEXTURE = Decal:Clone()
	BOTTOMTEXTURE.Parent = RING
	BOTTOMTEXTURE.Face = "Bottom"
	BOTTOMTEXTURE.Name = "BottomTexture"
	local TOPTEXTURE = Decal:Clone()
	TOPTEXTURE.Parent = RING
	TOPTEXTURE.Face = "Top"
	TOPTEXTURE.Name = "TopTexture"
	local LIGHT = IT("PointLight",RING)
	BOTTOMTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	TOPTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	return RING,WELD,MESH
end
local DECAL = IT("Decal")
function MagicRing3()
	local RING = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Pearl"), "MagicRing", VT(0, 0, 0), true)
	local MSH = IT("BlockMesh", RING)
	local TOP = DECAL:Clone()
	local BOTTOM = DECAL:Clone()
	TOP.Parent = RING
	BOTTOM.Parent = RING
	TOP.Face = "Top"
	BOTTOM.Face = "Bottom"
	TOP.Texture = "http://www.roblox.com/asset/?id=0"
	BOTTOM.Texture = "http://www.roblox.com/asset/?id=0"
	local function REMOVE()
		coroutine.resume(coroutine.create(function()
			local SIZE = MSH.Scale.X
			for i = 1, 35 do
				Swait()
				MSH.Scale = MSH.Scale - VT(SIZE, 0, SIZE) / 60
				TOP.Transparency = TOP.Transparency + 0.02857142857142857
				BOTTOM.Transparency = BOTTOM.Transparency + 0.02857142857142857
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(-5), RAD(0))
			end
			RING:remove()
		end))
	end
	return RING, MSH, REMOVE
end
function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function CreateWave(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
			end
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function SpecialSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Eye", VT(1,1,1), true)
    wave.Color = COLOR
    local mesh = CreateMesh("SpecialMesh", wave, "Sphere", "", "", SIZE, VT(0,0,0))
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end   
function CharacterFade(COLOR,TIMER)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		FADE.Name = "FadingEffect"
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c ~= RootPart then
				local FADER = c:Clone()
				FADER.Color = COLOR
				FADER.CFrame = c.CFrame
				FADER.Parent = FADE
				FADER.Anchored = true
				FADER.Transparency = 0.25+c.Transparency
				FADER:BreakJoints()
				FADER.Material = "Neon"
				if FADER.Name == "Head" then
					FADER:ClearAllChildren()
					FADER.Size = VT(1,1,1)
				end
				if c and c.Parent and c.ClassName == "ShirtGraphic" then
					c:Destroy()
				end	
				FADER.CanCollide = false
			end
		end
		local TRANS = 0.75/TIMER
		for i = 1, TIMER do
			Swait()
			for _, c in pairs(FADE:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = c.Transparency + TRANS
				end
			end
		end
		FADE:remove()
	end))
end   
function Lightning(Table)
	local Color = Table.Color or C3(1, 1, 1)
	local StartPos = Table.Start or Torso.Position
	local EndPos = Table.End or Mouse.Hit.p
	local SegmentLength = Table.SegmentL or 2
	local Thickness = Table.Thickness or 0.1
	local Dissapear = Table.DoesFade or false
	local Parent = Table.Ignore or Character
	local MaxDist = Table.MaxDist or 400
	local Branches = Table.Branches or false
	local Thicken = Table.Thicken or false
	local FadeTime = Table.FadeTime or 15
	local FadeIn = Table.FadeIn or false
	local Material = Table.Material or "Neon"
	local HIT, HITPOS = CastProperRay(StartPos, EndPos, MaxDist, Parent)
	local DISTANCE = math.ceil((StartPos - HITPOS).Magnitude / (SegmentLength / SegmentLength / 1.5))
	local LIGHTNINGMODEL = IT("Model", Effects)
	LIGHTNINGMODEL.Name = "Lightning"
	local LastBolt
	for E = 1, DISTANCE do
		local ExtraSize = 0
		if Thicken == true then
			ExtraSize = (DISTANCE - E) / 15
		end
		local TRANSPARENCY = 0
		if FadeIn == true then
			TRANSPARENCY = 1 - E / (DISTANCE / 1.5)
			if TRANSPARENCY < 0 then
				TRANSPARENCY = 0
			end
		end
		local PART = CreatePart(3, LIGHTNINGMODEL, Material, 0, TRANSPARENCY, BRICKC("Pearl"), "LightningPart" .. E, VT(Thickness + ExtraSize, SegmentLength, Thickness + ExtraSize))
		PART.Color = Color
		MakeForm(PART, "Cyl")
		if LastBolt == nil then
			PART.CFrame = CF(StartPos, HITPOS) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
		else
			PART.CFrame = CF(LastBolt.CFrame * CF(0, -LastBolt.Size.Y / 2, 0).p, CF(HITPOS) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 0, DISTANCE - E).p) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
		end
		LastBolt = PART
		if Branches == true and E < DISTANCE - 5 then
			local CHOICE = MRANDOM(1, 7 + (DISTANCE - E) * 2)
			if CHOICE == 1 then
				local LASTBRANCH
				for i = 1, MRANDOM(2, 5) do
					local ExtraSize2 = 0
					if Thicken == true then
						ExtraSize = (DISTANCE - E) / 25 / i
					end
					local PART = CreatePart(3, LIGHTNINGMODEL, Material, 0, TRANSPARENCY, BRICKC("Pearl"), "Branch" .. E .. "-" .. i, VT(Thickness + ExtraSize2, SegmentLength, Thickness + ExtraSize2))
					PART.Color = Color
					MakeForm(PART, "Cyl")
					if LASTBRANCH == nil then
						PART.CFrame = CF(LastBolt.CFrame * CF(0, -LastBolt.Size.Y / 2, 0).p, LastBolt.CFrame * CF(0, -LastBolt.Size.Y / 2, 0) * ANGLES(RAD(0), RAD(0), RAD(MRANDOM(0, 360))) * CF(0, Thickness * 7, 0) * CF(0, 0, -1).p) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
					else
						PART.CFrame = CF(LASTBRANCH.CFrame * CF(0, -LASTBRANCH.Size.Y / 2, 0).p, LASTBRANCH.CFrame * CF(0, -LASTBRANCH.Size.Y / 2, 0) * ANGLES(RAD(0), RAD(0), RAD(MRANDOM(0, 360))) * CF(0, Thickness * 3, 0) * CF(0, 0, -1).p) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
					end
					LASTBRANCH = PART
				end
			end
		end
	end
	if Dissapear == true then
		coroutine.resume(coroutine.create(function()
			for i = 1, FadeTime do
				Swait()
				for _, c in pairs(LIGHTNINGMODEL:GetChildren()) do
					if c.ClassName == "Part" then
						c.Transparency = c.Transparency + 1 / FadeTime
					end
				end
			end
			LIGHTNINGMODEL:remove()
		end))
	elseif Dissapear == false then
		Debris:AddItem(LIGHTNINGMODEL, 0.1)
	end
	return {
		Hit = HIT,
		Pos = HITPOS,
		End = LastBolt.CFrame * CF(0, 0, -LastBolt.Size.Z).p,
		LastBolt = LastBolt,
		Model = LIGHTNINGMODEL
	}
end
function GetRoot(MODEL, ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
Debris = game:GetService("Debris")
local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.LightEmission = 0.8
Particle.Rate = 150
Particle.ZOffset = 1
Particle.Rotation = NumberRange.new(-180, 180)

--ParticleEmitter({Speed = 5, RotSpeed = NumberRange.new(-15, 15), Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false, Color1 = C3(1,1,1), Color2 = C3(1,1,1), Texture = ""})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Color1 = Table.Color1 or C3(1,1,1)
	local Color2 = Table.Color2 or C3(1,1,1)
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	local Texture = Table.Texture or "281983280"
	local RotS = Table.RotSpeed or NumberRange.new(-15, 15)
	local Trans1 = Table.Transparency1 or 0
	local Trans2 = Table.Transparency2 or 0
	PRTCL.Parent = Parent
	PRTCL.RotSpeed = RotS
	PRTCL.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,Trans1),NumberSequenceKeypoint.new(1,Trans2)})
	PRTCL.Texture = "http://www.roblox.com/asset/?id="..Texture
	PRTCL.Color = ColorSequence.new(Color1,Color2)
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end
function SpawnTrail(FROM,TO,BIG)
local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end

function Debree(Table)
	local KindOf = Table.Variant or "Ring"
	local Position = Table.Location or Torso.Position
	local Coloration = Table.Color or C3(1, 1, 1)
	local Texture = Table.Material or "Slate"
	local Fling = Table.Scatter or 1
	local Number = Table.Amount or 1
	local Rocks = Table.DebreeCount or 1
	local Range = Table.Distance or 1
	local Scale = Table.Size or 1
	local Timer = Table.Delay or 1.5
	coroutine.resume(coroutine.create(function()
		local ScaleVector = VT(Scale, Scale, Scale)
		local Boulders = {}
		Position = CF(Position)
		if KindOf == "Ring" or KindOf == "Both" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), Range)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Loose" or KindOf == "Both" then
			for RockValue = 1, Rocks do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale - Scale / 2), math.ceil(Scale - Scale / 2)), 0.7)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, false)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Velocity = CF(BOULDER.Position - VT(0, 4, 0), BOULDER.CFrame * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 5, 0).p).lookVector * MRANDOM(Fling - Fling / 1.5, Fling + Fling / 1.5)
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Random" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), MRANDOM(0, Range))
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		wait(Timer)
		for E = 1, 45 do
			Swait()
			for A = 1, #Boulders do
				Boulders[A].Transparency = Boulders[A].Transparency + 0.022222222222222223
			end
		end
		for A = 1, #Boulders do
			Boulders[A]:Destroy()
		end
	end))
end

function CameraShake(AREA,RANGE,SHAKE,TIMER)
	for index, CHILD in pairs(workspace:GetChildren()) do
		if CHILD:FindFirstChildOfClass("Humanoid") then
			local HUMAN = CHILD:FindFirstChildOfClass("Humanoid")
			local ROOT = HUMAN.Torso
			if ROOT and game.Players:GetPlayerFromCharacter(CHILD) then
				if (ROOT.Position - AREA).Magnitude <= RANGE then
					if CHILD:FindFirstChild("CamShake") then
						Debris:AddItem(CHILD:FindFirstChild("CamShake"),0.05)
					end
					local CAMSHAKE = script.CamShake:Clone()
					CAMSHAKE.Parent = CHILD
					local TIMER_V = IT("NumberValue",CAMSHAKE)
					TIMER_V.Name = "Timer"
					TIMER_V.Value = TIMER
					local SHAKE_V = IT("NumberValue",CAMSHAKE)
					SHAKE_V.Name = "Shake"
					SHAKE_V.Value = SHAKE
					CAMSHAKE.Disabled = false
					Debris:AddItem(CAMSHAKE,15)
				end
			end
		end
	end
end

--><Miscellaneous & Weapon Creation

--//Katana Weld
local KATA = script.Katana
KATA.Parent = Character
local Grip = weldSomethings(KATA.Weld,RightArm,CF(.4,0,-1)*ANGLES(RAD(0),RAD(180),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0)) 
local KTRAIL = KATA.TrailPart.Trail
local Blade = KATA.HitBox
--\\


local SKILLTEXT = script.MovesList
SKILLTEXT.Parent = Player.PlayerGui

local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY, {
			c,
			c.Parent,
			c.Material,
			c.Color,
			c.Transparency,
			c.Size,
			c.Name
		})
	elseif c:IsA("JointInstance") then
		table.insert(BODY, {
			c,
			c.Parent,
			nil,
			nil,
			nil,
			nil,
			nil
		})
	end
end
function Nevermore()
	Character.Parent = workspace
	Effects.Parent = Character
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = Character:FindFirstChild("Safety") or STUFF[2]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid:remove()
				end
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
				end
			end
		end
	end
end
Humanoid.HealthChanged:connect(function()
	Humanoid.Parent = Character
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	Nevermore()
	Nevermore()
end)
Humanoid.Died:connect(function()
	Humanoid.Parent = Character
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	Nevermore()
	Swait(5)
	Nevermore()
	Nevermore()
	Swait(5)
	Nevermore()
	Nevermore()
	Swait(5)
	Nevermore()
	Nevermore()
	Swait(5)
	Nevermore()
	Nevermore()
	Swait(5)
	Nevermore()
	Nevermore()
end)

--><All Attack Functions

function OBLITERATE(MODEL)
	local HUM = MODEL:FindFirstChildOfClass("Humanoid")
	table.insert(TERRIBLE,MODEL.Name)
	printthisdude(MODEL.Name)
	MODEL:BreakJoints()
	if HUM then
		for index, CHILD in pairs(MODEL:GetChildren()) do
			if CHILD:IsA("BasePart") then
				if CHILD.Name == "Head" then
				
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT({Time = MRANDOM(10,30)*6, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5)*1.5, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Neon", Color = Color3.new(1,0,0), 306949102, SoundPitch = .4, SoundVolume = 10, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
					WACKYEFFECT({Time = MRANDOM(10,30)*6, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5)*1.5, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Neon", Color = Color3.new(.25,0,0), SoundID = 306948890, SoundPitch = .3, SoundVolume = 10, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 200})
				end
				CHILD:Destroy()
				CHILD:Destroy()
				CHILD:Destroy()
			end
		end
		HUM.Health = 0
	end
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
end

function printthisdude(Noob)
	local NOTIFY = {"Obliterated, "}
	print(NOTIFY[MRANDOM(1,#NOTIFY)]..Noob..".")	
end

function AOETime(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						OBLITERATE(CHILD)
					end
				end
			end
		end
	end
end

function ApplyDamage(TARGET,DAMAGE)
	if TARGET ~= HUM then
		if TARGET.Health > 0 then
			TARGET.Health = TARGET.Health - DAMAGE
			if TARGET.Health <= 0 or TARGET.MaxHealth == math.huge then
				AOETime(TARGET.Parent)
			end
		end
	end
end 
function MeleeDamage(Humanoid,Damage,TorsoPart)
	local defence = Instance.new("BoolValue",Humanoid.Parent)
	defence.Name = ("HitBy"..Player.Name)
	game:GetService("Debris"):AddItem(defence, 0.001)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health ~= 0 then
		local CritChance = MRANDOM(1,100)
		if Damage > Humanoid.Health then
			Damage = math.ceil(Humanoid.Health)
			if Damage == 0 then
				Damage = 0.1
			end
		end
		Humanoid.MaxHealth = 100
		if Humanoid.Health > 100 then
			Humanoid.Health = 100 - Damage
		end
		Humanoid.Health = Humanoid.Health - Damage
	end
end  
function EXALTED_MELEER(MINDMG,MAXDMG)
	local HITS = {}
	local TOUCH2 = Blade.Touched:Connect(function(hit)
		if hit.Parent:FindFirstChildOfClass("Humanoid") then
			local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
			local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
			local HEAD = hit.Parent:FindFirstChild("Head")
			if TORSO and HUM.Health > 0 then
				local PASS = true
				for i = 1, #HITS do
					if HITS[i] == hit.Parent then
						PASS = false
					end
				end
			if HEAD and HUM.Health > 0 then
				local PASS = true
				for i = 1, #HITS do
					if HITS[i] == hit.Parent then
						PASS = false
					end
				end	
				if HUM.Health > 0 or HUM.MaxHealth == math.huge then
					CameraShake(Blade.Position,1e9,5,100)
					OBLITERATE(HUM.Parent)
				end
				table.insert(HITS,hit.Parent)
					if PASS == true then

				end
			end
		end
	end
	end)                     	
	return TOUCH2 
end

function SlicingDash()
	ATTACK = true
	CreateSound("136597025",RootPart,10,.8,false)
	CreateSound("136597025",RootPart,10,.8,false)
	CreateSound("136597025",RootPart,10,.8,false)
	CameraShake(RootPart.Position,1e9,15,90)
	for i = 1, 7 do
		Swait()
		CreateRing(VT(3,6,3),true,90,45,RootPart.CFrame*ANGLES(RAD(90),RAD(0),RAD(0)),"Teal",VT(2.5,0.2,2.5)/2)
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,-1)*ANGLES(RAD(0),RAD(180),RAD(-90))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0)) 
		WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(1,1,1)*2, Size2 = VT(6,6,6)*2, Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(360),RAD(0),RAD(0)), RotationX = 0, RotationY = RAD(MRANDOM(-360,360)), RotationZ = 0, Material = "Neon", Color = Color3.new(.7,.35,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(1,1,1)*2, Size2 = VT(8,4,8)*2, Transparency = .4, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(360),RAD(0),RAD(0)), RotationX = 0, RotationY = RAD(MRANDOM(-360,360)), RotationZ = 0, Material = "Neon", Color = Color3.new(.45,.85,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(1,1,1)*2, Size2 = VT(15,1,15)*2, Transparency = .8, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(360),RAD(0),RAD(0)), RotationX = 0, RotationY = RAD(MRANDOM(-360,360)), RotationZ = 0, Material = "Neon", Color = Color3.new(.35,.65,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Neon", Color = Color3.new(.35,.65,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5)*2, Size2 = VT(.5,10,.5)*2, Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Neon", Color = Color3.new(.7,.35,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})  
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90 + 1.2 * COS(SINE / 12))), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + .1*SIN(SINE/16), 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6 + .1*SIN(SINE/16), 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		CharacterFade(C3(.35,.35,1),25+(i*10))
		CharacterFade(C3(.55,.55,1),35+(i*20))
		RootPart.CFrame = RootPart.CFrame*CF(0,0,-10)
	end	
	ATTACK = false
end	

function SLASH1()
	ATTACK = true
	KTRAIL.Enabled = true
	CreateSound("182765513",RootPart,8,.9,false)
	CreateSound("182765513",RootPart,8,1.15,false)
	CreateSound("182765513",RootPart,8,1.3,false)
	CreateSound("134012322",RootPart,7,.9,false)
	CreateSound("134012322",RootPart,7,1.15,false)
	CreateSound("134012322",RootPart,7,1.3,false)
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait() 
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.35,.65,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(0),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(1,1,1)*2, Size2 = VT(15,1,15)*2, Transparency = .8, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(360),RAD(0),RAD(0)), RotationX = 0, RotationY = RAD(MRANDOM(-360,360)), RotationZ = 0, Material = "Neon", Color = Color3.new(.35,.65,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -.7) * ANGLES(RAD(90), RAD(5), RAD(-30))* RIGHTSHOULDERC0, 0.15 / 3)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	CameraShake(Blade.Position,1e9,2.5,65)
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.35,.55,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(0),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -.7) * ANGLES(RAD(120), RAD(5), RAD(-80))* RIGHTSHOULDERC0, 0.15 / 3)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.35,.45,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(0),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(50)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-30)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.30, 0.5, -.7) * ANGLES(RAD(150), RAD(5), RAD(-120))* RIGHTSHOULDERC0, 0.15 / 3)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.35,.35,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(0),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(80)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-50)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -.7) * ANGLES(RAD(150), RAD(5), RAD(-160))* RIGHTSHOULDERC0, 0.15 / 3)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	KTRAIL.Enabled = false
	ATTACK = false
end	

function SLASH2()
	ATTACK = true
	KTRAIL.Enabled = true
	CreateSound("182765513",RootPart,8,.9,false)
	CreateSound("182765513",RootPart,8,1.15,false)
	CreateSound("182765513",RootPart,8,1.3,false)
	CreateSound("136597020",RootPart,7,.9,false)
	CreateSound("136597020",RootPart,7,1.15,false)
	CreateSound("136597020",RootPart,7,1.3,false)
	CreateSound("182765513",RootPart,8,.9,false)
	CreateSound("182765513",RootPart,8,1.15,false)
	CreateSound("182765513",RootPart,8,1.3,false)
	CreateSound("136597028",RootPart,7,.9,false)
	CreateSound("136597028",RootPart,7,1.15,false)
	CreateSound("136597028",RootPart,7,1.3,false)
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait() 
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.55,.35,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(700 * COS(SINE/12)),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		WACKYEFFECT({
				Time = MRANDOM(45, 85),
				EffectType = "Round Slash",
				Size = VT(0, 0, 0),
				Size2 = VT(5, 0, 5)/35,
				Transparency = .5,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360))),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = MRANDOM(-20, 20),
				RotationZ = 0,
				Material = "Glass",
				Color = C3(.35,.75,1),
				SoundID = 0,
				SoundPitch = 1.5,
				SoundVolume = 4,
				UseBoomerangMath = true,
				Boomerang = 10,
				SizeBoomerang = 25
		})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
      	RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, -.5) * ANGLES(RAD(140), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	CameraShake(Blade.Position,1e9,2.5,65)
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
				Time = MRANDOM(45, 85),
				EffectType = "Round Slash",
				Size = VT(0, 0, 0),
				Size2 = VT(5, 0, 5)/35,
				Transparency = .5,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360))),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = MRANDOM(-20, 20),
				RotationZ = 0,
				Material = "Glass",
				Color = C3(.75,.35,1),
				SoundID = 0,
				SoundPitch = 1.5,
				SoundVolume = 4,
				UseBoomerangMath = true,
				Boomerang = 10,
				SizeBoomerang = 25
		})
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.65,.35,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(700 * COS(SINE/12)),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, -.6) * ANGLES(RAD(50), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
				Time = MRANDOM(45, 85),
				EffectType = "Round Slash",
				Size = VT(0, 0, 0),
				Size2 = VT(5, 0, 5)/35,
				Transparency = .5,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360))),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = MRANDOM(-20, 20),
				RotationZ = 0,
				Material = "Glass",
				Color = C3(.35,.55,1),
				SoundID = 0,
				SoundPitch = 1.5,
				SoundVolume = 4,
				UseBoomerangMath = true,
				Boomerang = 10,
				SizeBoomerang = 25
		})
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.75,.35,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(700 * COS(SINE/12)),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, -.7) * ANGLES(RAD(30), RAD(0), RAD(-20)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	for i=0, 0.35, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
				Time = MRANDOM(45, 85),
				EffectType = "Round Slash",
				Size = VT(0, 0, 0),
				Size2 = VT(5, 0, 5)/35,
				Transparency = .5,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360))),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = MRANDOM(-20, 20),
				RotationZ = 0,
				Material = "Glass",
				Color = C3(.75,.55,1),
				SoundID = 0,
				SoundPitch = 1.5,
				SoundVolume = 4,
				UseBoomerangMath = true,
				Boomerang = 10,
				SizeBoomerang = 25
		})
		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = Blade.CFrame, MoveToPos = Blade.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Glass", Color = Color3.new(.85,.45,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
		weldSomethings(KATA.Weld,RightArm,CF(.4,0,1)*ANGLES(RAD(0),RAD(700 * COS(SINE/12)),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))  
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(1), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
       	RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, -.8) * ANGLES(RAD(20), RAD(0), RAD(-30)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		if ANIM == "Aerial" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ANIM == "Walk" then
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
		elseif ANIM == "Idle" then
			 LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)	  
		end
	end	
	KTRAIL.Enabled = false
	ATTACK = false
end	

function KatanaBlank()
	 ATTACK = true
	 CreateSound("152092053", STUFF, 8, 1)
	 CameraShake(RootPart.Position,1e9,15,100)
	 WACKYEFFECT({Time = 40, EffectType = "Sphere", Size = VT(15,15,15), Size2 = VT(60,60,60), Transparency = 0.4, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.35, .35, 1), SoundID = nil, SoundPitch = 1, SoundVolume = 10})
	 WACKYEFFECT({Time = 40, EffectType = "Sphere", Size = VT(15,15,15)/.5, Size2 = VT(60,60,60)/.5, Transparency = 0.3, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.35, .45, 1), SoundID = nil, SoundPitch = 1, SoundVolume = 10})
	 WACKYEFFECT({Time = 40, EffectType = "Sphere", Size = VT(15,15,15)/1.2, Size2 = VT(60,60,60)/1.2, Transparency = 0.1, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.35, .55, 1), SoundID = nil, SoundPitch = 1, SoundVolume = 10})
	  WACKYEFFECT({Time = 40, EffectType = "Sphere", Size = VT(15,15,15)/2, Size2 = VT(60,60,60)/2, Transparency = 0.2, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.35, .65, 1), SoundID = nil, SoundPitch = 1, SoundVolume = 10})
	 ATTACK = false
end

--><Key Inputs

function MouseDown(Mouse)       
	KEYHOLD = true
	if ATTACK == false then
		if SLASHES == 1 then
			SLASH1()
			SLASHES = 2
		elseif SLASHES == 2 then
			SLASH2()
			SLASHES = 1                          		
		end
	end           
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "q" and ATTACK == false then
		KatanaBlank()
	end
	if Key == "c" and ATTACK == false then
		SlicingDash()
	end
	if Key == "n" and ATTACK == false then
		if Song == 3789336531 then
			Song = 3664863329
			OTHER = true
		elseif Song == 3664863329 then
			Song = 3789336531 
			OTHER = false	
		end
	end
	if Key == "m" and ATTACK == false then
		if Song == 3789336531 or Song == 3664863329 then
			Song = 0
			print("Song Off")
		elseif Song == 0 then
			if OTHER == false then 
				Song = 3789336531
			elseif OTHER == true then
				Song = 3664863329	
			end	
			print("Song On")
		end	             				
	end
end	

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)  

--><:thinking:
function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end

------------------------------------------------------------------------------
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

Humanoid.HipHeight = 0
Humanoid.JumpPower = 100
Humanoid.WalkSpeed = 100
local Field = Instance.new("ForceField", game.Players.LocalPlayer.Character)
Field.Visible = false
Character.Parent = workspace

while true do
	Swait()
	--script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	ANIMATOR.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if TORSOVERTICALVELOCITY > 20 then
		TORSOVERTICALVELOCITY = 20
	elseif TORSOVERTICALVELOCITY < -20 then
		TORSOVERTICALVELOCITY = -20
	end
	if HITFLOOR == nil then
		ANIM = "Aerial"
		if ATTACK == false then
			Humanoid.WalkSpeed = 100
			WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = RootPart.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Neon", Color = Color3.new(.35,.65,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
			weldSomethings(KATA.Weld,RightArm,CF(.4,0,-1)*ANGLES(RAD(0),RAD(180),RAD(-90))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))     
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-10 + 2.5 * SIN(SINE / 8)), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(12 - 2.5 * SIN(SINE / 9))) * ANGLES(RAD(20), RAD(0), RAD(-12 - 2.5 * SIN(SINE / 9))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, .5  + 0.15 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 0.35 * COS(SINE / 8)), RAD(30 + 0.35 * COS(SINE / 8))) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45, .5  + 0.15 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 0.35 * COS(SINE / 8)), RAD(-30 + 0.35 * COS(SINE / 8))) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -.8 + 0.025 * COS(SINE / 12), -.5) * ANGLES(RAD(5), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.8 + 0.025 * COS(SINE / 12), -.5) * ANGLES(RAD(15), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 then
		ANIM = "Idle"
		if ATTACK == false then  
			Humanoid.WalkSpeed = 100
			weldSomethings(KATA.Weld,RightArm,CF(.4,0,-1)*ANGLES(RAD(0),RAD(180),RAD(0))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0))    
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(-35)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(2 + 2 * COS(SINE / 12)), RAD(40)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, .5) * ANGLES(RAD(-5), RAD(5), RAD(10))* RIGHTSHOULDERC0, 0.15 / 3)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0),RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end 
	elseif TORSOVELOCITY > 1 then
		ANIM = "Walk"
		if ATTACK == false then    
			Humanoid.WalkSpeed = 100
			WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5), Size2 = VT(.5,10,.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame *CFrame.new(0,0,5) , MoveToPos = RootPart.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Neon", Color = Color3.new(.35,.65,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})
			WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(.5,10,.5)/2, Size2 = VT(.5,10,.5)/2, Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame *CFrame.new(0,0,5) , MoveToPos = RootPart.Position+VT(MRANDOM(-25,59)/1.5,MRANDOM(-25,59)/1.5,0), MRANDOM(-25,59)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Neon", Color = Color3.new(.7,.35,1), SoundId = 0, SoundPitch = .4, SoundVolume = 9, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 55})  
            weldSomethings(KATA.Weld,RightArm,CF(.4,0,-1)*ANGLES(RAD(0),RAD(180),RAD(-90))*ANGLES(RAD(90),RAD(0),RAD(10)),CF(0,0,0)) 
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.10 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(20 - 1.5 * COS(SINE / 3.5)), RAD(0) - ROOT.RotVelocity.Y / 75, RAD(2 * COS(SINE / 4.5))), 0.15)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(-30) / 15) * ANGLES(RAD(0), RAD(0), RAD(-30) / 15), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, 0) * ANGLES(RAD(-5), RAD(0), RAD(16 + 1 * COS(SINE / 45)))* RIGHTSHOULDERC0, 0.15 / 3)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5,0.5,0) * ANGLES(RAD(0 - 140 * COS(SINE / 7)),RAD(-10 - 10  * COS(SINE / 7)),RAD(0))* LEFTSHOULDERC0, 0.15 / 3)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.5 * COS(SINE / 4.5) / 2, 0.6 * COS(SINE / 4.5) / 2)  * ANGLES(RAD(-5 - 70 * COS(SINE / 4.5)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 4.5) / 2.5, RAD(90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 + 0.5 * COS(SINE / 4.5) / 2, -0.6 * COS(SINE / 4.5) / 2) * ANGLES(RAD(-5 + 70 * COS(SINE / 4.5)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 4.5) / 2.5, RAD(-90 - 10 * COS(SINE / 4.5)), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE / 4.5)), RAD(0), RAD(0)), 0.3)   	
		end
	end     	             
	if Player.Name == "InfiniteOneWithdank" then
		for _, c in pairs(Character:GetChildren()) do
			if c and c.Parent and c.ClassName == "Accessory" then    
				if c.Name == "StarCape" then
					c:Destroy()
				end
			end
		end	
	end	
	Nevermore()
	unanchor() 
	Humanoid:SetStateEnabled("Dead",false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
	Humanoid:SetStateEnabled("GettingUp",true)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
	Humanoid:SetStateEnabled("Ragdoll",false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
	Humanoid:SetStateEnabled("FallingDown",false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
	Humanoid:SetStateEnabled("Seated",false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
	Humanoid:SetStateEnabled("PlatformStanding",false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
	Humanoid.MaxHealth = 1e9999999
	Humanoid.Health = 1e999999999 
	Humanoid.Name = "Runner"
	if game.ReplicatedFirst:FindFirstChildOfClass("Humanoid") == nil then
		Humanoid = IT("Humanoid",game.ReplicatedFirst)
        Humanoid.Name = "Runner"
        Humanoid.HipHeight = 0
	end
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end 	
	Musika.SoundId = "rbxassetid://" .. Song
	Musika.Looped = true
	Musika.Pitch = Pitch
	Musika.Volume = Volu
	Musika.Playing = true
	Musika.EmitterSize = 35
	if Musika.Parent ~= RootPart then
		print("Fixing music")
		Musika = IT("Sound", RootPart)
		Musika.SoundId = "rbxassetid://" .. Song
		Musika.Looped = true
		Musika.Pitch = Pitch
		Musika.Volume = Volu 
		Musika.Playing = true
		Musika.EmitterSize = 45
		Musika.TimePosition = TSTP
		FIXING = true
	elseif FIXING == false then
		TSTP = Musika.TimePosition
	else
		FIXING = false
	end	
end	
    end
    task.spawn(function()
  runner()
    end)
    task.wait(.1)
    pcall(function()
        local PositionOffsetgun = Vector3.new(3, 0, .875)
local RotationOffsetgun = Vector3.new(-90, 180, -28)
RotationOffsetgun = CFrame.Angles(
	math.rad(RotationOffsetgun.X),
	math.rad(RotationOffsetgun.Y),
	math.rad(RotationOffsetgun.Z)
)

 game.Players.LocalPlayer.Character["MeshPartAccessory"].Handle:BreakJoints()

local CFrameOffsetgun = CFrame.new(PositionOffsetgun)*RotationOffsetgun

local weld = Instance.new("Weld")
weld.C1 = CFrameOffsetgun
weld.Parent = game.Players.LocalPlayer.Character["MeshPartAccessory"].Handle
weld.Part0 = game.Players.LocalPlayer.Character["MeshPartAccessory"].Handle
weld.Part1 = game.Players.LocalPlayer.Character["Katana"].MainHandle
    end)