AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M4A1"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_m4a1")
	killicon.Add( "cwr_tokos_m4a1", "vgui/entities/cwr_tokos_m4a1", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	
	SWEP.IronsightPos = Vector(-2.501, -7.016, 0.439)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	

	
	SWEP.AttachmentModelsVM = {}



	
	
end

SWEP.MuzzleVelocity = 880 -- in meter/s






SWEP.Attachments = {
	["+reload"] = {header = "Ammo", offset = {900, -100}, atts = {"am_magnum", "am_matchgrade"}}
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
		{time = 0.75, sound = "weapons/tokos/weapons/m4a1/m4a1_magrelease.wav"},
		{time = 0.85, sound = "weapons/tokos/weapons/m4a1/m4a1_magout.wav"},
		{time = 1.35, sound = "weapons/tokos/weapons/m4a1/m4a1_magin.wav"},
	},

	reload_empty = {
		{time = 0.2, sound = "weapons/tokos/weapons/m4a1/m4a1_magrelease.wav"},
		{time = 0.28, sound = "weapons/tokos/weapons/m4a1/m4a1_magout.wav"},
		{time = 1.9, sound = "weapons/tokos/weapons/m4a1/m4a1_magin.wav"},
		{time = 2.4, sound = "weapons/tokos/weapons/m4a1/m4a1_boltrelease.wav"},
	},

	inspect = {

		{time = 2.5, sound = "weapons/tokos/weapons/m4a1/m4a1_magrelease.wav"},
		{time = 2.6, sound = "weapons/tokos/weapons/m4a1/m4a1_magout.wav"},
		{time = 5.25, sound = "weapons/tokos/weapons/m4a1/m4a1_magin.wav"},
		{time = 6.3, sound = "weapons/tokos/weapons/m4a1/m4a1_boltback.wav"},
		{time = 6.95, sound = "weapons/tokos/weapons/m4a1/m4a1_boltrelease.wav"},



	}
}

SWEP.SpeedDec = 80

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/m4a1/tokos_m4a1.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 900
SWEP.FireSound = "TOKOS_M4A1_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_M4A1_FIRE_SUPPRESSED"
SWEP.Recoil = 0.9



SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.50
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.005
SWEP.SpreadPerShot = 0.0001
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 42
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadHalt = 2.5
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3

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