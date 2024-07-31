AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "L1A1"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_l1a1")
	killicon.Add( "cwr_tokos_l1a1", "vgui/entities/cwr_tokos_l1a1", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	SWEP.Shell = "rifleshell"
	
	SWEP.IronsightPos = Vector(-3.22, -4.933, 1.325)
	SWEP.IronsightAng = Vector(-0.417, 0, 0)

	
	SWEP.AlternativePos = Vector(-0.5, -1, 0)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-3.201, -5, 0.28)
    SWEP.M4Ang = Vector(0, 0, 0)
	SWEP.SightWithRail = true

	
	SWEP.AttachmentModelsVM = {

["laserband"] = { type = "Model", model = "models/tokos_weaponry/shared/tac/12g_laserband.mdl", bone = "weapon", rel = "", pos = Vector(1.039, -1.04, 16.49), angle = Angle(90, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

		["md_rail"] = { type = "Model", model = "models/tokos_weaponry/shared/mounts/modkit_7.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.3, 1.34), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.445, 1.067), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }


	}



	
	
end

SWEP.MuzzleVelocity = 2500 -- in meter/s







SWEP.Attachments = {
	 {header = "Upper Rail Mount", offset = {800, 0}, atts = {"rdsc"}},
	 {header = "Tac - Barrel", offset = {200, -100}, atts = {"laserband"}},
	["+reload"] = {header = "Ammo", offset = {300, 500}, atts = {"am_magnum", "am_matchgrade"}},
}
	

SWEP.LaserBandPosAdjust = Vector(0, 0, -1)
SWEP.LaserBandAngAdjust = Angle(0, 0, 0)

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
end //*/

SWEP.Animations = {

	fire = "fire",
	fire_last = "fire_empty",
	fire_aim_last = "fire_empty",
	inspect = "inspect",
	fire_aim = "fire_iron",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.70, sound = "weapons/tokos/weapons/fal/fnfal_magout.wav"},
		{time = 1.51, sound = "weapons/tokos/weapons/fal/fnfal_magin.wav"},
	},

	reload_empty = {
		{time = 0.40, sound = "weapons/tokos/weapons/fal/fnfal_magout.wav"},
		{time = 1.8, sound = "weapons/tokos/weapons/fal/fnfal_magin.wav"},
		{time = 2.48, sound = "weapons/tokos/weapons/fal/fnfal_boltrelease.wav"},
	},

	inspect = {

		{time = 2.99, sound = "weapons/tokos/weapons/fal/fnfal_boltback.wav"},
		{time = 4, sound = "weapons/tokos/weapons/fal/fnfal_boltrelease.wav"},


	}
}

SWEP.SpeedDec = 0

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/l1a1/tokos_l1a1.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireDelay = 60 / 350
SWEP.FireSound = "TOKOS_M1CAR_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_M1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = 2.5


SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.50
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.020
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.10
SWEP.Shots = 1
SWEP.Damage = 48
SWEP.DeployTime = 0.2

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 2.2
SWEP.ReloadTime_Empty = 2.5
SWEP.ReloadHalt_Empty = 2.5

SWEP.SnapToIdlePostReload = false


SWEP.InspectAnim = "inspect" -- Needs to be in self.Animations
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
end