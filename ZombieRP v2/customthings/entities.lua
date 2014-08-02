/*---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

Add entities under the following line:
---------------------------------------------------------------------------*/
AddEntity("Bronze Printer", {
	ent = "rprint_bronzeprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 1000,
	max = 3,
	cmd = "/buybronzeprint",
	allowed = {TEAM_MEDIC, TEAM_COOK, TEAM_GUN, TEAM_CITIZEN, TEAM_SCAVENGER, TEAM_GANG, TEAM_MOB, TEAM_ADMIN, TEAM_RUNNER, TEAM_HITMAN, TEAM_ENGINEER, TEAM_PGUARD, TEAM_BMDEALER, TEAM_THIEF, TEAM_PROTHIEF, TEAM_ADVGUN, TEAM_ASSASSIN}
})

AddEntity("Silver Printer", {
	ent = "rprint_silverprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 3250,
	max = 2,
	cmd = "/buysilverprint",
	allowed = {TEAM_MEDIC, TEAM_COOK, TEAM_GUN, TEAM_CITIZEN, TEAM_SCAVENGER, TEAM_GANG, TEAM_MOB, TEAM_ADMIN, TEAM_RUNNER, TEAM_HITMAN, TEAM_ENGINEER, TEAM_PGUARD, TEAM_BMDEALER, TEAM_THIEF, TEAM_PROTHIEF, TEAM_ADVGUN, TEAM_ASSASSIN}
})

AddEntity("Gold Printer", {
	ent = "rprint_goldprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 6500,
	max = 2,
	cmd = "/buygoldprint",
	allowed = {TEAM_MEDIC, TEAM_COOK, TEAM_GUN, TEAM_CITIZEN, TEAM_SCAVENGER, TEAM_GANG, TEAM_MOB, TEAM_ADMIN, TEAM_RUNNER, TEAM_HITMAN, TEAM_ENGINEER, TEAM_PGUARD, TEAM_BMDEALER, TEAM_THIEF, TEAM_PROTHIEF, TEAM_ADVGUN, TEAM_ASSASSIN}
})

AddEntity("Platinum Printer", {
	ent = "rprint_platinum",
	model = "models/props_c17/consolebox01a.mdl",
	price = 9750,
	max = 1,
	cmd = "/buyplatinumprint",
	allowed = {TEAM_MEDIC, TEAM_COOK, TEAM_GUN, TEAM_CITIZEN, TEAM_SCAVENGER, TEAM_GANG, TEAM_MOB, TEAM_ADMIN, TEAM_RUNNER, TEAM_HITMAN, TEAM_ENGINEER, TEAM_PGUARD, TEAM_BMDEALER, TEAM_THIEF, TEAM_PROTHIEF, TEAM_ADVGUN, TEAM_ASSASSIN}
})

AddEntity("Quantum Printer", {
	ent = "rprint_quantum",
	model = "models/props_c17/consolebox01a.mdl",
	price = 16500,
	max = 1,
	cmd = "/buyquantumprint",
	allowed = {TEAM_MEDIC, TEAM_COOK, TEAM_GUN, TEAM_CITIZEN, TEAM_SCAVENGER, TEAM_GANG, TEAM_MOB, TEAM_ADMIN, TEAM_RUNNER, TEAM_HITMAN, TEAM_ENGINEER, TEAM_PGUARD, TEAM_BMDEALER, TEAM_THIEF, TEAM_PROTHIEF, TEAM_ADVGUN, TEAM_ASSASSIN}
})

AddEntity("Bandages", {
	ent = "fas2_ammo_bandages",
	model = "models/Items/BoxMRounds.mdl",
	price = 90,
	max = 9000,
	cmd = "/buybandage",
	allowed = {TEAM_MEDIC, TEAM_SWATMEDIC}
})

AddEntity("Universal Ammo Kit", {
	ent = "fas2_ammokit",
	model = "models/Items/BoxMRounds.mdl",
	price = 300,
	max = 90000,
	cmd = "/buyammobox"
})

AddEntity("Quickcloths", {
	ent = "fas2_ammo_quikclots",
	model = "models/Items/BoxMRounds.mdl",
	price = 120,
	max = 9000,
	cmd = "/buycloths",
	allowed = {TEAM_MEDIC, TEAM_SWATMEDIC}
})

AddEntity("Hemostats", {
	ent = "fas2_ammo_hemostats",
	model = "models/Items/BoxMRounds.mdl",
	price = 150,
	max = 9000,
	cmd = "/buyhemo",
	allowed = {TEAM_MEDIC, TEAM_SWATMEDIC}
})

AddEntity("Medical Supplies Package", {
	ent = "fas2_ammo_medical",
	model = "models/Items/item_item_crate_dynamic.mdl",
	price = 350,
	max = 9000,
	cmd = "/buymedicsupplies",
	allowed = {TEAM_MEDIC, TEAM_SWATMEDIC}
})

AddEntity("Anti-Zombie Mine", {
	ent = "combine_mine",
	model = "models/props_combine/combine_mine01.mdl",
	price = 100,
	max = 60,
	cmd = "/buymine",
	allowed = {TEAM_BMDEALER, TEAM_ADMIN}
})

AddEntity("Drug lab", {
	ent = "drug_lab",
	model = "models/props_lab/crematorcase.mdl",
	price = 400,
	max = 5,
	cmd = "/buydruglab",
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_ADMIN}
})

AddEntity("7.62x39mm Turret (Machine-Gun)", {
	ent = "turret_bullets",
	model = "models/reach/weapons/turret/hmg_fix.mdl",
	price = 15000,
	max = 50,
	cmd = "/machineturret",
	allowed = TEAM_ENGINEER
})

AddEntity("14mm Turret (AA)", {
	ent = "turret_bullets2",
	model = "models/turret/mg_turret.mdl",
	price = 15000,
	max = 50,
	cmd = "/machineaa",
	allowed = TEAM_ENGINEER
})

AddEntity("40MM HE Turret (Grenade)", {
	ent = "turret_grenade",
	model = "models/turret/rail_turret.mdl",
	price = 50000,
	max = 50,
	cmd = "/machinegrenade",
	allowed = TEAM_ENGINEER
})

AddEntity("Fuel Can", {
	ent = "weapon_scarrefuel",
	model = "models/props_junk/gascan001a.mdl",
	price = 650,
	max = 50,
	cmd = "/fuelcan"
})
