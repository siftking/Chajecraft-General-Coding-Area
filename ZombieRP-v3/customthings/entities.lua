--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]
// #NoSimplerr#
AddEntity("Bronze Printer", {
	ent = "rprint_bronzeprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 1000,
	category = "Money Printers",
	max = 3,
	cmd = "/buybronzeprint",
	customCheck = function(ply) return not ply:IsGovernment() end
})
AddEntity("Silver Printer", {
	ent = "rprint_silverprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 3250,
	category = "Money Printers",
	max = 2,
	cmd = "/buysilverprint",
	customCheck = function(ply) return not ply:IsGovernment() end
})
AddEntity("Gold Printer", {
	ent = "rprint_goldprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 6500,
	category = "Money Printers",
	max = 2,
	cmd = "/buygoldprint",
	customCheck = function(ply) return not ply:IsGovernment() end
})
AddEntity("Platinum Printer", {
	ent = "rprint_platinum",
	model = "models/props_c17/consolebox01a.mdl",
	price = 9750,
	category = "Money Printers",
	max = 1,
	cmd = "/buyplatinumprint",
	customCheck = function(ply) return not ply:IsGovernment() end
})
AddEntity("Quantum Printer", {
	ent = "rprint_quantum",
	model = "models/props_c17/consolebox01a.mdl",
	price = 16500,
	category = "Money Printers",
	max = 1,
	cmd = "/buyquantumprint",
	customCheck = function(ply) return not ply:IsGovernment() end
})

AddEntity("Bandages", {
	ent = "fas2_ammo_bandages",
	model = "models/Items/BoxMRounds.mdl",
	price = 90,
	category = "Medical",
	max = 9000,
	cmd = "/buybandage",
	allowed = {TEAM_MEDIC, TEAM_MILITARYMEDIC}
})

AddEntity("Universal Ammo Kit", {
	ent = "fas2_ammokit",
	model = "models/Items/BoxMRounds.mdl",
	price = 300,
	category = "Tools",
	max = 90000,
	cmd = "/buyammobox"
})

AddEntity("Quickcloths", {
	ent = "fas2_ammo_quikclots",
	model = "models/Items/BoxMRounds.mdl",
	price = 120,
	category = "Medical",
	max = 9000,
	cmd = "/buycloths",
	allowed = {TEAM_MEDIC, TEAM_MILITARYMEDIC}
})

AddEntity("Hemostats", {
	ent = "fas2_ammo_hemostats",
	model = "models/Items/BoxMRounds.mdl",
	price = 150,
	category = "Medical",
	max = 9000,
	cmd = "/buyhemo",
	allowed = {TEAM_MEDIC, TEAM_MILITARYMEDIC}
})

AddEntity("Medical Supplies Package", {
	ent = "fas2_ammo_medical",
	model = "models/Items/item_item_crate_dynamic.mdl",
	price = 350,
	category = "Medical",
	max = 9000,
	cmd = "/buymedicsupplies",
	allowed = {TEAM_MEDIC, TEAM_MILITARYMEDIC, TEAM_GANGMEDIC}
})

AddEntity("7.62x39mm Turret (Machine-Gun)", {
	ent = "turret_bullets",
	model = "models/reach/weapons/turret/hmg_fix.mdl",
	price = 15000,
	category = "Turrets",
	max = 50,
	cmd = "/machineturret",
	allowed = TEAM_ENGINEER
})
AddEntity("14mm Turret (AA)", {
	ent = "turret_bullets2",
	model = "models/turret/mg_turret.mdl",
	price = 15000,
	category = "Turrets",
	max = 50,
	cmd = "/machineaa",
	allowed = TEAM_ENGINEER
})
AddEntity("40MM HE Turret (Grenade)", {
	ent = "turret_grenade",
	model = "models/turret/rail_turret.mdl",
	price = 50000,
	category = "Turrets",
	max = 50,
	cmd = "/machinegrenade",
	allowed = TEAM_ENGINEER
})

