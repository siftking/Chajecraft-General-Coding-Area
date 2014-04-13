AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/hunter/blocks/cube025x025x025.mdl")
	self:SetMaterial("phoenix_storms/wire/pcb_green")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	self.damage = 100
	phys:Wake()
	self.IsCoolingPlate = true
end

function ENT:OnTakeDamage(dmg)
	
	self.damage = self.damage - dmg:GetDamage()

	if self.damage <= 0 then
		self:Remove()
	end
end

function ENT:Touch( hitEnt )	
	if !IsValid( hitEnt ) then return end
	if hitEnt.HasCoolingPlate then return end
	if hitEnt:GetClass() != "upgrade_money_printer" then return end

	self.Selected = hitEnt
end

function ENT:Think()

end
