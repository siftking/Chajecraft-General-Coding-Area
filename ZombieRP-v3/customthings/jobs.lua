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
MemberRanks = {"Member", "Trusted", "donator", "Owner", "superadmin", "admin"}
TrustedRanks = {"Trusted", "donator", "Owner", "superadmin", "admin"}
VIPRanks = {"donator", "Owner", "superadmin", "admin"}

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
	label = "Survivor" -- Optional: the text on the button in the F4 menu
})

// Engineer
TEAM_ENGINEER = DarkRP.createJob("Engineer", {
	color = Color(255, 161, 0, 255),
	model = {"models/odessa.mdl"},
	description = [[You're an engineer.
		With your crazy craftsmanship.
		You've learned to make perfect quality vehicles
		just out of scrap metal.
		Of course with an exchange of money.]],
	weapons = {"weapon_scarrepair", "weapon_scarrefuel"},
	command = "engineer",
	max = 2,
	salary = 30,
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
	description = [[The most feared group of people in this new civilization.
		You're reputation is low yet neutral.
		You're known for mugging and stealing things from people,
		mainly for your own survival.]],
	weapons = {},
	command = "bandit",
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
	description = [[With the most feared group of people stands a leader.
		Someone which brings fear to town.
		A true gangster before the apocalypse,
		now leader of the bandits of mojave.]],
	weapons = {"lockpick", "unarrest_stick", "fas2_p226"},
	command = "banditleader",
	max = 1,
	salary = 25,
	admin = 0,
	NeedToChangeFrom = TEAM_BANDIT,
	vote = false,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true
})

//Guard
TEAM_PGUARD = DarkRP.createJob("Personal Guard", {
	color = Color(27, 209, 48, 120),
	model = "models/player/riot.mdl",
	description = [[As a Personal Guard you can be hired to protect people or their shop.
		If they hire you as their personal guard, you NEED to protect them.
		If you don't, that's breaking the rules, good luck!]],
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
		so be careful, you can be arrested by the police on sight!]],
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
	max = 0,
	salary = 30,
	admin = 0,
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = false
})

TEAM_GUN = DarkRP.createJob("Arms Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[A gundealer is the person who can sell guns to other
		people. This member of the clan is crucial to survival.]],
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
	description = [[After the apocalypse these became one of the most
		important persons in this civilization.
		You take care of those who are in need of medical attention.]],
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
	model = {"models/csgoswat1pm.mdl", 
	"models/csgoswat2pm.mdl", 
	"models/csgoswat3pm.mdl", 
	"models/csgoswat4pm.mdl"},
	description = [[The chief, the leader or commander of the Survival Protection Program.
		You coordinate your forces, give them things to do.
		Protect your people from criminal activity.
		The 

		!!You also hunt down the Runners!!]],
	weapons = {"arrest_stick", "unarrest_stick", "fas2_ragingbull", "stunstick", "door_ram", "weaponchecker"},
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
})

TEAM_SF = DarkRP.createJob("Special Forces", {
    color = Color(80, 45, 0, 255),
    model = "models/csgosas3pm.mdl",
    description = [[A special force from the outside world
	helping the civilization on special cases.]],
	weapons = {"arrest_stick", "unarrest_stick", "door_ram", "fas2_machete", "fas2_mp5sd6", "fas2_ots33"},
	command = "sf",
	max = 2,
	salary = 200,
	admin = 0,
	vote = true,
	hasLicense = true,
	customCheck = function(ply) return table.HasValue(VIPRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to donate in order to become this job!"
 })

TEAM_MAYOR = DarkRP.createJob("Governor", {
	color = Color(150, 20, 20, 255),
	model = "models/player/breen.mdl",
	description = [[The governor is the one who took the lead in the civilization.
		He said that with order, we can survive for decades.
		With his police force under him, he is ready to lead this.]]
	weapons = {},
	command = "mayor",
	max = 1,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = false,
	candemote = true,
    mayor = true,
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
	weapons = {"arrest_stick", "unarrest_stick", "fas2_m4a1", "fas2_m1911", "stunstick"},
	command = "military",
	max = 4,
	salary = 40,
	admin = 0,
	vote = true,
	hasLicense = true,
	mayorCanSetSalary = true,
	candemote = true,
	customCheck = function(ply) return table.HasValue(TrustedRanks, ply:GetUserGroup()) end,
	CustomCheckFailMsg = "You need to be Trusted to play this job! (Play 4h)"
})

// Military Infantry
TEAM_MILITARYCOMMANDER = DarkRP.createJob("Military Commander", {
	color = Color(0, 190, 246, 255),
	model = {"models/csgost63pm.mdl"},
	description = [[As you were left to rot from the ordinary military,
		the civilization started their own.
		You are the leader of this military group.
		You command the group and give orders.]],
	weapons = {"arrest_stick", "unarrest_stick", "fas2_rem870", "fas2_deagle", "stunstick"},
	command = "militarycommander",
	max = 1,
	salary = 50,
	NeedToChangeFrom = TEAM_MILITARY,
	admin = 0,
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
	model = {"models/csgoidf3pm.mdl"},
	description = [[As you were left to rot from the ordinary military,
		the civilization started their own.
		Your job is to defend the people from threats.
		You are the sniper of these forces.
		With your trusty sniper rifle you take people down
		from a distant location.]],
	weapons = {"arrest_stick", "unarrest_stick", "fas2_m24", "fas2_m1911", "stunstick"},
	command = "militarysniper",
	max = 2,
	salary = 45,
	admin = 0,
	vote = false,
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
	weapons = {"arrest_stick", "unarrest_stick", "fas2_rpk", "fas2_m1911", "stunstick"},
	command = "militaryjuggernaut",
	max = 1,
	salary = 45,
	admin = 0,
	vote = false,
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
	weapons = {"arrest_stick", "unarrest_stick", "fas2_mp5k", "fas2_m1911", "fas2_ifak"},
	command = "militarymedic",
	max = 2,
	salary = 45,
	admin = 0,
	vote = false,
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
	hasLicense = false,
	mayorCanSetSalary = false,
	candemote = true,
	hitman = true,
   	customCheck = function(ply) return table.HasValue(TrustedRanks, ply:GetUserGroup()) end
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

