AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
include("AddUpgrades.lua")
include("language.lua")

ENT.SeizeReward = 950

local PrintMore
local UpgradeDelay = 1
local MaxUseDistance = 95
local RepairCost = 250
-- level, upgradecost, printamount, printtime, overheatchance, health, rank
local PrinterCurrentLevelData = { }
local PrinterNextLevelData = { }

local function GetMPLevelData(ent)
	local PrinterLevel = ent:GetNetworkedInt( "printer_level", 1 )
	for k,v in pairs( UpgradePrinterLevels ) do
		if v.lvl == PrinterLevel then
			PrinterCurrentLevelData.level = v.lvl 
			PrinterCurrentLevelData.upgradecost = v.ucost 
			PrinterCurrentLevelData.printamount = v.pa 
			PrinterCurrentLevelData.printtime = v.pt 
			PrinterCurrentLevelData.overheatchance = v.ohc 
			PrinterCurrentLevelData.health = v.h 
			PrinterCurrentLevelData.rank = v.rank 
			
			ent:SetNWInt("printer_level", PrinterCurrentLevelData.level)
			ent:SetNWInt("printer_upgradecost", PrinterCurrentLevelData.upgradecost)
			ent:SetNWInt("printer_printamount", PrinterCurrentLevelData.printamount)	
			ent:SetNWInt("printer_printtime", PrinterCurrentLevelData.printtime)
			ent:SetNWInt("printer_overheatchance", PrinterCurrentLevelData.overheatchance)				
			return
		end
	end
end

local function GetMPUpgradeData(ent)
	local PrinterLevel = ent:GetNetworkedInt( "printer_level" )
	for k,v in pairs( UpgradePrinterLevels ) do
		if v.lvl == PrinterLevel + 1 then
			PrinterNextLevelData = {}
			PrinterNextLevelData.level = v.lvl 
			PrinterNextLevelData.upgradecost = v.ucost 
			PrinterNextLevelData.printamount = v.pa 
			PrinterNextLevelData.printtime = v.pt 
			PrinterNextLevelData.overheatchance = v.ohc 
			PrinterNextLevelData.health = v.h 
			PrinterNextLevelData.rank = v.rank
			
			ent:SetNWInt("Nprinter_level", PrinterNextLevelData.level)
			ent:SetNWInt("Nprinter_upgradecost", PrinterNextLevelData.upgradecost)
			return
		end
	end
end

