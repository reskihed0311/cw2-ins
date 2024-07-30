local att = {}
att.name = "sec_vfg"
att.displayName = "Vertical Foregrip SEC"
att.displayNameShort = "VFG"

att.statModifiers = {VelocitySensitivityMult = -0.1,
DrawSpeedMult = -0.1,
SpreadPerShotMult = -0.1,
OverallMouseSensMult = -0.05,
RecoilMult = -0.05} 



--balance this

function att:attachFunc()

self.ForegripOverride = true
    self.ForegripParent = "vfg"
end


function att:detachFunc()

    self.ForegripOverride = true
    self.ForegripParent = "default"
end


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_bruentiltgrip")
end

CustomizableWeaponry:registerAttachment(att)