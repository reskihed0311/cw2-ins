AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


CustomizableWeaponry:registerAmmo(".38 Special", ".38 Special", 9, 6)


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Model .38"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_38revolver")
	killicon.Add( "cwr_tokos_38revolver", "vgui/entities/cwr_tokos_38revolver", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	SWEP.Shell = "smallshell"
	
	SWEP.IronsightPos = Vector(-3.401, -6.353, 1.2)
	SWEP.IronsightAng = Vector(-1.535, 0, 0)

	
	SWEP.AlternativePos = Vector(0, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	


	
	SWEP.AttachmentModelsVM = {}



	
	
end

SWEP.MuzzleVelocity = 880 -- in meter/s



SWEP.Chamberable = false



SWEP.Attachments = {
	["+reload"] = {header = "Ammo", offset = {900, -100}, atts = {"am_magnum", "am_matchgrade"}}
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
	fire_aim = "fire",
	fire_last_aim = "fire",
	inspect = "inspect",
	reload = "reload",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload = {
		{time = 0.45, sound = "weapons/tokos/weapons/38rev/revolver_open_chamber.wav"},
		{time = 0.95, sound = "weapons/tokos/weapons/38rev/revolver_dump_rounds_02.wav"},
		{time = 1.8, sound = "weapons/tokos/weapons/38rev/revolver_speed_loader_insert_01.wav"},
		{time = 2.7, sound = "weapons/tokos/weapons/38rev/revolver_close_chamber.wav"},
	},

	draw = {
		{time = 0, sound = "weapons/tokos/shared/whoosh.wav"},
	},

	inspect = {

		{time = 2.7, sound = "weapons/tokos/weapons/38rev/revolver_open_chamber.wav"},
		{time = 7.1, sound = "weapons/tokos/weapons/38rev/revolver_close_chamber.wav"},


	}
}

SWEP.SpeedDec = 0

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "all"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/38revolver/tokos38revolver.mdl"
SWEP.WorldModel		= "models/weapons/w_357.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".38 Special"

SWEP.FireDelay = 60 / 250
SWEP.FireSound = "TOKOS_38_FIRE"
SWEP.Recoil = 3


SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.5

SWEP.HipSpread = 0.10
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.010
SWEP.SpreadPerShot = 0.001
SWEP.SpreadCooldown = 0.05
SWEP.Shots = 1
SWEP.Damage = 60
SWEP.DeployTime = 0.2

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