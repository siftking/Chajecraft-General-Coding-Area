// Listen! If you're looking for the prices table, this isn't your place, sorry pal
// But the system it's really different, and actually it's not that easy to modify
// Don't worry! a guy with a bolt in his head can do it (I think)
// You must open the file vgui/storejson.lua

DRONE = {}

//You can buy drones on GUI menu
DRONE.BuyFromGUI = true

//Insert here the group of people that can open the menu if a donator setting is setted
DRONE.DonatorGroups = {"donator","admin","moderator","police","superadmin","owner","co-owner","moderator","Moderator"}

//DarkRP Config, left it blank for everyone
DRONE.Teams = {}

//What key opens the menu
DRONE.MasterKey = KEY_F3

//Disable this on DarkRP for use the darkrp money system
DRONE.UsePointShop = false

//Basic price data
DRONE.Price = 10000
DRONE.RefillPrice = 1000
DRONE.RepairPrice = 500

//Give to each player the drone when they spawn
DRONE.AutoGive = false
//When your drone die, you can respawn it from iDrone, else will spawn with you
DRONE.CanRespawn = true
DRONE.RespawnPrice = 1000
DRONE.PriceSell = 3000

//Donators or people on the var "DRONE.DonatorGroups" will be able to open the drone menu
DRONE.OnlyDonators = true 
//Only donators can buy the upgrades
DRONE.UpgradesDonators = false
//Only donators can buy the miscs (Unusuals, trails, etc)
DRONE.MiscDonator = true

//Spawn life
DRONE.MaxHealth = 100

//Crashing can kill players
DRONE.HitPlayers = true
//This kill the drone
DRONE.KillOnDeath = false

//Hide the name on the drone (Not for localplayer)
DRONE.HideTag = false

//On TTT, on false, players will be able to buy the drones, doesn't matter the role, also
//they gonna spawn with a drone (If autogive it's true), on true, only detectives will spawn
//with drones and/or will be able to buy drones
DRONE.OnlyDetectives = false

function DRONE:CanBuy(ply)
	local b = false
	for k,v in pairs(self.DonatorGroups) do
		if(ply:IsUserGroup(v)) then
			b = true
		end
	end
	return b
end

function DRONE:CanAfford(ply,q)
	if(self.UsePointShop) then
		if(ply:PS_GetPoints() >= q) then
			ply:PS_TakePoints(q)
			return true
		else
			ply:SendLua("chat.AddText(SCHEME.Red,'[INFO] ',SCHEME.White,'You cant afford this')")
			return false
		end
	elseif(GAMEMODE_NAME == "zombierp") then
		if(ply:getDarkRPVar("money") >= q) then
			ply:AddMoney(-q)
			return true
		else
			ply:SendLua("chat.AddText(SCHEME.Red,'[INFO] ',SCHEME.White,'You cant afford this')")
			return false
		end
	end
end

function DRONE:CanSpawn(ply,r)

	if(r == nil) then r = false end
	local b = false

	if(self.AutoGive) then
		if(GAMEMODE_NAME == "zombierp" or GAMEMODE_NAME == "terrortown") then
			if(GAMEMODE_NAME == "zombierp") then
				if(#self.Teams != 0) then
					return table.HasValue(self.Teams,ply:Team())
				else
					return true
				end
			elseif(self.OnlyDetectives) then
				return ply:IsDetective()
			else
				return true
			end
		else
			return true
		end
	else
		if(r) then
			if(GAMEMODE_NAME == "zombierp") then
				if(#self.Teams != 0) then
					return table.HasValue(self.Teams,ply:Team())
				else
					return true
				end
			else
				return false
			end
		else
			return false
		end
	end

end
