local att = {}
att.name = "r_pbs1"
att.displayName = "PBS1 Suppresor"
att.displayNameShort = "PBS."
att.isSuppressor = true
att.SpeedDec = 9

att.statModifiers = {


RecoilMult = -0.25,
DamageMult = -0.15,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atticons/12gcan")
	att.description = {[1] = {t = "Heavy duty AK suppresor.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)