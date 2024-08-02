AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "UMP-45"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_ump45")
	killicon.Add( "cwr_tokos_ump45", "vgui/entities/cwr_tokos_ump45", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.Shell = "smallshell"
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.88
	
	
	SWEP.IronsightPos = Vector(-2.593, -5.047, 0.68)
	SWEP.IronsightAng = Vector(0.344, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-2.6, -6.652, 0.2)
    SWEP.M4Ang = Vector(0, 0, 0)

	SWEP.REOTECHPos = Vector(-2.6, -6.652, 0.2)
    SWEP.REOTECHAng = Vector(0, 0, 0)

	SWEP.RKOBRAPos = Vector(-2.6, -6.652, 0.3)
    SWEP.RKOBRAAng = Vector(0, 0, 0)

	SWEP.ELCPos = Vector(-2.6, -4, -0.45)
    SWEP.ELCAng = Vector(0, 0, 0)

	
	SWEP.RACOGPos = Vector(-2.6, -5, -0.15)
    SWEP.RACOGAng = Vector(0, 0, 0)

	SWEP.BackupSights = {["relcan"] = {[1] = Vector(-2.6, -4, -1.75), [2] = Vector(0, 0, 0)}}

	SWEP.SightWithRail = false

	
	SWEP.AttachmentModelsVM = {

		["sec_vfg"] = { type = "Model", model = "models/tokos_weaponry/shared/grips/a_foregrip_sec.mdl", bone = "weapon", rel = "", pos = Vector(0, 0.56, 6.979), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
      	["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.062, -0.098), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["nato_pistolsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/r_pistol_suppresor.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.4, 10), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.062, -0.098), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.062, -0.098), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["relcan"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eclan.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.062, -0.098), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["racog"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/acog.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.062, -0.098), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}

	SWEP.ForegripOverridePos = {

		["default"] = {},

		["vfg"] = {

			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-21.129, -83.262, 0) },
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.966, 2.255, -1.055), angle = Angle(0, 0, 0) },
			["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15.75, -2.261, 39.21) },
			["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(9.385, 27.097, 0) },
			["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -73.558, 0) },
			["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(11.491, -43.044, 20.35) },
			["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 55.583, 0) },
			["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-19.379, 6.153, 28.325) }
		

		},
}

	
	
end

SWEP.MuzzleVelocity = 5000-- in meter/s







SWEP.Attachments = {
	{header = "Optic ", offset = {450, -250}, atts = {"rdsc",  "reotech","rkobra", "racog","relcan"}},
	{header = "Muzzle Device", offset = {-100, -100}, atts = {"nato_pistolsup"}},
	{header = "Handguard", offset = {-500,150}, atts = {"sec_vfg"}},
   ["+reload"] = {header = "Ammo", offset = {100, 600}, atts = {"am_magnum", "am_matchgrade"}},
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

    idle = "idle",
	fire = "fire",
	fire_last = "fire_empty",
	fire_last_aim = "fire_empty",
	inspect = "inspect",
	fire_aim = "fire_iron",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.42, sound = "weapons/tokos/weapons/ump45/ump45_magrelease.wav"},
		{time = 0.55, sound = "weapons/tokos/weapons/ump45/ump45_magout.wav"},
		{time = 1.15, sound = "weapons/tokos/weapons/ump45/ump45_magin.wav"},

	},

	reload_empty = {
		{time = 0.25, sound = "weapons/tokos/weapons/ump45/ump45_magrelease.wav"},
		{time = 0.30, sound = "weapons/tokos/weapons/ump45/ump45_magout.wav"},
		{time = 1.53, sound = "weapons/tokos/weapons/ump45/ump45_magin.wav"},
		{time = 1.95, sound = "weapons/tokos/weapons/ump45/ump45_boltrelease.wav"},
	},
}

SWEP.SpeedDec = 0

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "Sub-Machine Guns"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/ump45/tokos_ump45.mdl"
SWEP.WorldModel		= "models/weapons/w_smg_ump45.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 25
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ".45 ACP"

SWEP.FireDelay = 60 / 800
SWEP.FireSound = "TOKOS_UMP45_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_UMP45_FIRE_SUPPRESSED"
SWEP.Recoil = 1


SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.10
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.090
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 42

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadHalt = 2.3
SWEP.ReloadTime_Empty = 2.65
SWEP.ReloadHalt_Empty = 2.65
SWEP.DeployTime = 0.6

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