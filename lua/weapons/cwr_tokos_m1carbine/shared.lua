AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1 Carbine"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_m1carbine")
	killicon.Add( "cwr_tokos_m1carbine", "vgui/entities/cwr_tokos_m1carbine", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	SWEP.Shell = "rifleshell"
	
	SWEP.IronsightPos = Vector(-3.11, -2.816, 1.08)
	SWEP.IronsightAng = Vector(1.123, 0, 0)

	
	SWEP.AlternativePos = Vector(-0.5, -1, 0)
	SWEP.AlternativeAng = Vector(0, 0, -3)

	SWEP.M4Pos = Vector(-3.12, -8.509, 0.4)
	SWEP.M4Ang = Vector (0 ,0 ,0)
	

	
    SWEP.SightWithRail = true
	
	SWEP.AttachmentModelsVM = {

		["md_rail"] = { type = "Model", model = "models/tokos_weaponry/shared/mounts/modkit_7.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.243, 8.465), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.316, 7.109), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }


	}



	
	
end

SWEP.MuzzleVelocity = 1500 -- in meter/s







SWEP.Attachments = {
	{header = "Upper Rail", offset = {350, 0}, atts = {"rdsc"}},
	["+reload"] = {header = "Ammo", offset = {350, 650}, atts = {"am_magnum", "am_matchgrade"}},
}
	

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
	inspect = "inspect",
	fire_aim = "fire_iron",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.38, sound = "weapons/tokos/weapons/m1carbine/m1a1_magout.wav"},
		{time = 1.60, sound = "weapons/tokos/weapons/m1carbine/m1a1_magin.wav"},
	},

	reload_empty = {
		{time = 0.38, sound = "weapons/tokos/weapons/m1carbine/m1a1_magout.wav"},
		{time = 1.60, sound = "weapons/tokos/weapons/m1carbine/m1a1_magin.wav"},
		{time = 2.2, sound = "weapons/tokos/weapons/m1carbine/m1a1_boltback.wav"},
		{time = 2.45, sound = "weapons/tokos/weapons/m1carbine/m1a1_boltrelease.wav"},
	},

	inspect = {

		{time = 3.9, sound = "weapons/tokos/weapons/m1carbine/m1a1_magout.wav"},
		{time = 5.35, sound = "weapons/tokos/weapons/m1carbine/m1a1_magin.wav"},


	}
}

SWEP.SpeedDec = 0

SWEP.Slot = 2
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
SWEP.ViewModel		= "models/tokos_weaponry/m1carbine/tokos_m1carbine.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 60 / 450
SWEP.FireSound = "TOKOS_M1CAR_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_M1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = 3


SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.50
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.020
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.10
SWEP.Shots = 1
SWEP.Damage = 42
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