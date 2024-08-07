AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "VHS-2"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_m4a1")
	killicon.Add( "cwr_tokos_m4a1", "vgui/entities/cwr_tokos_m4a1", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ots"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.90
	
	
	SWEP.IronsightPos = Vector(-3.2, -4.021, 0.4)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-3.201, -6.854, 0.092)
    SWEP.M4Ang = Vector(0, 0, 0)

	
	SWEP.REOTECHPos = Vector(-3.201, -6.854, 0.143)
    SWEP.REOTECHAng = Vector(0, 0, 0)

	SWEP.ELCPos = Vector(-3.201, -3.709, -0.5)
    SWEP.ELCAng = Vector(0, 0, 0)
	SWEP.BackupSights = {["relcan"] = {[1] = Vector(-3.201, -3.928, -1.818), [2] = Vector(0, 0, 0)}}


	SWEP.RACOGPos = Vector(-3.201, -3, -0.24)
    SWEP.RACOGAng = Vector(0, 0, 0)

	SWEP.RKOBRAPos = Vector(-3.201, -6.854, 0.305)
    SWEP.RKOBRAAng = Vector(0, 0, 0)

	SWEP.LPVOPos = Vector(-3.201, -3.854, -0.264)
	SWEP.LPVOAng = Vector(0, 0, 0)
	
	
	SWEP.AttachmentModelsVM = {

["ranpeq"] = { type = "Model", model = "models/tokos_weaponry/shared/tac/a_laser_peq15.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.5, 5.5), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["natoheavysup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_heavysup.mdl", bone = "weapon", rel = "", pos = Vector(0,-0.35, 13), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["natolightsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_lightsup.mdl", bone = "weapon", rel = "", pos = Vector(0,-0.35, 13), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.179, -2.5), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["sec_vfg"] = { type = "Model", model = "models/tokos_weaponry/shared/grips/a_foregrip_sec.mdl", bone = "weapon", rel = "", pos = Vector(0, 0.791, 8.314), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.179, -1), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.179, -1), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["relcan"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eclan.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.179, 0), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["racog"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/acog.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.179, 0), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rlpvo"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/inss_lpvo.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.179, -1), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	
	}

	SWEP.ForegripOverridePos = {

		["default"] = {},

		["vfg"] = {
			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-8.388, -61.616, -18.875) },
			["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -15.947, 0) },
			["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 86.241, 0) },
			["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(34.099, -18.751, 17.41) },
			["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15.855, 0, 0) },
			["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(8.487, -64.317, -9.242) },
			["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 64.722, 0) },
			["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(24.204, -49.182, 0) },
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.897, 0.931, -1.854), angle = Angle(1, 0, 0) },
			["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-30.33, 2.358, 34.869) }
		

		},
}
	


	
end

SWEP.MuzzleVelocity = 990 -- in meter/s

SWEP.RPEQPosAdjust = Vector(-0.5, 0, 0)
SWEP.RPEQLaserAngAdjust = Angle(0, 0, 0)


SWEP.SightBGs = {main = 1 , regular = 0 , none = 1}




SWEP.Attachments = {
	{header = "Upper Rail", offset = {900, -100}, atts = {"rdsc", "reotech","rkobra", "racog","relcan", "rlpvo"}},
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

	fire = "fire",
	fire_last = "fire_empty",
	inspect = "inspect",
	fire_aim = "fire_iron",
	fire_aim_last = "fire_empty",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.45, sound = "weapons/tokos/weapons/inss_vhs2/magout.wav"},
		{time = 1.45, sound = "weapons/tokos/weapons/inss_vhs2/magin.wav"},
	},

	reload_empty = {
		{time = 0.45, sound = "weapons/tokos/weapons/inss_vhs2/magout.wav"},
		{time = 1.45, sound = "weapons/tokos/weapons/inss_vhs2/magin.wav"},
		{time = 2.12, sound = "weapons/tokos/weapons/inss_vhs2/pullback.wav"},
		{time = 2.295, sound = "weapons/tokos/weapons/inss_vhs2/release.wav"},
	},
}

SWEP.SpeedDec = 20

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "Assault Rifles"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/inss_vhs2/tokos_inss_vhs2.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 500
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 800
SWEP.FireSound = "TOKOS_INSSVHS_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_INSSVHS_FIRE_SUPPRESSED"
SWEP.Recoil = 1



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