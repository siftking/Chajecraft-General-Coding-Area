ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Coolant Cell"
ENT.Author = "Koolaidmini"
ENT.Spawnable = false
ENT.AdminSpawnable = false

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "price")
	self:NetworkVar("Entity", 0, "owning_ent")
end
