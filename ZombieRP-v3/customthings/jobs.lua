--[[---------------------------------------------------------------------------
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
---------------------------------------------------------------------------]]
// #NoSimplerr#
MemberRanks = {"Member", "donator", "Owner", "superadmin", "admin"}
TrustedRanks = {"Trusted", "Member", "donator", "Owner", "superadmin", "admin"}
VIPRanks = {"donator", "Owner", "superadmin", "admin"}

TEAM_CITIZEN = DarkRP.createJob("Survivor", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/humans/group02/player/tale_01.mdl",
		"models/humans/group02/player/tale_03.mdl",
		"models/humans/group02/player/tale_04.mdl",
		"models/humans/group02/player/tale_05.mdl",
		"models/humans/group02/player/tale_07.mdl",
		"models/humans/group02/player/tale_08.mdl",
		"models/humans/group02/player/tale_09.mdl",
		"models/humans/group02/player/temale_01.mdl",
		"models/humans/group02/player/temale_02.mdl",
		"models/humans/group02/player/temale_07.mdl",
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
	category = "Normal",
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = false,
	label = "Survivor" -- Optional: the text on the button in the F4 menu
})

// Engineer
TEAM_ENGINEER = DarkRP.createJob("Engineer", {
	color = Color(255, 161, 0, 255),
	model = {"models/player/hostage/hostage_03.mdl"},
	description = [[You're an engineer.
		With your crazy craftsmanship.
		You've learned to make perfect quality vehicles
		just out of scrap metal.
		Of course with an exchange of money.]],
	weapons = {"weapon_scarrepair", "weapon_scarrefuel"},
	command = "engineer",
	max = 2,
	salary = 30,
	category = "Normal",
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = false
})

TEAM_POLICE = DarkRP.createJob("Survival Protection", {
	color = Color(25, 25, 170, 255),
	model = {"models/csgoswat1pm.mdl", 
	"models/csgoswat2pm.mdl", 
	"models/csgoswat3pm.mdl", 
	"models/csgoswat4pm.mdl"},
	description = [[You're part of the Survival Protection Program.
		You defend the mojave from criminal activity.
		!!You also hunt down the Runners!!]],
	weapons = {"arrest_stick", "unarrest_stick", "fas2_m1911", "weapon_cuff_police", "stunstick", "door_ram", "weaponchecker"},
	command = "cp",
	max = 4,
	salary = 30,
	admin = 0,
	vote = true,
	category = "Government",
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	cp = true,
	police = true
})

TEAM_CHIEF = DarkRP.createJob("Survival Protection Chief", {
	color = Color(20, 20, 255, 255),
	model = {"models/csgoswat1pm.mdl", 
	"models/csgoswat2pm.mdl", 
	"models/csgoswat3pm.mdl", 
	"models/csgoswat4pm.mdl"},
	description = [[The chief, the leader or commander of the Survival Protection Program.
		You coordinate your forces, give them things to do.
		Protect your people from criminal activity.
		The 

		!!You also hunt down the Runners!!]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_cuff_police", "fas2_ragingbull", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = 75,
	admin = 0,
	NeedToChangeFrom = TEAM_POLICE,
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	cp = true,
	category = "Government"
})

//Thief
TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(25, 25, 25, 255),
	model = "models/player/arctic.mdl",
	description = [[Steal, mug people is your priority]],
	weapons = {"keypad_cracker"},
	command = "thief",
	max = 2,
	salary = 20,
	admin = 0,
	vote = false,
	category = "Outlaw",
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	PlayerSpawn = function(ply) ply:SetLockpickCount(5) end,
	thief = true
})


