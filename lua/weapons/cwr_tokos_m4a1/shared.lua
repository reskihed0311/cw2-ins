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
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.90
	
	
	SWEP.IronsightPos = Vector(-2.501, -7.016, 0.439)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-2.52, -4.776, 0.56)
    SWEP.M4Ang = Vector(0, 0, 0)


	
	SWEP.AttachmentModelsVM = {

	["natoheavysup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_heavysup.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.1, 16), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["natolightsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_lightsup.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.1, 16), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.283, 0), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["sec_vfg"] = { type = "Model", model = "models/tokos_weaponry/shared/grips/a_foregrip_sec.mdl", bone = "weapon", rel = "", pos = Vector(0, 0, 7.659), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	
	}

	SWEP.ForegripOverridePos = {

		["default"] = {},

		["vfg"] = {

			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-20.319, -75.377, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1.003, 1.003, 1.003), pos = Vector(0, 0, 0), angle = Angle(0, 49.314, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(1.713, -7.505, 39.639) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.843, 0.407, -2.018), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.52, -0.613, 0) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -65.815, 0) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10.055, -41.151, 20.844) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(18.007, 67.543, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-42.929, 21.372, 50.826) }

		},
}
	


	
end

SWEP.MuzzleVelocity = 880 -- in meter/s




SWEP.SightBGs = {main = 1 , regular = 0 , none = 1}
SWEP.FrontBGs = {main = 2 , regular = 0 , none = 1}




SWEP.Attachments = {
	{header = "Upper Rail", offset = {900, -100}, atts = {"rdsc"}},
	{header = "Lower Rail", offset = {0, 350}, atts = {"sec_vfg"}},
	{header = "Muzzle Devices", offset = {-400, 0}, atts = {"natolightsup", "natoheavysup"}},
	{header = "FS", offset = {0, -100}, atts = {"nofs"}},
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
SWEP.Damage = 38
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