--[[
Information:
Derpy Periwinkle created this Generator.
Thinking for generator - Some has been taken from RG Basewars. Reworked for Custom printers.
--]]
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local PrinterEntityList
local maxPrinters = 3
local newMaxPrinters = maxPrinters - 1
local UpgradeDelay = 0.5
function ENT:Initialize()
	self:SetModel("models/props_c17/TrapPropeller_Engine.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	phys:Wake()
	self.damage = 100
	self.isOn = true
	self.PoweredPrinters = {}
	self.connectedAmount = 0
	self.availableAmount = 0
	self.AllowedDistance = 400
	self:SetNWInt("connected_max", maxPrinters)
	self:SetNWInt("connected_amount", self.connectedAmount)
	self:SetNWInt("generator_status", self.isOn)
end

function ENT:OnTakeDamage(dmg)	
	self.damage = self.damage - dmg:GetDamage()

	if self.damage <= 0 then
		self:Remove()
	end
end

function ENT:Use ( activator, caller )
	if !IsValid( activator ) then return end
	if activator.NextUpgradeTime == nil then activator.NextUpgradeTime = CurTime() end
	if CurTime() < activator.NextUpgradeTime then return end
	
	self.isOn = !self.isOn
	
	self:EmitSound("vehicles/atv_ammo_open.wav", 25, 200)
	self:SetNWInt("generator_status", self.isOn)
	
	activator.NextUpgradeTime = CurTime() + UpgradeDelay
end

function ENT:OnRemove()
	for k, v in pairs(self.PoweredPrinters) do
		v:UnPower()
	end
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
end

function ENT:Touch( hitEnt )
end

function ENT:Think()
	self:NextThink(CurTime() + 1)
	local IsActive = self:GetNWInt("generator_status")
	
	if !IsActive then
		for k, v in pairs(self.PoweredPrinters) do
			if v:IsPowered() then
				self.PoweredPrinters[k] = nil
				v:UnPower()
				self.connectedAmount = self.connectedAmount - 1
			end
		end	
	else
		
		--Check if printers are NOT valid. Then remove them from the generator.
		self.availableAmount = 0
		for i = 1, maxPrinters, 1 do
			if !IsValid(self.PoweredPrinters[i]) and self.availableAmount != 3 then
				self.PoweredPrinters[i] = nil
				self.availableAmount = self.availableAmount + 1
			end
		end
		self.connectedAmount = maxPrinters - self.availableAmount 
		
		local TempTable = {}
		i = maxPrinters
		for k, v in pairs(self.PoweredPrinters) do
			if v:GetPos():Distance(self:GetPos()) <= self.AllowedDistance then
				TempTable[i] = v
				i = i - 1
			else
				v:UnPower()
				self.connectedAmount = maxPrinters - self.availableAmount 
			end
		end
		
		self.PoweredPrinters = {}
		for k, v in pairs(TempTable) do
			self.PoweredPrinters[k] = v
		end
		
		-- Check for printers (If it is acceptable) add it to the generator.
		
		if self.connectedAmount < maxPrinters then
			PrinterEntityList = ents.FindInSphere(self:GetPos(), self.AllowedDistance)
			for k, v in pairs(PrinterEntityList) do
				if v.IsCMoneyPrinter and !v:IsPowered() and table.Count(self.PoweredPrinters) < maxPrinters then
					if !table.HasValue( self.PoweredPrinters, v ) then
						table.insert( self.PoweredPrinters, v )
						self.connectedAmount = self.connectedAmount + 1
					end
				end
			end	
		end 
		
		for k, v in pairs(self.PoweredPrinters) do
			if !v:IsPowered() then
				v:Power()
			end
		end
	end
	
	self:SetNWInt("connected_amount", self.connectedAmount)
	return true
end