AddEntity("Fuel Can", {
	ent = "weapon_scarrefuel",
	model = "models/props_junk/gascan001a.mdl",
	price = 650,
	category = "Tools",
	max = 9999,
	cmd = "/fuelcan"
})
DarkRP.createEntity("Box of Basic Ingredient", {
	ent = "kjulo_druglab",
	model = "models/props/de_nuke/NuclearContainerBoxClosed.mdl",
	price = 500,
	category = "Drugs",
	max = 1,
	cmd = "buynewdrugbox",
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("Stove", {
	ent = "kjulo_drugstove",
	model = "models/props_c17/furnitureStove001a.mdl",
	price = 600,
	category = "Drugs",
	max = 1,
	cmd = "buydrugstove",
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("Large Vial", {
	ent = "kjulo_drugvial",
	model = "models/props_c17/pottery05a.mdl",
	price = 700,
	category = "Drugs",
	max = 6,
	cmd = "buydrugvial",
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("Empty Package", {
	ent = "kjulo_drug_package",
	model = "models/props_lab/box01a.mdl",
	price = 100,
	category = "Drugs",
	max = 2,
	cmd = "buydrugpackage",
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("Carbonator", {
	ent = "kjulo_drugcarbon",
	model = "models/props_c17/TrapPropeller_Engine.mdl",
	price = 4000,
	category = "Drugs",
	max = 1,
	cmd = "buykjulo_drugcarbon",
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("Ventilator", {
	ent = "kjulo_drugvent",
	model = "models/props_c17/FurnitureBoiler001a.mdl",
	price = 2000,
	category = "Drugs",
	max = 1,
	cmd = "buykjulo_drugvent",
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("CH2", {
	ent = "kjulo_drug_compound_ch2",
	model = "models/props_junk/garbage_milkcarton001a.mdl",
	price = 49,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_ch2",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("3HMa", {
	ent = "kjulo_drug_compound_3hma",
	model = "models/props_junk/garbage_plasticbottle001a.mdl",
	price = 52,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_3hma",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("BrHe", {
	ent = "kjulo_drug_compound_brhe",
	model = "models/props_junk/garbage_plasticbottle002a.mdl",
	price = 45,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_brhe",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("OZn", {
	ent = "kjulo_drug_compound_ozn",
	model = "models/props_junk/garbage_glassbottle001a.mdl",
	price = 60,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_ozn",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("CsFr", {
	ent = "kjulo_drug_compound_csfr",
	model = "models/props_junk/metal_paintcan001a.mdl",
	price = 44,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_csfr",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("KCaLi", {
	ent = "kjulo_drug_compound_kcali",
	model = "models/props_junk/plasticbucket001a.mdl",
	price = 59,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_kcali",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("LiFr", {
	ent = "kjulo_drug_compound_lifr",
	model = "models/props_junk/propane_tank001a.mdl",
	price = 42,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_lifr",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("BrO", {
	ent = "kjulo_drug_compound_bro",
	model = "models/props_junk/PropaneCanister001a.mdl",
	price = 53,
	category = "Drugs",
	max = 3,
	cmd = "buykjulo_drug_compound_bro",
	buttonColor = Color(200, 100, 100, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

DarkRP.createEntity("How to Cook Drugs", {
	ent = "kjulo_drugguide",
	model = "models/props_junk/garbage_newspaper001a.mdl",
	price = 5,
	category = "Drugs",
	max = 1,
	cmd = "buykjulo_drugguide",
	buttonColor = Color(255, 255, 255, 255),
	allowed = {TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY},
})

AddEntity("LockPick", {
	ent = "ent_lockpick",
	model = "models/props_c17/TrapPropeller_Lever.mdl",
	price = 100,
	category = "Tools",
	max = 9999,
	cmd = "/lockpick",
	allowed = TEAM_THIEF
})

AddEntity("LockPick", {
	ent = "ent_lockpick",
	model = "models/props_c17/TrapPropeller_Lever.mdl",
	price = 600,
	category = "Tools",
	max = 9999,
	cmd = "/lockpickz",
	allowed = TEAM_BMDEALER
})