TEAM_GANG = DarkRP.createJob("Bandit", {
	color = Color(75, 75, 75, 255),
	model = {"models/csgoanarchist1pm.mdl",
	"models/csgoanarchist2pm.mdl",
	"models/csgoanarchist3pm.mdl",
	"models/csgoanarchist4pm.mdl"
	},
	description = [[The most feared group of people in this new civilization.
		You're reputation is low yet neutral.
		You're known for mugging and stealing things from people,
		mainly for your own survival.]],
	weapons = {},
	command = "bandit",
	max = 5,
	salary = 20,
	admin = 0,
	category = "Outlaw",
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true
})
TEAM_MOB = DarkRP.createJob("Bandit Leader", {
	color = Color(25, 25, 25, 255),
	model = "models/csgoleet4pm.mdl",
	description = [[With the most feared group of people stands a leader.
		Someone which brings fear to town.
		A true gangster before the apocalypse,
		now leader of the bandits of mojave.]],
	weapons = {"lockpick", "unarrest_stick", "fas2_p226"},
	command = "banditleader",
	max = 1,
	category = "Outlaw",
	salary = 25,
	admin = 0,
	NeedToChangeFrom = TEAM_BANDIT,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true
})
TEAM_GANGMEDIC = DarkRP.createJob("Bandit Medic", {
	color = Color(75, 75, 75, 255),
	model =	"models/csgoleet2pm.mdl",
	description = [[The medic is an important part of the group.  
	He can assist you with healing and spare bandages.]],
	weapons = {"fas2_glock20", "fas2_ifak", "fas2_mac11"},
	command = "banditmedic",
	max = 2,
	salary = 150,
	category = "Outlaw",
	admin = 0,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!"
})
TEAM_GANGSNIPER = DarkRP.createJob("Bandit Sniper", {
	color = Color(75, 75, 75, 255),
	model =	"models/csgoleet1pm.mdl",
	description = [[Long distance engagement is always good for backing up your teammates from a far.]],
	weapons = {"fas2_m14", "fas2_glock20"},
	command = "banditsniper",
	max = 2,
	salary = 150,
	admin = 0,
	category = "Outlaw",
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!"
})
TEAM_GANGHEAVY = DarkRP.createJob("Bandit Heavy", {
	color = Color(75, 75, 75, 255),
	model =	"models/csgopheonix3pm.mdl",
	description = [[Heavy promvides ammunation and suppressive fire for his team.]],
	weapons = {"fas2_rpk", "fas2_glock20", "fas2_ammobox"},
	command = "banditheavy",
	max = 1,
	salary = 150,
	admin = 0,
	vote = false,
	category = "Outlaw",
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!",
	PlayerSpawn = function(ply) ply:SetArmor(100) end

})

//Guard
TEAM_PGUARD = DarkRP.createJob("Personal Guard", {
	color = Color(27, 209, 48, 120),
	model = "models/csgogign1pm.mdl",
	description = [[As a Personal Guard you can be hired to protect people or their shop.
		If they hire you as their personal guard, you NEED to protect them.
		If you don't, that's breaking the rules, good luck!]],
	weapons = {"stunstick", "weaponchecker"},
	command = "pguard",
	max = 2,
	salary = 25,
	category = "Normal",
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
	model = "models/csgopirate3pm.mdl",
	description = [[As a Black Market Dealer you sell illegal explosive weaponry,
		so be careful, you can be arrested by the police on sight!]],
	weapons = {},
	command = "BMD",
	max = 2,
	salary = 25,
	admin = 0,
	category = "Outlaw",
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	BMD = true
})

TEAM_RUNNER = DarkRP.createJob("Contrabandist", {
	color = Color(255, 0, 0, 255),
	model = {"models/player/lara_croft.mdl"},
	description = [[You are searched from every spot in the world.
		Everybody knows you, what you've done.
		You might be agile but they'll never stop hunting you down.
		Every police force will arrest you on sight.
		(AOS)]],
	weapons = {"climb_swep2"},
	command = "runner",
	max = 2,
	category = "Outlaw",
	salary = 30,
	admin = 0,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false
})

TEAM_GUN = DarkRP.createJob("Arms Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/csgobalkan1pm.mdl",
	description = [[A gundealer is the person who can sell guns to other
		people. This member of the clan is crucial to survival.]],
	weapons = {},
	command = "gundealer",
	max = 2,
	salary = 20,
	admin = 0,
	vote = false,
	category = "Normal",
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
	color = Color(47, 79, 79, 255),
	model = "models/player/hostage/hostage_04.mdl",
	description = [[After the apocalypse these became one of the most
		important persons in this civilization.
		You take care of those who are in need of medical attention.]],
	weapons = {"fas2_ifak"},
	command = "medic",
	max = 3,
	salary = 30,
	admin = 0,
	category = "Normal",
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = true,
	candemote = true
})

