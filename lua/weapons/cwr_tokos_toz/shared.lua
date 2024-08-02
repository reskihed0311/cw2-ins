AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
    SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "IZH Toz"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
    SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_tokos_toz")
	killicon.Add( "cwr_tokos_m4a1", "vgui/entities/cwr_tokos_toz", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.Shell = "shotshell"
	SWEP.ShellDelay = 0.3
    SWEP.SnapToIdlePostReload = false
	 
	SWEP.SightWithRail = true

	SWEP.AttachmentModelsVM = {

["md_rail"] = { type = "Model", model = "models/tokos_weaponry/shared/mounts/modkit_7.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.813, -2.349), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["rkobra"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.943, -2.774), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["rdsc"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/shared_aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.943, -2.774), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
        ["laserband"] = { type = "Model", model = "models/tokos_weaponry/shared/tac/12g_laserband.mdl", bone = "weapon", rel = "", pos = Vector(1.123, -0.109, 12.487), angle = Angle(90, 90, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

		["12g_suppresor"] = { type = "Model", model = "models/tokos_weaponry/shared/muzzledevices/12g_can.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.528, 22.047), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["reotech"] = { type = "Model", model = "models/tokos_weaponry/shared/optics/eotech.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.943, -2.774), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },


	}

	SWEP.REOTECHPos = Vector(-3.161, -4.84, 0.168)
	SWEP.REOTECHAng = Vector(0, 0, 0)
	SWEP.M4Pos = Vector(-3.161, -4.84, 0.168)
	SWEP.M4Ang = Vector(0, 0, 0)
	SWEP.RKOBRAPos = Vector(-3.161, -4.84, 0.3)
	SWEP.RKOBRAAng = Vector(0, 0, 0)

	
end

SWEP.MuzzleVelocity = 381 -- in meter/s
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


SWEP.IronsightPos = Vector(-3.149, -4.845, 1.32)
SWEP.IronsightAng = Vector(0, 0, 0)




SWEP.LaserBandPosAdjust = Vector(0, 0, -1)
SWEP.LaserBandAngAdjust = Angle(0, 0, 0)


SWEP.Attachments = {
	{header = "Upper Rail", offset = {750, -50}, atts = {"rdsc", "reotech","rkobra"}},
	{header = "Muzzle Device", offset = {-200, 300}, atts = {"12g_suppresor"}},
	{header = "Muzzle Tactical Device", offset = {0, 0}, atts = {"laserband"}},
	["+reload"] = {header = "Ammo", offset = {450, 500}, atts = {"am_slugrounds", "am_flechetterounds"}},
}



    SWEP.Animations = {

        idle = "reload_end",
        fire = "fire",
        fire_last = "fire",
        fire_aim = "fire_iron",
        fire_last_aim = "fire",
        inspect = "inspect",
        reload_start = "reload_start",
        reload_end = "reload_end",
        insert = "shell_loop",
        reload_start_empty = "reload_start_empty",
        draw = "draw",
    }
        
    SWEP.Sounds = {

        fire = {
            {time = 0.18, sound = "TOZ_PUMPBACK"},
            {time = 0.35, sound = "TOZ_PUMPFWD"},
        },
        fire_iron = {
            {time = 0.18, sound = "TOZ_PUMPBACK"},
            {time = 0.35, sound = "TOZ_PUMPFWD"},
        },
        shell_loop = {
            {time = 0, sound = "weapons/tokos/weapons/toz/toz_shell_insert_1.wav"},
        },

        reload_start_empty = {
            {time = 0.15, sound = "weapons/tokos/weapons/toz/toz_pumpback.wav"},
            {time = 0.8, sound = "weapons/tokos/weapons/toz/toz_single_shell_insert_1.wav"},
            {time = 1.3, sound = "weapons/tokos/weapons/toz/toz_pumpforward.wav"},
        },
    
        inspect = {
            {time = 2.5, sound = "weapons/tokos/weapons/toz/toz_pumpback.wav"},
            {time = 3.5, sound = "weapons/tokos/weapons/toz/toz_pumpforward.wav"},
        },
    
    }


SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_base"
SWEP.Category = "[CW 2.0] Tokoyami's Weaponry"
SWEP.SubCategory = "Shotguns"
SWEP.FireAnimSpeed = 1

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/tokos_weaponry/toz/tokos_toz.mdl"
SWEP.WorldModel		= "models/weapons/w_shot_m3super90.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.7 / 1.65
SWEP.FireSound = "TOKOS_TOZ_FIRE"
SWEP.FireSoundSuppressed = "TOKOS_TOZ_FIRE_SUPPRESSED"
SWEP.Recoil = 3

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.06
SWEP.ClumpSpread = 0.03
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.8
SWEP.Shots = 15
SWEP.Damage = 12
SWEP.DeployTime = 0.8
SWEP.ReloadStartTime_Empty = 2
SWEP.ReloadStartTime = 0.3
SWEP.InsertShellTime = 0.65
SWEP.ReloadFinishWait = 1
SWEP.PumpMidReloadWait = 0.6
SWEP.ShotgunReload = true
SWEP.NearWallDistance = 30

SWEP.Chamberable = false 


function SWEP:beginReload()
	mag = self:Clip1()
	
	if self.ShotgunReload then
	
		CT = CurTime()
		
		if mag == 0 then
			local time = CT + self.ReloadStartTime_Empty / self.ReloadSpeed
		
			self.WasEmpty = mag == 0
			self.ReloadDelay = time
			self:SetNextPrimaryFire(time)
			self:SetNextSecondaryFire(time)
			self.GlobalDelay = time
			self.ShotgunReloadState = 1
			self.ForcedReloadStop = false
			
			self:TakePrimaryAmmo(1)
			self:sendWeaponAnim("reload_start_empty", self.ReloadSpeed)
			self:SetClip1(1)
		else
			local time = CT + self.ReloadStartTime / self.ReloadSpeed
		
			self.WasEmpty = mag == 0
			self.ReloadDelay = time
			self:SetNextPrimaryFire(time)
			self:SetNextSecondaryFire(time)
			self.GlobalDelay = time
			self.ShotgunReloadState = 1
			self.ForcedReloadStop = false
		
			self:sendWeaponAnim("reload_start", self.ReloadSpeed)
		end
		
	else	
		local reloadTime = nil
		local reloadHalt = nil
		
		if mag == 0 then
			if self.Chamberable then
				self.Primary.ClipSize = self.Primary.ClipSize_Orig
			end
			
			reloadTime = self.ReloadTime_Empty
			reloadHalt = self.ReloadHalt_Empty
		else
			reloadTime = self.ReloadTime
			reloadHalt = self.ReloadHalt
			
			if self.Chamberable then
				self.Primary.ClipSize = self.Primary.ClipSize_Orig + 1
			end
		end
		
		reloadTime = reloadTime / self.ReloadSpeed
		reloadHalt = reloadHalt / self.ReloadSpeed
		
		self.ReloadDelay = CT + reloadTime
		self:SetNextPrimaryFire(CT + reloadHalt)
		self:SetNextSecondaryFire(CT + reloadHalt)
		self.GlobalDelay = CT + reloadHalt
				
		if self.reloadAnimFunc then
			self:reloadAnimFunc(mag)
		else
			if self.Animations.reload_empty and mag == 0 then
				self:sendWeaponAnim("reload_empty", self.ReloadSpeed)
			else
				self:sendWeaponAnim("reload", self.ReloadSpeed)
			end
		end
	end
	
	CustomizableWeaponry.callbacks.processCategory(self, "beginReload", mag == 0)
	
	self.Owner:SetAnimation(PLAYER_RELOAD)
end


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