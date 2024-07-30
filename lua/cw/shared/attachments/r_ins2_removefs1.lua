local att = {}
att.name = "nofs"
att.displayName = "NO FRONT SIGHTS"
att.displayNameShort = "NO FS"
att.isBG = true



if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atticons/nofs")
	att.description = {[1] = {t = "Remove those frontsights.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
    self:setBodygroup(self.FrontBGs.main, self.FrontBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)