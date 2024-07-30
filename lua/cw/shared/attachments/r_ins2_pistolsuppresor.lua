local att = {}
att.name = "nato_pistolsup"
att.displayName = "Pistol Suppresor"
att.displayNameShort = "SUPP."
att.isSuppressor = true
att.SpeedDec = 1

att.statModifiers = {

	OverallMouseSensMult = -0.15,
RecoilMult = -0.20,
DamageMult = -0.05,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atticons/pistolcan")
	att.description = {[1] = {t = "Light duty suppresor for pistols.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)