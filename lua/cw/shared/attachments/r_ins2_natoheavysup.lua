local att = {}
att.name = "natoheavysup"
att.displayName = "NATO Heavy Suppresor"
att.displayNameShort = "SUPP. HEAVY"
att.isSuppressor = true
att.SpeedDec = 1

att.statModifiers = {

	OverallMouseSensMult = -0.15,
RecoilMult = -0.35,
DamageMult = -0.20,
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