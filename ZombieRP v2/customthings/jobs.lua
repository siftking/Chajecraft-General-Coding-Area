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
TEAM_CITIZEN = DarkRP.createJob("Survivor", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
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

TEAM_SCAVENGER = DarkRP.createJob("Scavenger", {
	color = Color(221, 151, 151),
	model = {"models/player/scavenger/scavenger.mdl"},
	description = [[You wander around the wasteland, your like
		a normal survivor, but you get some guns to survive.]],
	weapons = {"m9k_1897winchester"},
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
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator" or ply:IsAdmin()
    end    
})

TEAM_POLICE = DarkRP.createJob("Survival Protection", {
	color = Color(25, 25, 170, 255),
	model = {"models/player/police.mdl"},
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
	weapons = {"arrest_stick", "unarrest_stick", "fas2_m1911", "stunstick", "door_ram", "weaponchecker"},
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

TEAM_GANG = DarkRP.createJob("Bandit", {
	color = Color(75, 75, 75, 255),
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl",
		"models/player/Group03/Male_05.mdl",
		"models/player/Group03/Male_06.mdl",
		"models/player/Group03/Male_07.mdl",
		"models/player/Group03/Male_08.mdl",
		"models/player/Group03/Male_09.mdl"},
	description = [[The lowest person of crime.
		A bandit generally works for the Bandit Leader who runs the crime family.
		The Bandit Leader sets your agenda and you follow it or you might be punished.]],
	weapons = {},
	command = "gangster",
	max = 5,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true
})

TEAM_MOB = DarkRP.createJob("Bandit Leader", {
	color = Color(25, 25, 25, 255),
	model = "models/player/gman_high.mdl",
	description = [[The Bandit leader is the boss of the criminals in the wasteland.
		With his power he coordinates the bandits and forms an efficient crime
		organization.
		He has the ability to break into houses by using a lockpick.
		The Bandit Leader also can unarrest you.]],
	weapons = {"lockpick", "unarrest_stick", "m9k_luger"},
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

TEAM_MEDIC = DarkRP.createJob("Medic", {
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

TEAM_CHIEF = DarkRP.createJob("Survival Protection Chief", {
	color = Color(20, 20, 255, 255),
	model = "models/player/combine_soldier_prisonguard.mdl",
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
	weapons = {"arrest_stick", "unarrest_stick", "fas2_m1911", "m9k_mossberg590", "stunstick", "door_ram", "weaponchecker"},
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

//Secret Service
TEAM_SECRETSERVICE = DarkRP.createJob("Secret Service", {
	color = Color(15, 255, 111, 255),
	model = "models/player/barney.mdl",
	description = [[You are a secret service, protect the Governor at all costs.]],
	weapons = {"arrest_stick", "fas2_m1911", "weaponchecker", "stunstick"},
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

//Ninja
TEAM_NINJA = DarkRP.createJob("Ninja", {
	color = Color(0, 10, 0, 255),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[As the Ninja you should protect innocent people from criminals
		in case of mugging, stealing, raiding and carjacking.]],
	weapons = {"weapon_crossbow", "climb_swep2", "fas2_dv2"},
	command = "ninja",
	max = 2,
	salary = 25,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	ninja = true,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Trusted" or ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator"
    end
})

//Admin
TEAM_ADMIN = DarkRP.createJob("Admin on Duty", {
	color = Color(38, 255, 0, 153),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[Don't rp as this job.]],
	weapons = {"weapon_nautilus", "fas2_dv2", "stunstick", "arrest_stick", "unarrest_stick", "handcuffs"},
	command = "admin",
	max = 64,
	salary = 45,
	admin = 1,
	cp = true,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false
})

//Faith
TEAM_RUNNER = DarkRP.createJob("Runner", {
	color = Color(255, 0, 0, 255),
	model = "models/player/lara_croft.mdl",
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

//Hitman
TEAM_HITMAN = DarkRP.createJob("Hitman", {
	color = Color(84, 34, 94, 255),
	model = "models/player/guerilla.mdl",
	description = [[A hitman gets payed to kill people,
		but be carefull, if you accept a hit you will become AOS!]],
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
    return ply:GetUserGroup() == "Trusted" or ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator"
    end
})

//S.W.A.T
TEAM_SWAT = DarkRP.createJob("Military Infantry", {
	color = Color(22, 121, 191, 255),
	model = {"models/steinman/bf4/us_01.mdl"},
	description = [[The Militairy is a very special team.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.
		to enforce law in the city if the situation gets hotter.]],
	weapons = {"arrest_stick", "fas2_m1911", "fas2_m4a1"},
	command = "swat",
	max = 3,
	salary = 35,
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	cp = true,
	SWAT = true,
	customCheck = function(ply)
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator"
    end
})

//S.W.A.T Leader
TEAM_SWATLEADER = DarkRP.createJob("Military Commander", {
	color = Color(19, 81, 124, 255),
	model = {"models/steinman/bf4/ru_02.mdl"},
	description = [[As a Military Commander you're the leader of the team.
		Coordinate the Military forces to enforce law in the city.
		Follow the commands of the Chief.]],
	weapons = {"fas2_m1911", "arrest_stick", "unarrest_stick", "m9k_mossberg590", "fas2_m4a1"},
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
	customCheck = function(ply)
    return ply:GetUserGroup() == "Member" or ply:GetUserGroup() == "donator"
    end
})

//S.W.A.T-Medic
TEAM_SWATMEDIC = DarkRP.createJob("Military Medic", {
	color = Color(19, 81, 124, 255),
	model = {"models/steinman/bf4/ru_04.mdl"},
	description = [[As the Military Medic you heal your teammates and wounded people.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"fas2_m1911", "arrest_stick", "fas2_m4a1", "fas2_ifak"},
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
	VIPOnly = true
})

TEAM_SWATSNIPER = DarkRP.createJob("Military Sniper", {
	color = Color(19, 81, 124, 255),
	model = {"models/steinman/bf4/ru_03.mdl"},
	description = [[As the Military Sniper you provide support for your teammated from far away.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "fas2_m1911", "fas2_m24"},
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
	VIPOnly = true
})

TEAM_SWATEXPLOSIVE = DarkRP.createJob("Military Explosives Expert", {
	color = Color(19, 81, 124, 255),
	model = {"models/steinman/bf4/us_04.mdl"},
	description = [[As the Military Explosive Master you provide heavy 
		anti-vehicle support for your team.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "fas2_m1911", "m9k_matador", "weapon_slam"},
	command = "swatexplosive",
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
	VIPOnly = true
})

TEAM_SWATHACKER = DarkRP.createJob("Military Hacker", {
	color = Color(19, 81, 124, 255),
	model = {"models/steinman/bf4/us_02.mdl"},
	description = [[As the Military Hacker you help your team to breach enemy's
		security system during raids with your hacking abilities.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "fas2_m1911", "fas2_m4a1", "weapon_hack_phone"},
	command = "swathacker",
	max = 2,
	salary = 50,
	admin = 0,	
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	cp = true,
	police = true,
	VIPOnly = true
})

TEAM_SWATSUPPORT = DarkRP.createJob("Military Juggernaut", {
	color = Color(19, 81, 124, 255),
	model = {"models/steinman/bf4/ru_01.mdl"},
	description = [[As the Military Juggernaut you can provide your team with
		some heavy support and breach the enemy's defence lines.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "fas2_m1911", "m9k_pkm", "door_ram"},
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
	VIPOnly = true
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

//Thief
TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(25, 25, 25, 255),
	model = "models/player/arctic.mdl",
	description = [[Steal, mug people is your priority]],
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

TEAM_PROTHIEF = DarkRP.createJob("Professional Thief", {
	color = Color(25, 25, 25, 255),
	model = "models/player/arctic.mdl",
	description = [[Leaned from the best
		However, your professional skills are illegal
		You are AOS as this job
		<Donator Only>]],
	weapons = {"pro_lockpick", "prokeypad_cracker"},
	command = "prothief",
	max = 3,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	thief = true,
	VIPOnly = true
})

TEAM_ADVGUN = DarkRP.createJob("Adv. Arms Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[As an Advanced Arms Dealer you can sell 
		modern customisable weaponry.
		/Buyshipment <name> to Buy a weapon shipment
		/Buygunlab to Buy a gunlab that spawns P228 pistols]],
	weapons = {"fas2_ammobox"},
	command = "advgun",
	max = 2,
	salary = 20,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

//Assassin
TEAM_ASSASSIN = DarkRP.createJob("Assassin", {
	color = Color(0, 10, 0, 255),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[Assassinate for money,
		Stealth skills are required.
		<donator only>]],
	weapons = {"weapon_crossbow", "blink_swep", "climb_swep2", "fas2_dv2", "vortigaunt_beam"},
	command = "Assassin",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	assassin = true,
	VIPOnly = true
})

TEAM_STEAMPILOT = DarkRP.createJob("Military Tanker", {
	color = Color(0, 168, 184, 255),
	model = {"models/steinman/bf4/us_03.mdl"},
	description = [[As the Military Tanker you patrol the roads
		and defend the military base with a tank.
		Follow the commands of the Military Commander or the Chief 
		in case there is no Military Commander.]],
	weapons = {"arrest_stick", "fas2_m1911"},
	command = "steampilot",
	max = 1,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	steampilot = true,
	VIPOnly = true
})

TEAM_VIGILANTE = DarkRP.createJob("Vigilante", {
	color = Color(221, 151, 151, 255),
	model = {"models/player/leet.mdl"},
	description = [[After years of travelling you
	have finally found civilization in this Zombie Apocalypse.
	With your great dual wielding skills and loads of weapons.
	You have decided to protect these people]],
	weapons = {"dual_weapons", "weapon_hack_phone"},
	command = "quickshot",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true,
	quickshot = true,
	VIPOnly = true
})


/*---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------*/
GAMEMODE.DefaultTeam = TEAM_CITIZEN
/*---------------------------------------------------------------------------
Enable hitman goodies on this team
---------------------------------------------------------------------------*/
DarkRP.addHitmanTeam(TEAM_HITMAN)
DarkRP.addHitmanTeam(TEAM_ASSASSIN)
