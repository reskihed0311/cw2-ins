local att = {}
att.name = "12g_suppresor"
att.displayName = "12G Suppresor"
att.displayNameShort = "SUPP."
att.isSuppressor = true
att.SpeedDec = 5

att.statModifiers = {

RecoilMult = -0.40,
DamageMult = -0.10,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atticons/12gcan")
	att.description = {[1] = {t = "Heavy duty suppresor forshotguns.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)