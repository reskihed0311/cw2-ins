AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP5-K"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_mp5k")
	killicon.Add( "cwr_tokos_mp5k", "vgui/entities/cwr_tokos_mp5k", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.Shell = "smallshell"
	
	SWEP.IronsightPos = Vector(-2.945, -5.611, 0.639)
	SWEP.IronsightAng = Vector(0, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.M4Pos = Vector(-2.961, -5.362, -0.401)
    SWEP.M4Ang = Vector(0, 0, 0)

	SWEP.RKOBRAPos = Vector(-2.961, -5.362, -0.23)
    SWEP.RKOBRAAng = Vector(0, 0, 0)

	SWEP.SightWithRail = true

	
	SWEP.AttachmentModelsVM = {

		
         ["md_rail"] = { type = "Model", model = "models/tokos_weaponry/shared/mounts/modkit_mp5.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.991, 0.407), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
      	["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.488, 0.246), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["nato_pistolsup"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/r_pistol_suppresor.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.448, 8.399), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.488, 0.246), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}



	
	
end

SWEP.MuzzleVelocity = 200-- in meter/s







SWEP.Attachments = {
	{header = "Optic ", offset = {450, -250}, atts = {"rdsc", "rkobra"}},
	{header = "Muzzle Device", offset = {-100, -100}, atts = {"nato_pistolsup"}},
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
end //*/

SWEP.Animations = {

    idle = "idle",
	fire = "fire",
	inspect = "inspect",
	fire_aim = "fire_iron",
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.3, sound = "weapons/tokos/weapons/mp5k/mp5k_magrelease.wav"},
		{time = 0.4, sound = "weapons/tokos/weapons/mp5k/mp5k_magout.wav"},
		{time = 1.65, sound = "weapons/tokos/weapons/mp5k/mp5k_magin.wav"},
	},

	reload_empty = {
		{time = 0.25, sound = "weapons/tokos/weapons/mp5k/mp5k_boltback.wav"},
		{time = 1.35, sound = "weapons/tokos/weapons/mp5k/mp5k_magout.wav"},
		{time = 1.75, sound = "weapons/tokos/weapons/mp5k/mp5k_magin.wav"},
		{time = 2.4, sound = "weapons/tokos/weapons/mp5k/mp5k_boltrelease.wav"},
	},

	inspect = {

		{time = 2.35, sound = "weapons/tokos/weapons/mp5k/mp5k_magout.wav"},
		{time = 4.6, sound = "weapons/tokos/weapons/mp5k/mp5k_magin.wav"},



	}
}

SWEP.SpeedDec = 0

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
SWEP.ViewModel		= "models/tokos_weaponry/mp5k/tokos_mp5k.mdl"
SWEP.WorldModel		= "models/weapons/w_smg_mp5.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 60 / 800
SWEP.FireSound = "TOKOS_MP5K_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_MP5K_FIRE_SUPPRESSED"
SWEP.Recoil = 0.65


SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.10
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.010
SWEP.SpreadPerShot = 0.001
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 29

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadHalt = 2.5
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt_Empty = 3.5
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