AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1911"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_m1911")
	killicon.Add( "cwr_tokos_m1911", "vgui/entities/cwr_tokos_m1911", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	SWEP.Shell = "smallshell"
	
	SWEP.IronsightPos = Vector(-2.8, 0, 1.279)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(-0.5, -1, 0)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	

	
	SWEP.AttachmentModelsVM = {
		["pistollaser"] = { type = "Model", model = "models/tokos_weaponry/shared/tac/r_pistol_laser.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.5, 2.5), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["nato_pistolsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/r_pistol_suppresor.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.9, 4.849), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

	}



	
	
end

SWEP.MuzzleVelocity = 880 -- in meter/s



    SWEP.PistolLaserPosAdjust = Vector(0, 0, 0)
	SWEP.PistolLaserAngAdjust = Angle(0, 0, 0)



SWEP.Attachments = {
	 {header = "Muzzle Device", offset = {-100, -100}, atts = {"nato_pistolsup"}},
	 {header = "Tactical Device", offset = {-500, 100}, atts = {"pistollaser"}},
	["+reload"] = {header = "Ammo", offset = {0, 300}, atts = {"am_magnum", "am_matchgrade"}},
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
	fire_last_aim = "fire_empty",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.45, sound = "weapons/tokos/weapons/1911/m1911_magrelease.wav"},
		{time = 0.50, sound = "weapons/tokos/weapons/1911/m1911_magout.wav"},
		{time = 0.8, sound = "weapons/tokos/weapons/1911/m1911_magin.wav"},
		{time = 1, sound = "weapons/tokos/weapons/1911/m1911_maghit.wav"},
	},

	reload_empty = {
		{time = 0.34, sound = "weapons/tokos/weapons/1911/m1911_magrelease.wav"},
		{time = 0.40, sound = "weapons/tokos/weapons/1911/m1911_magout.wav"},
		{time = 1.35, sound = "weapons/tokos/weapons/1911/m1911_magin.wav"},
		{time = 1.45, sound = "weapons/tokos/weapons/1911/m1911_maghit.wav"},
		{time = 2, sound = "weapons/tokos/weapons/1911/m1911_boltrelease.wav"},
	},

	
}

SWEP.SpeedDec = 0

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "Pistols"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/1911/tokos_m1911.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_p228.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".45 ACP"

SWEP.FireDelay = 60 / 450
SWEP.FireSound = "TOKOS_M1911_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_M1911_FIRE_SUPPRESSED"
SWEP.Recoil = 1.5


SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.10
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.035
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.10
SWEP.Shots = 1
SWEP.Damage = 53
SWEP.DeployTime = 0.2

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.8
SWEP.ReloadHalt = 1.8
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadHalt_Empty = 2.6

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