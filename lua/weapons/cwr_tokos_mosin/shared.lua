AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("7.62x54MMR", "7.62x54MMR", 7.62, 54)

if CLIENT then
    SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Mosin Nagant (Infantry)"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
    SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_m40a1")
	killicon.Add( "cwr_tokos_m40a1", "vgui/entities/cwr_tokos_m40a1", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.Shell = "mainshell"
	SWEP.ShellDelay = 0.8
    SWEP.SnapToIdlePostReload = false
	 
	SWEP.SightWithRail = true

	SWEP.AttachmentModelsVM = {
		["md_rail"] = { type = "Model", model = "models/tokos_weaponry/shared/mounts/modkit_7.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.757, 13.496), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["r_pbs1"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/pbs1_can.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.15, 33), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

		["mx4"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/mx4.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.918, 11.826), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.918, 11.826), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.918, 11.826), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.918, 11.826), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["relcan"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eclan.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.918, 11.826), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["racog"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/acog.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.918, 11.826), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}

	SWEP.MX4Pos = Vector(-3.08, -18, 0.375)
	SWEP.MX4Ang = Vector(0, 0, 0)
	SWEP.M4Pos = Vector(-3.08, -20, 0.039)
	SWEP.M4Ang = Vector(0, 0, 0)
	SWEP.RKOBRAPos = Vector(-3.08, -20, 0.194)
	SWEP.RKOBRAAng = Vector(0, 0, 0)
	SWEP.ReticleInactivityPostFire = 1.9

	SWEP.REOTECHPos = Vector(-3.08, -20, 0.014)
	SWEP.REOTECHAng = Vector(0, 0, 0)

	SWEP.ELCPos = Vector(-3.08, -18, -0.561)
	SWEP.ELCAng = Vector(0, 0, 0)

	SWEP.RACOGPos = Vector(-3.08, -20, -0.281)
	SWEP.RACOGAng = Vector(0, 0, 0)

	SWEP.BackupSights = {["relcan"] = {[1] = Vector(-3.08, -20, -1.928), [2] = Vector(0, 0, 0)}}
	
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

SWEP.IronsightPos = Vector(-3.066, -2.881, 0.995)
SWEP.IronsightAng = Vector(0, 0, 0)




SWEP.LaserBandPosAdjust = Vector(0, 0, -1)
SWEP.LaserBandAngAdjust = Angle(0, 0, 0)


SWEP.Attachments = {
	{header = "Optic", offset = {1000, 0}, atts = {"rdsc",  "reotech","rkobra", "racog","relcan","mx4"}},
	{header = "Muzzle Devices", offset = {-400, 0}, atts = {"r_pbs1"}},
	["+reload"] = {header = "Ammo", offset = {200, 700}, atts = {"am_magnum", "am_matchgrade"}},
}



    SWEP.Animations = {

        idle = "reload_end",
        fire = "fire",
        fire_last = "fire",
        fire_aim = "fire_iron",
        fire_last_aim = "fire_iron",
        reload_start = "reload_start",
        reload_end = "reload_end",
        insert = "shell_loop",
        draw = "draw",
    }
        
    SWEP.Sounds = {

        fire = {
			{time = 0.52, sound = "MOSIN_BOLTUP"},
			{time = 0.80, sound = "MOSIN_BOLTBACK"},
			{time = 1.25, sound = "weapons/tokos/weapons/mosin/mosin_boltforward.wav"},
			{time = 1.5, sound = "weapons/tokos/weapons/mosin/mosin_boltrelease.wav"},

        },
		fire_iron = {
			{time = 0.52, sound = "MOSIN_BOLTUP"},
			{time = 0.80, sound = "MOSIN_BOLTBACK"},
			{time = 1.25, sound = "weapons/tokos/weapons/mosin/mosin_boltforward.wav"},
			{time = 1.5, sound = "weapons/tokos/weapons/mosin/mosin_boltrelease.wav"},
        },

		shell_loop = {
            {time = 0.1, sound = "weapons/tokos/weapons/mosin/mosin_bulletin_1.wav"},
        },

		reload_start = {
            {time = 0.10, sound = "MOSIN_BOLTUP"},
			{time = 0.32, sound = "MOSIN_BOLTBACK"},
        },

		reload_end = {
			{time = 0.35, sound = "weapons/tokos/weapons/mosin/mosin_boltforward.wav"},
			{time = 0.50, sound = "weapons/tokos/weapons/mosin/mosin_boltrelease.wav"},
        },
    }


SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "Sniper Rifles"
SWEP.FireAnimSpeed = 1

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/mosin/tokos_mosin.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_scout.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 500
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.FireDelay = 60 / 35
SWEP.FireSound = "TOKOS_MOSIN_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_MOSIN_FIRE_SUPPRESSED"
SWEP.Recoil = 2

SWEP.HipSpread = 1
SWEP.AimSpread = 0.0001
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.8
SWEP.Shots = 1
SWEP.Damage = 160
SWEP.DeployTime = 0.8
SWEP.ReloadStartTime = 1.2
SWEP.InsertShellTime = 0.95
SWEP.ReloadFinishWait = 1
SWEP.PumpMidReloadWait = 0.6
SWEP.ShotgunReload = true
SWEP.NearWallDistance = 30

SWEP.Chamberable = false 



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