TEAM_SS = DarkRP.createJob("Secret Service", {
    color = Color(105, 225, 220, 255),
    model = {"models/csgoprofessional1pm.mdl",
    "models/csgoprofessional2pm.mdl",
    "models/csgoprofessional3pm.mdl",
    "models/csgoprofessional4pm.mdl"
    },
    description = [[The governer's personal bodyguards
    	only to be used when a governer is present]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_cuff_police", "door_ram", "fas2_mp5k"},
	command = "secretservice",
	max = 2,
	salary = 80,
	category = "Government",
	admin = 0,
	vote = true,
	hasLicense = true,
	customCheck = function(ply) return table.HasValue(MemberRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to be Member to play this job! (Play 24h)"
 })

TEAM_MAYOR = DarkRP.createJob("Governor", {
	color = Color(150, 20, 20, 255),
	model = "models/player/breen.mdl",
	description = [[The governor is the one who took the lead in the civilization.
		He said that with order, we can survive for decades.
		With his police force under him, he is ready to lead this.]],
	weapons = {},
	command = "mayor",
	max = 1,
	salary = 50,
	category = "Government",
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = false,
	candemote = true,
    	mayor = true,
    	customCheck = function(ply) return table.HasValue(MemberRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to be Member to play this job! (Play 24h)"
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
	color = Color(80, 45, 0, 255),
	model = {
		"models/player/group02/male_02.mdl",
		"models/player/group02/male_04.mdl",
		"models/player/group02/male_06.mdl",
		"models/player/group02/male_08.mdl"
	},
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
	category = "Normal",
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false
})

//Assassin
TEAM_ASSASSIN = DarkRP.createJob("Assassin", {
	color = Color(0, 10, 0, 255),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[Assassinate for money,
		Stealth skills are required.
		<donator only>]],
	weapons = {"weapon_crossbow", "blink_swep", "climb_swep2", "fas2_dv2", "fas2_sks"},
	command = "Assassin",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
	category = "Normal",
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	assassin = true,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!"
})

// Military Infantry
TEAM_MILITARY = DarkRP.createJob("Military Infantry", {
	color = Color(0, 199, 255, 255),
	model = {"models/csgost64pm.mdl"},
	description = [[As you were left to rot from the ordinary military,
		the civilization started their own.
		Your job is to defend the people from threats.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_cuff_police", "fas2_m4a1", "fas2_m1911", "stunstick"},
	command = "military",
	max = 4,
	salary = 40,
	admin = 0,
	category = "Government",
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	customCheck = function(ply) return table.HasValue(TrustedRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to be Trusted to play this job! (Play 4h)"
})

// Military Commander
TEAM_MILITARYCOMMANDER = DarkRP.createJob("Military Commander", {
	color = Color(0, 190, 246, 255),
	model = {"models/csgost63pm.mdl"},
	description = [[As you were left to rot from the ordinary military,
		the civilization started their own.
		You are the leader of this military group.
		You command the group and give orders.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_cuff_police", "fas2_m3s90", "fas2_deagle", "stunstick"},
	command = "militarycommander",
	max = 1,
	salary = 50,
	NeedToChangeFrom = TEAM_MILITARY,
	admin = 0,
	category = "Government",
	vote = false,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	customCheck = function(ply) return table.HasValue(MemberRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to be Member to play this job! (Play 24h)"
})

// Military Sniper
TEAM_MILITARYSNIPER = DarkRP.createJob("Military Sniper", {
	color = Color(0, 199, 255, 255),
	model = {"models/csgoidf4pm.mdl"},
	description = [[As you were left to rot from the ordinary military,
		the civilization started their own.
		Your job is to defend the people from threats.
		You are the sniper of these forces.
		With your trusty sniper rifle you take people down
		from a distant location.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_cuff_police", "fas2_m24", "fas2_m1911", "stunstick"},
	command = "militarysniper",
	max = 2,
	salary = 150,
	admin = 0,
	vote = false,
	category = "Government",
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!"
})

// Military Juggernaut
TEAM_MILITARYJUG = DarkRP.createJob("Military Juggernaut", {
	color = Color(0, 199, 255, 255),
	model = {"models/csgoidf3pm.mdl"},
	description = [[As you were left to rot from the ordinary military,
		the civilization started their own.
		Your job is to defend the people from threats.
		You are the juggernaut in this forces.
		This suit reduces the damage extremely much.
		The weight however slows you down.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_cuff_police", "fas2_rpk", "fas2_m1911", "stunstick"},
	command = "militaryjuggernaut",
	max = 1,
	salary = 150,
	admin = 0,
	vote = false,
	category = "Government",
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	PlayerSpawn = function(ply)
		JackaBodyArmorUpdate(ply,"Suit","EOD",Color(137,137,137))
		ply:EmitSound("snd_jack_clothequip.wav",70,80)
		JackaGenericUseEffect(ply)
		ply:SetNWBool("SuityJob", true)
	end,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!"
})

// Military Medic
TEAM_MILITARYMEDIC = DarkRP.createJob("Military Medic", {
	color = Color(0, 199, 255, 255),
	model = {"models/csgosas2pm.mdl"},
	description = [[As you were left to rot from the ordinary military,
		the civilization started their own.
		Your job is to defend the people from threats.
		You are the medic of these forces.
		Heal the ones of your forces from wounds.
		Take care.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_cuff_police", "fas2_mp5k", "fas2_m1911", "fas2_ifak"},
	command = "militarymedic",
	max = 2,
	salary = 150,
	admin = 0,
	vote = false,
	category = "Government",
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!"
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
	category = "Normal",
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	hitman = true,
   	customCheck = function(ply) return table.HasValue(TrustedRanks, ply:GetUserGroup()) end
})

//Admin on Duty
TEAM_ADMIN = DarkRP.createJob("Staff on Duty", {
	color = Color(210, 210, 210, 153),
	model = "models/nikout/dishonored/assassin1.mdl",
	description = [[Don't rp as this job.]],
	weapons = {"weapon_electron"},
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
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_MILITARY] = true,
	[TEAM_MILITARYCOMMANDER] = true,
	[TEAM_MILITARYJUG] = true,
	[TEAM_MILITARYSNIPER] = true,
	[TEAM_MILITARYMEDIC] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
DarkRP.addHitmanTeam(TEAM_ASSASSIN)
