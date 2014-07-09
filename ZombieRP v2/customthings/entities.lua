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
	cmd = "/buybronzeprint"
})

AddEntity("Silver Printer", {
	ent = "rprint_silverprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 3000,
	max = 2,
	cmd = "/buysilverprint"
})

AddEntity("Gold Printer", {
	ent = "rprint_goldprinter",
	model = "models/props_c17/consolebox01a.mdl",
	price = 5000,
	max = 2,
	cmd = "/buygoldprint"
})

AddEntity("Platinum Printer", {
	ent = "rprint_platinum",
	model = "models/props_c17/consolebox01a.mdl",
	price = 8750,
	max = 1,
	cmd = "/buyplatinumprint"
})

AddEntity("Quantum Printer", {
	ent = "rprint_quantum",
	model = "models/props_c17/consolebox01a.mdl",
	price = 15000,
	max = 1,
	cmd = "/buyquantumprint"
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

AddEntity("Gun lab", {
	ent = "gunlab",
	model = "models/props_c17/TrapPropeller_Engine.mdl",
	price = 500,
	max = 1,
	cmd = "/buygunlab",
	allowed = TEAM_GUN
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
