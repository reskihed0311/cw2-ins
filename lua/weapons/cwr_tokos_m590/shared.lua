AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
    SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M590"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
    SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_m590")
	killicon.Add( "cwr_tokos_m590", "vgui/entities/cwr_tokos_m590", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.Shell = "shotshell"
	SWEP.ShellDelay = 0.3
    SWEP.SnapToIdlePostReload = false
	 
	SWEP.SightWithRail = true

	SWEP.AttachmentModelsVM = {

		["md_rail"] = { type = "Model", model = "models/tokos_weaponry/shared/mounts/modkit_7.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.496, 1.399), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.593, 0.239), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.593, 0.239), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
       

		["12g_suppresor"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/12g_can.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.1, 27.5), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.593, 0.239), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },


	}

	SWEP.REOTECHPos = Vector(-2.02, -6.015, 0.039)
	SWEP.REOTECHAng = Vector(0, 0, 0)
	SWEP.M4Pos = Vector(-2.02, -6.015, -0.04)
	SWEP.M4Ang = Vector(0, 0, 0)
	SWEP.RKOBRAPos = Vector(-2.02, -6.015, 0.159)
	SWEP.RKOBRAAng = Vector(0, 0, 0)

	
end

SWEP.MuzzleVelocity = 381 -- in meter/s
SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false



function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.1
	anim = "safe"
	prefix = ""
	suffix = ""
	
		if clip == 1 then
		suffix = suffix .. "_last"
	end

	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end //


SWEP.IronsightPos = Vector(-2.02, -6.015, 0.8)
SWEP.IronsightAng = Vector(0, 0, 0)






SWEP.Attachments = {
	{header = "Upper Rail", offset = {750, -50}, atts = {"rdsc", "reotech","rkobra"}},
	{header = "Muzzle Device", offset = {-200, 300}, atts = {"12g_suppresor"}},
	["+reload"] = {header = "Ammo", offset = {450, 500}, atts = {"am_slugrounds", "am_flechetterounds"}},
}



    SWEP.Animations = {

        idle = "reload_end",
        fire = "fire",
        fire_last = "fire",
        fire_aim = "fire_iron",
        fire_last_aim = "fire",
        reload_start = "reload_start",
        reload_end = "reload_end",
        insert = "shell_loop",
        reload_end = "reload_end_empty",
        draw = "draw",
    }
        
    SWEP.Sounds = {

        fire = {
            {time = 0.18, sound = "M590_PUMPBACK"},
            {time = 0.35, sound = "M590_PUMPFWD"},
        },
        fire_iron = {
            {time = 0.18, sound = "M590_PUMPBACK"},
            {time = 0.35, sound = "M590_PUMPFWD"},
        },
        shell_loop = {
            {time = 0, sound = "weapons/tokos/weapons/m590/m590_shell_insert_1.wav"},
        },

		reload_end_empty = {
            {time = 0.15, sound = "weapons/tokos/weapons/m590/m590_pumpback.wav"},
			{time = 0.35, sound = "weapons/tokos/weapons/m590/m590_pumpforward.wav"},
        },
    
    }


SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "Shotguns"
SWEP.FireAnimSpeed = 1

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/m590/tokos_m590.mdl"
SWEP.WorldModel		= "models/weapons/w_shot_m3super90.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"
SWEP.FireDelay = 60 / 100
SWEP.FireSound = "TOKOS_M590_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_M590_FIRE_SUPPRESSED"
SWEP.Recoil = 3

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.06
SWEP.ClumpSpread = 0.03
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.8
SWEP.Shots = 8
SWEP.Damage = 20
SWEP.DeployTime = 0.8
SWEP.ReloadStartTime_Empty = 2
SWEP.ReloadStartTime = 0.3
SWEP.InsertShellTime = 0.85
SWEP.ReloadFinishWait = 1
SWEP.PumpMidReloadWait = 0.6
SWEP.ShotgunReload = true
SWEP.NearWallDistance = 30

SWEP.Chamberable = false 

--add inspect later


--[[SWEP.InspectAnim = "inspect" -- Needs to be in self.Animations
SWEP.InspectTime = 0
DEFINE_BASECLASS( "cw_base" )
function SWEP:Think()
    BaseClass.Think( self )
    if CLIENT and self:GetOwner():KeyDown( IN_USE ) and self:GetOwner():KeyDown( IN_WALK ) and self.InspectTime < CurTime() then
        local prevForegrip = self.ForegripParent
        self.ForegripParent = "default"
        self:playAnim( self.InspectAnim )

        local _, sequenceTime = self.CW_VM:LookupSequence( self.Animations[self.InspectAnim] )
        self.InspectTime = CurTime() + sequenceTime

		timer.Simple(self:SequenceDuration(self:LookupSequence(self.InspectAnim)) - 1.9, function()
			self.ForegripParent = prevForegrip
		  end)
    end
end--]]