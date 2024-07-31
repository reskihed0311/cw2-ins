local att = {}
att.name = "natoheavysup"
att.displayName = "NATO Light Suppresor"
att.displayNameShort = "SUPP. LITE"
att.isSuppressor = true
att.SpeedDec = 1

att.statModifiers = {

	OverallMouseSensMult = -0.15,
RecoilMult = -0.50,
DamageMult = -0.15,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atticons/12gcan")
	att.description = {[1] = {t = "Heavy , mutlicaliber suppresor for NATO calibers.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)