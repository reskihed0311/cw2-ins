AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "IMI GALIL"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_galil")
	killicon.Add( "cwr_tokos_galil", "vgui/entities/cwr_tokos_galil", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.6
	
	
	SWEP.IronsightPos = Vector(-2.221, -5.534, 0.686)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	
    SWEP.M4Pos = Vector(-2.25, -6.97, -0.52)
    SWEP.M4Ang = Vector(0, 0, 0)
	SWEP.RKOBRAPos = Vector(-2.25, -6.97, -0.40)
    SWEP.RKOBRAAng = Vector(0, 0, 0)

	SWEP.REOTECHPos = Vector(-2.25, -4.97, -0.50)
    SWEP.REOTECHAng = Vector(0, 0, 0)
	SWEP.ForegripOverridePos = {

		["default"] = {},

		["vfg"] = {

			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-9.7, -75.608, -23.254) },
			["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 90.164, 0) },
			["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(26.784, -29.383, 0) },
			["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(9.284, 51.59, 0) },
			["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(19.95, -11.862, 0) },
			["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -56.295, 0) },
			["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(17.503, -38.838, 0) },
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.449, 0.87, -0.849), angle = Angle(0, 0, 0) },
			["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-30.769, -1.129, 45.951) }
		
		

		},
}
	


	
    SWEP.SightWithRail = true
	
	SWEP.AttachmentModelsVM = {
		["natoheavysup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_heavysup.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.6, 17), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["natolightsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_lightsup.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.6, 17), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["sec_vfg"] = { type = "Model", model = "models/tokos_weaponry/shared/grips/a_foregrip_sec.mdl", bone = "weapon", rel = "", pos = Vector(0, 0.555, 7.46), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_rail"] = { type = "Model", model = "models/tokos_weaponry/shared/mounts/a_mount_galil.mdl", bone = "weapon", rel = "", pos = Vector(-0.233, -1.667, 1.409), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.244, -2.468, 0.556), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(-0.244, -2.468, 0.556), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(-0.244, -2.468, 0.556), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		
	}



	
	
end

SWEP.MuzzleVelocity = 880 -- in meter/s






SWEP.Attachments = {
	{header = "Dove Tail", offset = {900, -100}, atts = {"rdsc","reotech", "rkobra"}},
	{header = "Muzzle Devices", offset = {-400, 0}, atts = {"natolightsup", "natoheavysup"}},
	{header = "Lower", offset = {0, 350}, atts = {"sec_vfg"}},
	["+reload"] = {header = "Ammo", offset = {200, 700}, atts = {"am_magnum", "am_matchgrade"}}
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
		{time = 0.3, sound = "weapons/tokos/weapons/galil/galil_magrelease.wav"},
		{time = 0.45, sound = "weapons/tokos/weapons/galil/galil_magout.wav"},
		{time = 1.63, sound = "weapons/tokos/weapons/galil/galil_maghit.wav"},
		{time = 1.70, sound = "weapons/tokos/weapons/galil/galil_magin.wav"},
	
	},

	reload_empty = {
		{time = 0.3, sound = "weapons/tokos/weapons/galil/galil_magrelease.wav"},
		{time = 0.45, sound = "weapons/tokos/weapons/galil/galil_magout.wav"},
		{time = 1.63, sound = "weapons/tokos/weapons/galil/galil_maghit.wav"},
		{time = 1.70, sound = "weapons/tokos/weapons/galil/galil_magin.wav"},
		{time = 2.4, sound = "weapons/tokos/weapons/galil/galil_boltback.wav"},
		{time = 2.7, sound = "weapons/tokos/weapons/galil/galil_boltrelease.wav"},
	
	},

	inspect = {

		{time = 2.45	, sound = "weapons/tokos/weapons/galil/galil_magrelease.wav"},
		{time = 2.55	, sound = "weapons/tokos/weapons/galil/galil_magout.wav"},
		{time = 4.3	, sound = "weapons/tokos/weapons/galil/galil_maghit.wav"},
		{time = 4.45	, sound = "weapons/tokos/weapons/galil/galil_magin.wav"},
		



	}
}

SWEP.SpeedDec = 120

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
SWEP.ViewModel		= "models/tokos_weaponry/galil/tokos_galilhaji.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_ak47.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 35
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 700
SWEP.FireSound = "TOKOS_GALIL_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_GALIL_FIRE_SUPPRESSED"
SWEP.Recoil = 1.2



SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.50
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.010
SWEP.SpreadPerShot = 0.0001
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 32
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

		timer.Simple(self:SequenceDuration(self:LookupSequence(self.InspectAnim)) - 0, function()
			self.ForegripParent = prevForegrip
		  end)
    end
end