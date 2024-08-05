AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")
CustomizableWeaponry:registerAmmo(".300 Blackout", ".300 BlackoutR", 7.62, 35)

if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Honey Badger"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_insshoneybadger")
	killicon.Add( "cwr_tokos_insshoneybadger", "vgui/entities/cwr_tokos_insshoneybadger1", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_OTS"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.90
	
	
	SWEP.IronsightPos = Vector(-2.718, -4.421, 0.479)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-2.701, -8.018, 0.717)
    SWEP.M4Ang = Vector(0, 0, 0)

	
	SWEP.REOTECHPos = Vector(-2.701, -5.972, 0.78)
    SWEP.REOTECHAng = Vector(0, 0, 0)

	SWEP.ELCPos = Vector(-2.705, -5.39, 0.083)
    SWEP.ELCAng = Vector(0, 0, 0)
	SWEP.BackupSights = {["relcan"] = {[1] = Vector(-2.705, -5.39, -1.191), [2] = Vector(0, 0, 0)}}


	SWEP.RACOGPos = Vector(-2.705, -5.39, 0.432)
    SWEP.RACOGAng = Vector(0, 0, 0)

	SWEP.RKOBRAPos = Vector(-2.701, -6.926, 0.912)
    SWEP.RKOBRAAng = Vector(0, 0, 0)
	
	SWEP.AttachmentModelsVM = {

["ranpeq"] = { type = "Model", model = "models/tokos_weaponry/shared/tac/a_laser_peq15.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.5, 4.9), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["natoheavysup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_heavysup.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.1, 12), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["natolightsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_lightsup.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.1, 12), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.043, -0.2), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["sec_vfg"] = { type = "Model", model = "models/tokos_weaponry/shared/grips/a_foregrip_sec.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.233, 5.576), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.043, 0), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.043, 0.3), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["relcan"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eclan.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.043, 0), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["racog"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/acog.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.043, 0), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	
	}

	SWEP.ForegripOverridePos = {

		["default"] = {},

		["vfg"] = {

			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-19.675, -80.845, -10.898) },
			["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.571, -46.804, 0) },
			["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.847, 0) },
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.445, -0.459, -1.272), angle = Angle(0, 0, 0) },
			["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-32.648, 2.961, 47.412) },
			["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-1.06, 0, 0) }
		

		},
}
	


	
end

SWEP.MuzzleVelocity = 100-- in meter/s

SWEP.RPEQPosAdjust = Vector(-0.5, 0, 0)
SWEP.RPEQLaserAngAdjust = Angle(0, 0, 0)


SWEP.SightBGs = {main = 1 , regular = 0 , none = 1}




SWEP.Attachments = {
	{header = "Upper Rail", offset = {900, -100}, atts = {"rdsc", "reotech","rkobra", "racog","relcan"}},
	{header = "Lower Rail", offset = {0, 350}, atts = {"sec_vfg"}},
	{header = "Upper Rail 2", offset = {600, -250}, atts = {"ranpeq"}},
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
end //

SWEP.Animations = {

	fire_last = "fire_empty",
	fire = "fire",
	fire_aim = "fire_iron",
	fire_last_aim = "fire_empty",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.70, sound = "weapons/tokos/weapons/inss_honeybadger/honeybadger_magrel.wav"},
		{time = 0.80, sound = "weapons/tokos/weapons/inss_honeybadger/honeybadger_magout.wav"},
		{time = 1.1, sound = "weapons/tokos/weapons/inss_honeybadger/honeybadger_magin.wav"},
	},

	reload_empty = {
		{time = 0.28, sound = "weapons/tokos/weapons/inss_honeybadger/honeybadger_magrel.wav"},
		{time = 0.32, sound = "weapons/tokos/weapons/inss_honeybadger/honeybadger_magout.wav"},
		{time = 1.44, sound = "weapons/tokos/weapons/inss_honeybadger/honeybadger_magin.wav"},
		{time = 2.1, sound = "weapons/tokos/weapons/inss_honeybadger/honeybadger_boltrelease.wav"},
	},
}

SWEP.SpeedDec = 25

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "PDWs"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/inss_honeybadger/tokos_inss_honeybadger300.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 500
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ".300 Blackout"

SWEP.FireDelay = 60 / 1100
SWEP.FireSound = "TOKOS_AAC_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_AAC_FIRE_SUPPRESSED"
SWEP.Recoil = 0.5



SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.10
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.050
SWEP.SpreadPerShot = 0.003
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 35
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadHalt = 2.5
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3

SWEP.SnapToIdlePostReload = false



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

		timer.Simple(self:SequenceDuration(self:LookupSequence(self.InspectAnim)) - 0, function()
			self.ForegripParent = prevForegrip
		  end)
    end
end--]]