local att = {}
att.name = "natolightsup"
att.displayName = "NATO Light Suppresor"
att.displayNameShort = "SUPP. LITE"
att.isSuppressor = true
att.SpeedDec = 1

att.statModifiers = {

	OverallMouseSensMult = -0.05,
RecoilMult = -0.10,
DamageMult = -0.05,
MaxSpreadIncMult = -0.10,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atticons/nato_lightsup")
	att.description = {[1] = {t = "Light , mutlicaliber suppresor for NATO calibers.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)