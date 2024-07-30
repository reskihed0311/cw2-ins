AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AK-74N"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_ak74")
	killicon.Add( "cwr_tokos_ak74", "vgui/entities/cwr_tokos_ak74", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	
	SWEP.IronsightPos = Vector(-2.241, -7.753, 0.72)
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
		{time = 0, sound = "weapons/tokos/weapons/ak74/ak74_rattle.wav"},
		{time = 0.70, sound = "weapons/tokos/weapons/ak74/ak74_magrelease.wav"},
		{time = 0.75, sound = "weapons/tokos/weapons/ak74/ak74_magout.wav"},
		{time = 1.3, sound = "weapons/tokos/weapons/ak74/ak74_magin.wav"},
	},

	reload_empty = {
		{time = 0.31, sound = "weapons/tokos/weapons/ak74/ak74_magrelease.wav"},
		{time = 0.45, sound = "weapons/tokos/weapons/ak74/ak74_magout.wav"},
		{time = 1.5, sound = "weapons/tokos/weapons/ak74/ak74_magin.wav"},
		{time = 2.1, sound = "weapons/tokos/weapons/ak74/ak74_boltback.wav"},
		{time = 2.25, sound = "weapons/tokos/weapons/ak74/ak74_boltrelease.wav"},
	},

	inspect = {

		{time = 1.35, sound = "weapons/tokos/weapons/ak74/ak74_magrelease.wav"},
		{time = 1.48, sound = "weapons/tokos/weapons/ak74/ak74_magout.wav"},
		{time = 3.1, sound = "weapons/tokos/weapons/ak74/ak74_rattle.wav"},
		{time = 3.65, sound = "weapons/tokos/weapons/ak74/ak74_magin.wav"},
		{time = 4.35, sound = "weapons/tokos/weapons/ak74/ak74_boltback.wav"},
		{time = 5.2, sound = "weapons/tokos/weapons/ak74/ak74_boltrelease.wav"},



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
SWEP.ViewModel		= "models/tokos_weaponry/ak74/tokos_ak74.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_ak47.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 600
SWEP.FireSound = "TOKOS_AK_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_AK_FIRE_SUPPRESSED"
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