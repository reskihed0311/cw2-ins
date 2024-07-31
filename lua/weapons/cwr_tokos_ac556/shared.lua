AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AC-556"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_ac556")
	killicon.Add( "cwr_tokos_ac556", "vgui/entities/cwr_tokos_ac556", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ots"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.90
	
	
	SWEP.IronsightPos = Vector(-3.52, -6.185, 1.213)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-3.52, -10.198, 0.33)
    SWEP.M4Ang = Vector(0, 0, 0)

	
	SWEP.RKOBRAPos = Vector(-3.52, -10.198, 0.48)
    SWEP.RKOBRAAng = Vector(0, 0, 0)


	
	SWEP.AttachmentModelsVM = {

["natoheavysup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_heavysup.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.7, 15.635), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["natolightsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_lightsup.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.7, 15.635), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.421, 2.691), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.421, 3.691), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

	
	}

	
	


	
end

SWEP.MuzzleVelocity = 880 -- in meter/s









SWEP.Attachments = {
	{header = "Upper Rail 1", offset = {700, 0}, atts = {"rdsc", "rkobra"}},
	{header = "Muzzle Devices", offset = {-400, 0}, atts = {"natolightsup", "natoheavysup"}},
	["+reload"] = {header = "Ammo", offset = {200, 700}, atts = {"am_magnum", "am_matchgrade"}},
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
		{time = 0.35, sound = "weapons/tokos/weapons/ac556/mini14_magout.wav"},
		{time = 1.3, sound = "weapons/tokos/weapons/ac556/mini14_magin.wav"},
	},

	reload_empty = {
		{time = 0.35, sound = "weapons/tokos/weapons/ac556/mini14_magout.wav"},
		{time = 1.3, sound = "weapons/tokos/weapons/ac556/mini14_magin.wav"},
		{time = 1.92, sound = "weapons/tokos/weapons/ac556/mini14_boltback.wav"},
		{time = 2.1, sound = "weapons/tokos/weapons/ac556/mini14_boltrelease.wav"},
	},

	inspect = {

		{time = 4.8, sound = "weapons/tokos/weapons/ac556/mini14_magout.wav"},
		{time = 6.8, sound = "weapons/tokos/weapons/ac556/mini14_magin.wav"},



	}
}

SWEP.SpeedDec = 50

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
SWEP.ViewModel		= "models/tokos_weaponry/ac556/tokos_ac556.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 600
SWEP.FireSound = "TOKOS_AC556_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_AC556_FIRE_SUPPRESSED"
SWEP.Recoil = 0.9



SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.80
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.004
SWEP.SpreadPerShot = 0.0001
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 27
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