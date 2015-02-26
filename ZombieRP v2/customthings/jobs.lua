/*---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------*/
//Survivor
TEAM_CITIZEN = DarkRP.createJob("Survivor", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/group03/female_01.mdl",
		"models/player/group03/female_02.mdl",
		"models/player/group03/female_03.mdl",
		"models/player/group03/female_04.mdl",
		"models/player/group03/female_05.mdl",
		"models/player/group03/female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl",
		"models/player/Group03/Male_05.mdl",
		"models/player/Group03/Male_06.mdl",
		"models/player/Group03/Male_07.mdl",
		"models/player/Group03/Male_08.mdl",
		"models/player/Group03/Male_09.mdl"
	},
	description = [[The survivor is the most basic level of society you can hold
		besides being a hobo.
		You have no specific role in city life.]],
	weapons = {},
	command = "Survivor",
	max = 0,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = false,
	mayor = false,
	chief = false,
	medic = false,
	cook = false,
	hobo = false,
	label = "Survivor" -- Optional: the text on the button in the F4 menu
})

//Modderator
TEAM_ADMIN = DarkRP.createJob("Moderator on Duty", {
	color = Color(38, 255, 0, 153),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[Don't rp as this job.]],
	weapons = {"weapon_nautilus", "fas2_dv2", "stunstick", "arrest_stick", "unarrest_stick"},
	command = "mod",
	max = 64,
	salary = 45,
	admin = 0,
	cp = true,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false,
	customCheck = function(ply)
    return ply:GetUserGroup() == "moderator"
    end
})

//Admin
TEAM_ADMIN = DarkRP.createJob("Admin on Duty", {
	color = Color(38, 255, 0, 153),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[Don't rp as this job.]],
	weapons = {"weapon_nautilus", "fas2_dv2", "stunstick", "arrest_stick", "unarrest_stick"},
	command = "admin",
	max = 64,
	salary = 45,
	admin = 0,
	cp = true,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false,
	customCheck = function(ply)
    return ply:GetUserGroup() == "admin" or ply:GetUserGroup() == "superadmin"
    end
})

//Admin Overlords
TEAM_ADMIN = DarkRP.createJob("Admin on Duty", {
	color = Color(38, 255, 0, 153),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[Don't rp as this job.]],
	weapons = {"weapon_nautilus", "fas2_dv2", "stunstick", "arrest_stick", "unarrest_stick", "rx_map_decoration_editor"},
	command = "h-admin",
	max = 64,
	salary = 45,
	admin = 0,
	cp = true,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false,
	customCheck = function(ply)
    return ply:GetUserGroup() == "headadmin" or ply:GetUserGroup() == "owner"
    end
})

//Event Team 1
TEAM_EVENT_ONE = DarkRP.createJob("Event Team 1", {
	color = Color(255, 0, 255, 255),
	model = {
		"models/player/hostage/hostage_01.mdl",
		"models/player/hostage/hostage_04.mdl"
	},
	description = [[SuperAdmin and above rp_event_team_1 <name>.]],
	weapons = {},
	command = "event_team_1",
	max = 0,
	salary = 20,
	admin = 1,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false,
	PlayerSpawn = function(ply) ply:SetHealth(100) end
})

//Event Team 2
TEAM_EVENT_TWO = DarkRP.createJob("Event Team 2", {
	color = Color(0, 255, 255, 255),
	model = {
		"models/player/hostage/hostage_02.mdl",
		"models/player/hostage/hostage_03.mdl"
	},
	description = [[SuperAdmin and above rp_event_team_2 <name>.]],
	weapons = {},
	command = "event_team_2",
	max = 0,
	salary = 20,
	admin = 1,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false,
	PlayerSpawn = function(ply) ply:SetHealth(100) end
})

//Hobo
TEAM_HOBO = DarkRP.createJob("Hobo", {
	color = Color(80, 45, 0, 255),
	model = "models/player/corpse1.mdl",
	description = [[The lowest member of society. All people see you laugh.
		    Beg for your food and money, and if people refuse to do so
		    spam their face with bugbait!
		    Make your own wooden home somewhere in a corner or
		    outside someone else's door]],
	weapons = {"weapon_bugbait"},
	command = "hobo",
	max = 3,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false
})

//Medic
TEAM_MEDIC = DarkRP.createJob("Doctor", {
	color = Color(47, 79, 79, 255),
	model = "models/player/kleiner.mdl",
	description = [[With your medical knowledge,
		    you heal players to proper
		    health.
		    Without a medic, people cannot be healed.
		    Left click with the Medical Kit to heal other players.
		    Right click with the Medical Kit to heal yourself.]],
	weapons = {"fas2_ifak"},
	command = "medic",
	max = 3,
	salary = 30,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

//Gundealer
TEAM_GUN = DarkRP.createJob("Gundealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[A gundealer is the person who can sell guns to other
		people.
		/Buyshipment <name> to Buy a  weapon shipment
		/Buygunlab to Buy a gunlab that spawns P228 pistols]],
	weapons = {},
	command = "gundealer",
	max = 2,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

//Adv. Arms Dealer
TEAM_ADVGUN = DarkRP.createJob("Adv. Arms Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[As an Advanced Arms Dealer you can sell 
		modern customisable weaponry.
		/Buyshipment <name> to Buy a weapon shipment
		/Buygunlab to Buy a gunlab that spawns P228 pistols]],
	weapons = {},
	command = "advgun",
	max = 2,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

//Armor Merchant
TEAM_ARMOR = DarkRP.createJob("Armor Merchant", {
	color = Color(255, 140, 0, 255),
	model = "models/player/odessa.mdl",
	description = [[As an Armor Merchant you can sell protection vests and helmets to
		people.]],
	weapons = {},
	command = "armormerchant",
	max = 2,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

//Engineer
TEAM_ENGINEER = DarkRP.createJob("Engineer", {
	color = Color(255, 144, 0, 176),
	model = "models/player/magnusson.mdl",
	description = [[The engineer can sell old vehicles and repair damaged ones.]],
	weapons = {"weapon_scarrepair"},
	command = "engineer",
	max = 2,
	salary = 40,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

//Fisher
//TEAM_FISH = DarkRP.createJob("Fisher", {
//	color = Color(255, 255, 0, 255),
//	model = "models/player/odessa.mdl",
//	description = [[A simple fisher, nothing special really.]],
//	weapons = {"weapon_fishing_rod"},
//	command = "fisher",
//	max = 3,
//	salary = 20,
//	admin = 0,
//	vote = false,
//	hasLicense = false,
//	mayorCanSetSalary = true,
//	candemote = true,
//	mayor = false,
//	chief = false,
//	medic = false,
//	cook = false,
//	hobo = false,
//	fisher = true
//})

//Black Market Dealer
TEAM_BMDEALER = DarkRP.createJob("Black Market Dealer", {
	color = Color(0, 0, 0, 255),
	model = "models/player/eli.mdl",
	description = [[As a Black Market Dealer you sell illegal explosive weaponry,
		so be carefull, you can be arrested by the police on sight!]],
	weapons = {},
	command = "BMD",
	max = 2,
	salary = 25,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	BMD = true
})

//Guard
TEAM_PGUARD = DarkRP.createJob("Personal Guard", {
	color = Color(27, 209, 48, 120),
	model = "models/player/riot.mdl",
	description = [[As a Personal Guard you can be hired to protect people or their shop.
		If they hire you as their personal guard, you NEED to protect them.
		If you don't, that's breaking the rules, goodluck!]],
	weapons = {"stunstick", "weaponchecker"},
	command = "pguard",
	max = 2,
	salary = 25,
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	Guard = true
})

//Governor
TEAM_MAYOR = DarkRP.createJob("Governor", {
	color = Color(150, 20, 20, 255),
	model = "models/player/breen.mdl",
	description = [[The Governor of the city creates laws to serve the greater good
	of the people.
	If you are the mayor you may create and accept warrants.
	Type /wanted <name>  to warrant a player
	Type /jailpos to set the Jail Position
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area
	/unlockdown to end a lockdown]],
	weapons = {},
	command = "mayor",
	max = 1,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
    	mayor = true,
	help = {
		"Type /warrant [Nick|SteamID|Status ID] to set a search warrant for a player.",
		"Type /wanted [Nick|SteamID|Status ID] to alert everyone to a wanted suspect.",
		"Type /unwanted [Nick|SteamID|Status ID] to clear the suspect.",
		"Type /lockdown to initiate a lockdown",
		"Type /unlockdown to end a lockdown",
		"Type /placelaws to place a screen containing the laws.",
		"Type /addlaw and /removelaw to edit the laws."
	}
})

//Secret Service
TEAM_SECRETSERVICE = DarkRP.createJob("Secret Service", {
	color = Color(15, 255, 111, 255),
	model = "models/player/barney.mdl",
	description = [[You are a secret service, protect the Governor at all costs.]],
	weapons = {"arrest_stick", "cw_g4p_glock17", "weaponchecker", "stunstick"},
	command = "secretservice",
	max = 2,
	salary = 45,
	cp = true,
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true
})

//Survival Protection
TEAM_POLICE = DarkRP.createJob("Survival Protection", {
	color = Color(25, 25, 170, 255),
	model = {"models/stalkertnb/beri_rogue_cs2.mdl"},
	description = [[The protector of every survivor that lives in the city .
		You have the power to arrest criminals and protect innocents.
		Hit them with your arrest baton to put them in jail
		Bash them with a stunstick and they might learn better than to disobey
		the law.
		The Battering Ram can break down the door of a criminal with a warrant
		for his/her arrest.
		The Battering Ram can also unfreeze frozen props(if owner of the prop is wanted).
		Type /wanted <name> to alert the public to this criminal
		OR go to tab and warrant someone by clicking the warrant button
		!!You also hunt down the Runners!!]],
	weapons = {"arrest_stick", "unarrest_stick", "cw_g4p_glock17", "stunstick", "door_ram", "weaponchecker"},
	command = "cp",
	max = 4,
	salary = 30,
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	cp = true,
	police = true,
	help = {
		"Please don't abuse your job",
		"Hunt down the runners arrest them!",
		"Keep an eye on bandits and thiefs!",
		"When you arrest someone they are auto transported to jail.",
		"They are auto let out of jail after some time",
		"Type /warrant [Nick|SteamID|Status ID] to set a search warrant for a player.",
		"Type /wanted [Nick|SteamID|Status ID] to alert everyone to a wanted suspect",
		"Type /unwanted [Nick|SteamID|Status ID] to clear the suspect",
		"Type /jailpos to set the jail position"
	}
})

//Survival Protection Chief
TEAM_CHIEF = DarkRP.createJob("Survival Protection Chief", {
	color = Color(20, 20, 255, 255),
	model = "models/stalkertnb/beri_rogue_cs2.mdl",
	description = [[The Chief is the leader of the Civil Protection unit and
		the Military department.
		Coordinate the Police and Military units to enforce law in the city.
		Hit criminals with arrest baton to put them in jail.
		Bash them with a stunstick and they might learn better than to
		disobey the law.
		The Battering Ram can break down the door of a criminal with a
		warrant for his/her arrest.
		Type /wanted <name> to alert the public to this criminal
		Type /jailpos to set the Jail Position
		!!You also hunt down the Runners!!]],
	weapons = {"arrest_stick", "unarrest_stick", "cw_g4p_glock17", "cw_mp5", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = 75,
	admin = 0,
	NeedToChangeFrom = TEAM_POLICE,
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	chief = true,
	help = {
		"Please don't abuse your job",
		"Hunt down the runners and arrest them!",
		"Keep an eye on bandits and thiefs!",
		"When you arrest someone they are auto transported to jail.",
		"They are auto let out of jail after some time",
		"Type /warrant [Nick|SteamID|Status ID] to set a search warrant for a player.",
		"Type /wanted [Nick|SteamID|Status ID] to alert everyone to a wanted suspect",
		"Type /unwanted [Nick|SteamID|Status ID] to clear the suspect",
		"Type /jailpos to set the jail position"
	}
})

//Military Infantry
TEAM_SWAT = DarkRP.createJob("Military Infantry", {
	color = Color(22, 121, 191, 255),
	model = {"models/stalkertnb/beri_mili.mdl"},
	description = [[The Militairy is a very special team.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.
		to enforce law in the city if the situation gets hotter.]],
	weapons = {"arrest_stick", "cw_g4p_glock17", "cw_g4p_m4a1"},
	command = "swat",
	max = 2,
	salary = 35,
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	cp = true,
	SWAT = true,
	PlayerSpawn = function(ply) ply:SetArmor(25) end,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator" or ply:GetUserGroup() == "VIP-trial" or ply:GetUserGroup() == "Trusted" or ply:IsAdmin() or ply:IsUserGroup('Moderator')
    end
})

//Military Medic
TEAM_SWATMEDIC = DarkRP.createJob("Military Medic", {
	color = Color(19, 81, 124, 255),
	model = {"models/stalkertnb/beri_seva.mdl"},
	description = [[As the Military Medic you heal your teammates and wounded people.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"cw_g4p_glock17", "arrest_stick", "cw_mp5", "fas2_ifak"},
	command = "swatmedic",
	max = 2,
	salary = 55,
	admin = 0,
	cp = true,
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	medic = true,
	police = true,
	PlayerSpawn = function(ply) ply:SetArmor(25) end,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Military Sniper
TEAM_SWATSNIPER = DarkRP.createJob("Military Sniper", {
	color = Color(19, 81, 124, 255),
	model = {"models/stalkertnb/beri_rogue.mdl"},
	description = [[As the Military Sniper you provide support for your teammated from far away.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "cw_g4p_glock17", "cw_g4p_awm"},
	command = "swatsniper",
	max = 2,
	salary = 50,
	admin = 0,
	vote = false,
	cp = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	police = true,
	PlayerSpawn = function(ply) ply:SetArmor(25) end,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Military Juggernaut
TEAM_SWATSUPPORT = DarkRP.createJob("Military Juggernaut", {
	color = Color(19, 81, 124, 255),
	model = {"models/juggerjaut_player.mdl"},
	description = [[As the Military Juggernaut you can provide your team with
		some heavy support and breach the enemy's defence lines.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "cw_g4p_glock17", "swb_rpd", "door_ram"},
	command = "swatjugger",
	max = 1,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	cp = true,
	police = true,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Military Spetsnaz Officer
TEAM_SWATEXPLOSIVE = DarkRP.createJob("Military Spetsnaz Officer", {
	color = Color(19, 81, 124, 255),
	model = {"models/stalkertnb/beri_rogue_helmet.mdl"},
	description = [[As the Military Spetsnaz officer you are
		a vital asset in taking on bandit bases.
		You follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "cw_g4p_glock17", "weapon_slam", "rpg-7", "swb_val"},
	command = "swatspetsnaz",
	max = 1,
	salary = 50,
	admin = 0,
	cp = true,
	police = true,
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	police = true,
	PlayerSpawn = function(ply) ply:SetArmor(25) end,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Military Spetsnaz Cadet
TEAM_SWATEXPLOSIVE = DarkRP.createJob("Military Spetsnaz Cadet", {
	color = Color(19, 81, 124, 255),
	model = {"models/stalkertnb/beri_rogue.mdl"},
	description = [[As the Military Spetsnaz Cadet you are
		a vital asset in taking on bandit bases.
		You follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "climb_swep2", "cw_g4p_mp412_rex", "cw_g4p_ump45"},
	command = "swatspetsnaz",
	max = 1,
	salary = 50,
	admin = 0,
	cp = true,
	police = true,
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	police = true,
	PlayerSpawn = function(ply) ply:SetArmor(25)
	customCheck = function(ply)
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator" or ply:GetUserGroup() == "VIP-trial" or ply:GetUserGroup() == "Trusted" or ply:IsAdmin() or ply:IsUserGroup('Moderator')
    end

})

//S.W.A.T Leader
TEAM_SWATLEADER = DarkRP.createJob("Military Commander", {
	color = Color(19, 81, 124, 255),
	model = {"models/stalkertnb/exo_berill.mdl"},
	description = [[As a Military Commander you're the leader of the team.
		Coordinate the Military forces to enforce law in the city.
		Follow the commands of the Chief.]],
	weapons = {"cw_g4p_glock17", "arrest_stick", "unarrest_stick", "swb_chaser", "cw_g4p_m4a1"},
	command = "swatleader",
	max = 1,
	salary = 55,
	admin = 0,
	NeedToChangeFrom = TEAM_SWAT,
	vote = true,
	cp = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
 	chief = true,
	SWATLEADER = true,
	PlayerSpawn = function(ply) ply:SetArmor(50) end,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator" or ply:GetUserGroup() == "VIP-trial" or ply:GetUserGroup() == "Trusted" or ply:IsAdmin() or ply:IsUserGroup('Moderator')
    end
})

//Scavenger
/*TEAM_SCAVENGER = DarkRP.createJob("Scavenger", {
	color = Color(221, 151, 151),
	model = {"models/player/scavenger/scavenger.mdl"},
	description = [[You wander around the wasteland, your like
		a normal survivor, but you get some guns to survive.]],
	weapons = {"cw_mp5"},
	command = "scavenger",
	max = 2,
	salary = 15,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true,
	mayor = false,
	chief = false,
	medic = false,
	cook = false,
	hobo = false,
	scavenger = true,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator" or ply:GetUserGroup() == "VIP-trial" or ply:IsAdmin()
    end    
})*/

//Vigilante
TEAM_VIGILANTE = DarkRP.createJob("Vigilante", {
	color = Color(221, 151, 151, 255),
	model = {"models/player/leet.mdl"},
	description = [[After years of travelling you
	have finally found civilization in this Zombie Apocalypse.
	With your great dual wielding skills and loads of weapons.
	You have decided to protect these people]],
	weapons = {"dual_weapons"},
	command = "quickshot",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true,
	quickshot = true,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})



//Assassin
TEAM_ASSASSIN = DarkRP.createJob("Assassin", {
	color = Color(0, 10, 0, 255),
	model = "models/stalkertnb/cs2_goggles.mdl",
	description = [[Assassinate for money,
		Stealth skills are required.
		<donator only>]],
	weapons = {"cw_g4p_m98b", "blink_swep", "climb_swep2", "fas2_dv2"},
	command = "Assassin",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	assassin = true,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Hitman
TEAM_HITMAN = DarkRP.createJob("Bounty Hunter", {
	color = Color(84, 34, 94, 255),
	model = "models/player/guerilla.mdl",
	description = [[A hitman gets payed to kill people]],
	weapons = {"fas2_dv2"},
	command = "hitman",
	max = 1,
	salary = 25,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	hitman = true,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Trusted" or ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator" or ply:GetUserGroup() == "VIP-trial" or ply:IsAdmin() or ply:IsUserGroup('Moderator')
    end
})

/*//Stalker
TEAM_STALKER = DarkRP.createJob("Stalker", {
	color = Color(0, 50, 0, 255),
	model = {"models/player/stalker/loner_vet.mdl", "models/player/stalker/freedom_vet.mdl"},
	description = [[Stalkers are the most experienced survivors in the area.]],
	weapons = {"fas2_machete", "climb_swep2"},
	command = "stalker",
	max = 2,
	salary = 15,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Trusted" or ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator" or ply:GetUserGroup() == "VIP-trial" or ply:IsAdmin() or ply:IsUserGroup('Moderator')
    end
})

//Stalker Veteran
TEAM_STALKERVET = DarkRP.createJob("Stalker Veteran", {
	color = Color(0, 50, 0, 255),
	model = {"models/player/stalker/loner_exo.mdl", "models/player/stalker/freedom_exo.mdl"},
	description = [[The most experienced Stalkers in the area.]],
	weapons = {"fas2_machete", "climb_swep2", "fas2_rpk", "fas2_ragingbull"},
	command = "stalkerveteran",
	max = 2,
	salary = 30,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	PlayerSpawn = function(ply) ply:SetArmor(50) end,
	customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})*/
//Faith
TEAM_RUNNER = DarkRP.createJob("Runner", {
	color = Color(255, 0, 0, 255),
	model = "models/stalkertnb/bandit_reager.mdl",
	description = [[You are a parkour master that recently
		escaped from the jail. Be carefull, the Police can arrest you on sight!]],
	weapons = {"climb_swep2"},
	command = "parkour",
	max = 2,
	salary = 15,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	Runner = true
})

//Thief
TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(25, 25, 25, 255),
	model = "models/player/arctic.mdl",
	description = [[As a thief you can steal and mug people, you can also be hired by the Bandits.]],
	weapons = {"lockpick", "keypad_cracker"},
	command = "thief",
	max = 2,
	salary = 15,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	thief = true
})


//Bandit
TEAM_GANG = DarkRP.createJob("Bandit", {
	color = Color(75, 75, 75, 255),
	model = "models/stalkertnb/bandit1.mdl",
	description = [[The lowest person of crime.
		A bandit generally works for the Bandit Leader who runs the crime family.
		The Bandit Leader sets your agenda and you follow it or you might be punished.]],
	weapons = {},
	command = "bandit",
	max = 4,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true
})

//Bandit Sharpshooter
TEAM_GANGSNIPER = DarkRP.createJob("Bandit Sharpshooter", {
	color = Color(75, 75, 75, 255),
	model = "models/stalkertnb/bandit3.mdl",
	description = [[As the bandit sharpshooter, you work with the bandit leader and other bandits,
		providing cover from a distance and picking off targets]],
	weapons = {"cw_g4p_usp40", "cw_g4p_awm"},
	command = "banditsniper",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Bandit Surgeon
TEAM_GANGMEDIC = DarkRP.createJob("Bandit Surgeon", {
	color = Color(75, 75, 75, 255),
	model = "models/player/phoenix.mdl",
	description = [[Never passed out of medical school but you picked up enough to aid and heal other bandits!]],
	weapons = {"cw_g4p_usp40","fas2_ifak"},
	command = "banditmedic",
	max = 1,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Bandit Leader
TEAM_MOB = DarkRP.createJob("Bandit Leader", {
	color = Color(25, 25, 25, 255),
	model = "models/stalkertnb/banditboss1.mdl",
	description = [[The Bandit leader is the boss of the criminals in the wasteland.
		With his power he coordinates the bandits and forms an efficient crime
		organization.
		He has the ability to break into houses by using a lockpick.
		The Bandit Leader also can unarrest you.]],
	weapons = {"lockpick", "unarrest_stick", "cw_g4p_usp40"},
	command = "mobboss",
	max = 1,
	salary = 25,
	admin = 0,
	NeedToChangeFrom = TEAM_BANDIT,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	help = {
		"As the Bandit Leader, you decide what you want the other Bandits to do.",
		"You get an Unarrest Stick which you can use to break people out of jail.",
		"/agenda <Message> Sets the Gangsters' agenda. Use // to go to the next line."
	}
})


/*//Monolith Member
TEAM_MONOLITH = DarkRP.createJob("Monolith", {
	color = Color(145, 145, 145, 255),
	model = "models/player/stalker/monolith_vet.mdl",
	description = [[The most radical clan in the area, these nutheads have no "Morality" in their dictionary."]],
	weapons = {"cw_g4p_fiveseven","fas2_ifak", "fas2_g3"},
	command = "monolith",
	max = 3,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	PlayerSpawn = function(ply) ply:SetArmor(25) end,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Monolith Leader
TEAM_MONOLITHLEADER = DarkRP.createJob("Monolith Reverend", {
	color = Color(145, 145, 145, 255),
	model = "models/player/stalker/monolith_exo.mdl",
	description = [[The preacher of the Monolith group.]],
	weapons = {"lockpick", "keypad_cracker", "cw_g4p_fiveseven", "fas2_ifak", "fas2_g3"},
	command = "monolithleader",
	max = 1,
	salary = 30,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	PlayerSpawn = function(ply) ply:SetArmor(100) end,
	customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})*/

//Duty Member
TEAM_DUTY = DarkRP.createJob("Duty", {
	color = Color(75, 12, 12, 255),
	model = "models/stalkertnb/psz9d_duty2.mdl",
	description = [[Duty is the group that keeps peace in the area by supporting the Government and innocent survivors in case of Raids and other illegal actions that criminals organise]],
	weapons = {"cw_g4p_masada_acr", "fas2_dv2"},
	command = "duty",
	max = 3,
	salary = 25,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	ninja = true,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "VIP-trial" or ply:GetUserGroup() == "donator" or ply:IsAdmin() or ply:IsUserGroup('Moderator')
    end
})

//Duty medic
TEAM_DUTYMEDIC = DarkRP.createJob("Duty Medic", {
	color = Color(75, 12, 12, 255),
	model = "models/stalkertnb/psz9d_duty4.mdl",
	description = [[A Support unit for Duty group."]],
	weapons = {"cw_g4p_masada_acr", "fas2_ifak"},
	command = "dutymedic",
	max = 1,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	PlayerSpawn = function(ply) ply:SetArmor(25) end,
    customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})

//Duty leader
TEAM_DUTYLEADER = DarkRP.createJob("Duty Marshall", {
	color = Color(75, 12, 12, 255),
	model = "models/stalkertnb/exo_skat_duty.mdl",
	description = [[The leader of the Duty group, you must command the Duty members and follow the orders of the Government.]],
	weapons = {"keypad_cracker", "cw_g4p_masada_acr", "cw_ak74"},
	command = "dutyleader",
	max = 1,
	salary = 30,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	PlayerSpawn = function(ply) ply:SetArmor(100) end,
	customCheck = function(ply) return ply:IsUserGroup("donator") or ply:IsAdmin() or ply:IsUserGroup("VIP-trial") or ply:IsUserGroup('Moderator') end,
    CustomCheckFailMsg = "You need to donate for this job!"
})
/*---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------*/
GAMEMODE.DefaultTeam = TEAM_CITIZEN

/*---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------*/
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_SWAT] = true,
	[TEAM_SWATLEADER] = true,
	[TEAM_SWATMEDIC] = true,
	[TEAM_SWATSNIPER] = true,
	[TEAM_SWATEXPLOSIVE] = true,
	[TEAM_SWATSUPPORT] = true
}
/*---------------------------------------------------------------------------
Enable hitman goodies on this team
---------------------------------------------------------------------------*/
DarkRP.addHitmanTeam(TEAM_HITMAN)
DarkRP.addHitmanTeam(TEAM_ASSASSIN)
