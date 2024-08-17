AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AUG A3"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_aug")
	killicon.Add( "cwr_tokos_aug", "vgui/entities/cwr_tokos_aug", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ots"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 3, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.90
	
	
	SWEP.IronsightPos = Vector(-3.86, -11.152, -0.281)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-3.84, -12.013, 0.119)
    SWEP.M4Ang = Vector(0, 0, 0)

	
	SWEP.REOTECHPos = Vector(-3.84, -12.316, 0.212)
    SWEP.REOTECHAng = Vector(0, 0, 0)

	SWEP.ELCPos = Vector(-3.84, -12.468, -0.486)
    SWEP.ELCAng = Vector(0, 0, 0)
	SWEP.BackupSights = {["relcan"] = {[1] = Vector(-3.84, -12.468, -1.81), [2] = Vector(0, 0, 0)}}


	SWEP.RACOGPos = Vector(-3.84, -12.468, -0.201)
    SWEP.RACOGAng = Vector(0, 0, 0)

	SWEP.RKOBRAPos = Vector(-3.84, -12.506, 0.252)
    SWEP.RKOBRAAng = Vector(0, 0, 0)

	SWEP.LPVOPos = Vector(-3.84, -12.506, -0.232)
	SWEP.LPVOAng = Vector(0, 0, 0)
	
	
	SWEP.AttachmentModelsVM = {

["ranpeq"] = { type = "Model", model = "models/tokos_weaponry/shared/tac/a_laser_peq15.mdl", bone = "weapon", rel = "", pos = Vector(-1.576, -2.756, 4.375), angle = Angle(90, 45, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["natoheavysup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_heavysup.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.4, 12.5), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["natolightsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/nato_lightsup.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.4, 12.5), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.789, 1.84), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["sec_vfg"] = { type = "Model", model = "models/tokos_weaponry/shared/grips/a_foregrip_sec.mdl", bone = "weapon", rel = "", pos = Vector(0, 0, 7.659), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.789, 1.84), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.789, 1.84), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["relcan"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eclan.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.789, 1.84), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["racog"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/acog.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.789, 1.84), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rlpvo"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/inss_lpvo.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.789, 1.84), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	
	}

	
	


	
end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.RPEQPosAdjust = Vector(-0.5, 0, 0)
SWEP.RPEQLaserAngAdjust = Angle(0, 0, 0)


SWEP.SightBGs = {main = 1 , regular = 0 , none = 1}




SWEP.Attachments = {
	{header = "Upper Rail", offset = {900, -100}, atts = {"rdsc", "reotech","rkobra", "racog","relcan", "rlpvo"}},
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
	inspect = "inspect",
	fire_aim = "fire_iron",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.6, sound = "weapons/tokos/weapons/aug/magrel.wav"},
		{time = 0.68, sound = "weapons/tokos/weapons/aug/magout.wav"},
		{time = 1.1, sound = "weapons/tokos/weapons/aug/magin.wav"},
	},

	reload_empty = {
		{time = 0.2, sound = "weapons/tokos/weapons/aug/magrel.wav"},
		{time = 0.35, sound = "weapons/tokos/weapons/aug/magout.wav"},
		{time = 1.5, sound = "weapons/tokos/weapons/aug/magin.wav"},
		{time = 2.23, sound = "weapons/tokos/weapons/aug/chargingpull.wav"},
		{time = 2.40, sound = "weapons/tokos/weapons/aug/chargingrel.wav"},
	},

	
}

SWEP.SpeedDec = 70

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
SWEP.ViewModel		= "models/tokos_weaponry/auga3/tokos_auga3.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 500
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 700
SWEP.FireSound = "TOKOS_AUG_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_AUG_FIRE_SUPPRESSED"
SWEP.Recoil = 0.95



SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.50
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.005
SWEP.SpreadPerShot = 0.0001
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 31
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