function ENT:Initialize()
	self:SetModel("models/props_c17/consolebox01a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	
	self:SetUseType(SIMPLE_USE)
	
	GetMPLevelData(self)
	GetMPUpgradeData(self)
	if table.Count( PrinterCurrentLevelData ) > 0 then

	end
	
	self:SetNWInt( "printer_malfunction", false )
	self.sparking = false
	self.IsCMoneyPrinter = true

	self:SetNWInt( "printer_coolingplate", false )
	self:SetNWInt( "printer_maxlevel", table.Count( UpgradePrinterLevels ) )
	
	self.damage = PrinterCurrentLevelData.health
		self:SetNWInt("printer_hp", self.damage)

	self:SetNWInt("powered", false)
	phys:Wake()	
	
	local PrintTime = self:GetNetworkedInt( "printer_printtime" )
	timer.Simple( PrintTime, function() PrintMore(self) end )	
end

function ENT:OnTakeDamage(dmg)
	
	if self.burningup then return end

	self.damage = (self.damage or 100) - dmg:GetDamage()
	self:SetNWInt( "printer_hp", self.damage )
	if self.damage <= 0 then
		self.damage = 0
		self:SetNWInt( "printer_hp", self.damage )
		self:Destruct()
		self:Remove()
	end
end

function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
	GAMEMODE:Notify(self:Getowning_ent(), 1, 4, DCL_UP.printer_exploded)
end

function ENT:BurstIntoFlames()
	GAMEMODE:Notify(self:Getowning_ent(), 0, 4, DCL_UP.printer_overheat)
	self.burningup = true
	local burntime = math.random(8, 18)
	self:Ignite(burntime, 0)
	timer.Simple(burntime, function() self:Fireball() end)
end

function ENT:Fireball()
	if not self:IsOnFire() then self.burningup = false return end
	local dist = math.random(20, 280)
	self:Destruct()
	for k, v in pairs(ents.FindInSphere(self:GetPos(), dist)) do
		if not v:IsPlayer() and not v:IsWeapon() and v:GetClass() ~= "predicted_viewmodel" and not v.IsMoneyPrinter then
			v:Ignite(math.random(5, 22), 0)
		elseif v:IsPlayer() then
			local distance = v:GetPos():Distance(self:GetPos())
			v:TakeDamage(distance / dist * 100, self, self)
		end
	end
	self:Remove()
end

PrintMore = function(ent)
	if !IsValid(ent) then return end
	if ent:GetNetworkedInt("powered") then ent.sparking = true end
	timer.Simple(3, function()
		if not IsValid(ent) then return end
		ent:CreateMoneybag()
	end)
end

function ENT:CreateMoneybag()
	self.sparking = false
	local powered = self:GetNetworkedInt("powered")
	local Printamount = self:GetNetworkedInt( "printer_printamount" )
	local PrintTime = self:GetNetworkedInt( "printer_printtime" )
	local OHC = self:GetNetworkedInt( "printer_overheatchance" )
	local CP = self:GetNetworkedInt( "printer_coolingplate" )
	
	if not IsValid(self) or self:IsOnFire() then return end

	if powered then
		local IsMalfunctioning = self:GetNetworkedInt( "printer_malfunction" )
		local Selection = math.random( 1, 100 )
		local SelectedNumbers = {}
		for i = 1, OHC, 1 do
			local rand = math.random( 1, 100 )
			while table.HasValue( SelectedNumbers, rand ) do
				rand = math.random( 1, 100 )
			end
			if !table.HasValue( SelectedNumbers, rand ) then
				table.insert( SelectedNumbers, rand )
			end
		end
		
		for k, v in pairs( SelectedNumbers ) do
			if v == 1 then 
				if CP then
					self:SetNWInt( "printer_malfunction", true )
					GAMEMODE:Notify( self:Getowning_ent(), 1, 4, DCL_UP.printer_malfunction .. RepairCost .. "." )
				else
					self:BurstIntoFlames()
					return
				end
			end
		end
		if !IsMalfunctioning then
			local MoneyPos = self:GetPos()
			DarkRPCreateMoneyBag( Vector(MoneyPos.x + 15, MoneyPos.y, MoneyPos.z + 15), Printamount )
		end
	end
	timer.Simple( PrintTime, function() PrintMore(self) end )
end

function ENT:Touch( hitEnt )
	local CP = self:GetNetworkedInt( "printer_coolingplate" )
	if !IsValid( hitEnt ) then return end
	if hitEnt.IsCoolingPlate then
		if CP or !(hitEnt.Selected == self) then return end
		if hitEnt.WaitTime == nil then hitEnt.WaitTime = CurTime() end
		if !(hitEnt.WaitTime < CurTime()) then return end

		hitEnt:Remove()
		self:SetNWInt("printer_coolingplate", true)
	end
end

concommand.Add( "printer_add_totalupgrade", function( ply, cmd, args )
	local printer = ply.LastUsedMP;
	local MaxPL = table.Count( UpgradePrinterLevels )
	local PrinterLevel = printer:GetNetworkedInt( "printer_level" )
	local ReqRank = PrinterNextLevelData.rank
	local UpgradeCost = printer:GetNetworkedInt( "Nprinter_upgradecost" )
	local IsApp = false
		
	if printer.burningup then return end
		
	if ply.NextUpgradeTime == nil then
		ply.NextUpgradeTime = CurTime() - 1
	end
	
	if CurTime() < ply.NextUpgradeTime then return end
		
	if printer:GetPos():Distance(ply:GetPos()) > MaxUseDistance then
		GAMEMODE:Notify(ply, 1, 4, DCL_UP.printer_upgrade_toofaraway)
		return
	end
	
	local UG = ply:GetNetworkedInt( "UserGroup" )
	if !table.HasValue( GroupsWhoBypassAllPermissions, "*" ) then
		if !table.HasValue( GroupsWhoBypassAllPermissions, UG ) then
			if !table.HasValue( ReqRank, "*" ) then		
				if !table.HasValue( ReqRank, UG ) then GAMEMODE:Notify( ply, 1, 4, DCL_UP.printer_upgrade_noperm .. (PrinterLevel + 1) .. "." ) return end
			end
		end
	end
	
	if PrinterLevel >= MaxPL then
		GAMEMODE:Notify(ply, 0, 4, DCL_UP.printer_upgrade_max)
		return
	end
	
	if !ply:CanAfford(UpgradeCost) then
		GAMEMODE:Notify(ply, 0, 4, DCL_UP.printer_upgrade_cantafford .. PrinterLevel + 1 .. ".")
		return
	end
		
	// 1. Deduct Money.
	ply:AddMoney(-UpgradeCost)
	// 2. Re-Set the printer's Level.
	printer:SetNWInt( "printer_level", PrinterLevel + 1 )
	// 3. A Retrieve new printer data.
	GetMPLevelData(printer)
	GetMPUpgradeData(printer)
	// 4. Set new printer Health.
	printer.damage = PrinterCurrentLevelData.health
		printer:SetNWInt("printer_hp", printer.damage)
	// 3. B Send max level to client.
	printer:SetNWInt( "printer_maxlevel", table.Count( UpgradePrinterLevels ) )
	// 5. Notify the player of the upgrade.
	GAMEMODE:Notify(ply, 0, 4, DCL_UP.printer_upgrade_success .. PrinterLevel + 1 .. ".")
	// 6. Set their next use time.
	ply.NextUpgradeTime = CurTime() + UpgradeDelay
	IsApp = false
end );

concommand.Add( "printer_eject_cooler", function( ply, cmd, args )
	local printer = ply.LastUsedMP;
	local CP = printer:GetNetworkedInt( "printer_coolingplate" )
	
	if ( IsValid(printer) and printer:GetClass() == "upgrade_money_printer" ) then
		
		if printer:GetPos():Distance( ply:GetPos() ) > MaxUseDistance then
			GAMEMODE:Notify(ply, 1, 4, DCL_UP.printer_upgrade_toofaraway)
			return
		end
		
		if !CP then GAMEMODE:Notify( ply, 1, 4, DCL_UP.printer_upgrade_nocoolingplate ) return end
		local ent = ents.Create( "upgrade_coolingplate" )
		ent:SetPos( printer:GetPos() + Vector( 0,0,2 ) )
		ent.WaitTime = CurTime() + 3
		ent:Spawn()
		
		GAMEMODE:Notify( ply, 1, 4, DCL_UP.printer_upgrade_unistalledcoolingplate )
		printer:SetNWInt( "printer_coolingplate", false )
	end
end );

concommand.Add( "printer_repair", function( ply, cmd, args )
	local printer = ply.LastUsedMP;
	local IsMalfunctioning = printer:GetNetworkedInt( "printer_malfunction" )
	
	if ( !IsValid(printer) and printer:GetClass() != "upgrade_money_printer" ) then return end
	
	if printer:GetPos():Distance(ply:GetPos()) > MaxUseDistance then
		GAMEMODE:Notify(ply, 1, 4, DCL_UP.printer_upgrade_toofaraway)
		return
	end
	
	if !IsMalfunctioning then GAMEMODE:Notify( ply, 1, 4, DCL_UP.printer_repair_noneed ) return end
	
	if !ply:CanAfford( RepairCost ) then return end
	
	ply:AddMoney( -RepairCost )
	
	GAMEMODE:Notify( ply, 1, 4, DCL_UP.printer_repair_success )
	
	printer:SetNWInt( "printer_malfunction", false )
end );

function ENT:Power()
	self:SetNWInt("powered", true)
end

function ENT:UnPower()
	self:SetNWInt("powered", false)
	
end

function ENT:IsPowered()
	return self:GetNetworkedInt("powered")
end

function ENT:Use( activator, caller )

	if self.burningup then return end
	
	if !IsValid( activator ) then return end
	
	if activator.Printer_UseStage == 0 then
		activator.Printer_UseStage_Time = CurTime() + 2
	end

	if activator.Printer_UseStage == nil then activator.Printer_UseStage = 0 end
	if activator.Printer_UseStage_Time == nil then activator.Printer_UseStage_Time = 0 end
	if CurTime() > activator.Printer_UseStage_Time then 
		activator.Printer_UseStage_Time = CurTime() + 2 
		activator.Printer_UseStage = 0 
	end
	 
	if CurTime() < activator.Printer_UseStage_Time then	
		if activator.Printer_UseStage == 0 then
			activator.Printer_UseStage = 1
		else
			if activator.Printer_UseStage == 1 then
				activator.Printer_UseStage = 2
			end
		end
	end
	
	if activator.Printer_UseStage != 2 then return end
	activator.Printer_UseStage = 0
	
	local TraceEnt = activator:GetEyeTrace().Entity:GetClass()
	
	if TraceEnt == "spawned_money" then return end
	
	local UpgradeCost = self:GetNetworkedInt( "printer_upgradecost" )
	
	activator.LastUsedMP = self

	GetMPLevelData(self)
	GetMPUpgradeData(self)
	
	self:SetNWInt( "printer_maxlevel", table.Count( UpgradePrinterLevels ) )
	umsg.Start( "PrinterUpgradeMenu", activator ); 
		umsg.Entity( self, activator );
    umsg.End();
end

function ENT:Think()
	if !self.sparking or !self:IsPowered() then return end

	local effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	effectdata:SetMagnitude(1)
	effectdata:SetScale(1)
	effectdata:SetRadius(2)
	util.Effect("Sparks", effectdata)
end
