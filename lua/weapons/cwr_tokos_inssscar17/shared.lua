AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "FN SCAR 17"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_inssscar17")
	killicon.Add( "cwr_tokos_inssscar17", "vgui/entities/cwr_tokos_inssscar17", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	
	SWEP.IronsightPos = Vector(-2.741, -5.257, 0.519)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(-0.5, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -1.5)
	
    SWEP.M4Pos = Vector(-2.741, -8.445, 0.104)
    SWEP.M4Ang = Vector(0, 0, 0)

	SWEP.REOTECHPos = Vector(-2.741, -8.445, 0.104)
    SWEP.REOTECHAng = Vector(0, 0, 0)

	SWEP.ELCPos = Vector(-2.741, -8.478, -0.482)
    SWEP.ELCAng = Vector(0, 0, 0)



	SWEP.RACOGPos = Vector(-2.741, -8.839, -0.201)
    SWEP.RACOGAng = Vector(0, 0, 0)

	SWEP.RKOBRAPos = Vector(-2.741, -8.351, 0.317)
SWEP.RKOBRAAng = Vector(0, 0, 0)



	SWEP.LPVOPos = Vector(-2.741, -8.351, -0.216)
    SWEP.LPVOAng = Vector(0, 0, 0)

	SWEP.BackupSights = {["relcan"] = {[1] = Vector(-2.741, -8.441, -1.806), [2] = Vector(0, 0, 0)}}

	SWEP.ForegripOverridePos = {

		["default"] = {},

		["vfg"] = {

			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-8.775, -62.97, -27.857) },
			["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(32.505, 106.795, 0) },
			["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(22.423, 0.721, 20.815) },
			["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-29.393, 78.991, 0) },
			["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(37.796, -9.336, 0) },
			["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(13.425, -55.426, -23.907) },
			["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15.178, -24.91, 0) },
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.444, 1.088, -0.555), angle = Angle(0, 0, 0) },
			["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-27.344, -11.822, 35.873) }
		

		

		},
}
	

	
    SWEP.SightWithRail = false
	
	SWEP.AttachmentModelsVM = {
		["ranpeq"] = { type = "Model", model = "models/tokos_weaponry/shared/tac/a_laser_peq15.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.932, 5.151), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["natoheavysup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_heavysup.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.6, 16), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["natolightsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_lightsup.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.6, 16), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["sec_vfg"] = { type = "Model", model = "models/tokos_weaponry/shared/grips/a_foregrip_sec.mdl", bone = "weapon", rel = "", pos = Vector(0, 0.159, 7.519), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
			["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.3, -0.015), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
			["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.3, -0.015), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
			["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.3, -0.015), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
			["relcan"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eclan.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.3, -0.015), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
			["racog"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/acog.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.3, -0.015), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
			["rlpvo"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/inss_lpvo.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.3, -0.015), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		
	}



	
	
end

SWEP.MuzzleVelocity = 880 -- in meter/s


SWEP.RPEQPosAdjust = Vector(-0.5, 0, 0)
SWEP.RPEQLaserAngAdjust = Angle(0, 0, 0)



SWEP.Attachments = {
	{header = "Upper Rail A", offset = {900, -100}, atts = {"rdsc","reotech", "rkobra", "racog","relcan", "rlpvo"}},
	{header = "Muzzle Devices", offset = {-400, 0}, atts = {"natolightsup", "natoheavysup"}},
	{header = "Upper Rail B", offset = {10, -250}, atts = {"ranpeq"}},
	{header = "Lower Rail A", offset = {0, 350}, atts = {"sec_vfg"}},
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
end //

SWEP.Animations = {

	fire = "fire",
	fire_last = "fire_empty",
	fire_aim = "fire_iron",
	fire_last_aim = "fire_empty",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.8, sound = "weapons/tokos/weapons/inss_scar17/magout.wav"},
		{time = 1.2, sound = "weapons/tokos/weapons/inss_scar17/magin.wav"},
		{time = 1.35, sound = "weapons/tokos/weapons/inss_scar17/maghit.wav"},
	},

	reload_empty = {
		{time = 0.30, sound = "weapons/tokos/weapons/inss_scar17/magout.wav"},
		{time = 1.43, sound = "weapons/tokos/weapons/inss_scar17/magin.wav"},
		{time = 1.6, sound = "weapons/tokos/weapons/inss_scar17/maghit.wav"},
		{time = 1.98, sound = "weapons/tokos/weapons/inss_scar17/boltrel.wav"},
	},
}

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "Battle Rifles"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/inss_mk17/tokos_inss_mk17.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_sg552.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 500
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62X51MM"

SWEP.FireDelay = 60 / 600
SWEP.FireSound = "TOKOS_SCAR_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_SCAR_FIRE_SUPPRESSED"
SWEP.Recoil = 1.9



SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 1
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.008
SWEP.SpreadPerShot = 0.001
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 45
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadHalt = 2.5
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3

SWEP.SnapToIdlePostReload = false

--anim inspect later

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