AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.SeizeReward = 350

function ENT:Initialize()
	self:SetModel("models/Gibs/Antlion_gib_Large_2.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	self.CanUse = true
	self.ShareGravgun = true
end

function ENT:Use(activator,caller)
	player.GetByID( 1 ):GiveAmmo( 20, "ammo_vortenergy", false )
	self:EmitSound("vo/SandwichEat09.wav", 500, 100)
	self:Remove()
end
