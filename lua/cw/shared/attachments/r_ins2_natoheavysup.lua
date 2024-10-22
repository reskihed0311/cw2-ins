local att = {}
att.name = "natoheavysup"
att.displayName = "NATO Heavy Suppresor"
att.displayNameShort = "SUPP. HEAVY"
att.isSuppressor = true
att.SpeedDec = 10

att.statModifiers = {


RecoilMult = -0.35,
DamageMult = -0.25,
MaxSpreadIncMult = -0.20,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atticons/nato_heavysup")
	att.description = {[1] = {t = "Heavy , mutlicaliber suppresor for NATO calibers.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)