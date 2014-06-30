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
AddEntity("Normal Printer", {
	ent = "money_normal_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 1999,
	max = 2,
	cmd = "/buynormalprinter"
})
	
AddEntity("Coal Money Printer", {
	ent = "money_coal_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 4999,
	max = 2,
	cmd = "/buycoalprinter"
})

AddEntity("Ruby Money Printer", {
	ent = "money_ruby_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 9999,
	max = 2,
	cmd = "/buyrubyprinter"
})

AddEntity("Sapphire Money Printer", {
	ent = "money_sapphire_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 24999,
	max = 2,
	cmd = "/buysapphireprinter",
	customCheck = function(ply)
    return ply:GetUserGroup() == "donator" or ply:IsAdmin()
    end
})

AddEntity("Emerald Money Printer", {
	ent = "money_emerald_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 34999,
	max = 2,
	cmd = "/buyemeraldprinter",
	customCheck = function(ply)
    return ply:GetUserGroup() == "donator" or ply:IsAdmin()
    end
})

AddEntity("Diamond Money Printer", {
	ent = "money_diamond_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 49999,
	max = 2,
	cmd = "/buydiamondprinter",
	customCheck = function(ply)
    return ply:GetUserGroup() == "donator" or ply:IsAdmin()
    end
})

AddEntity("Pearl Money Printer", {
	ent = "money_pearl_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 74999,
	max = 2,
	cmd = "/buypearlprinter",
	customCheck = function(ply)
    return ply:GetUserGroup() == "donator" or ply:IsAdmin()
    end
})

AddEntity("Platinum Money Printer", {
	ent = "money_platinum_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 99999,
	max = 2,
	cmd = "/buyplatinumprinter",
	customCheck = function(ply)
    return ply:GetUserGroup() == "donator" or ply:IsAdmin()
    end
})

AddEntity("Black Money Printer", {
	ent = "money_black_printer",
	model = "models/props_lab/reciever01a.mdl",
	price = 199999,
	max = 2,
	cmd = "/buyblackprinter",
	customCheck = function(ply)
    return ply:GetUserGroup() == "donator" or ply:IsAdmin()
    end
})

AddEntity("Coolant Cell", {
	ent = "money_coolant_cell",
	model = "models/items/battery.mdl",
	price = 799,
	max = 9000,
	cmd = "/buycool"
})

AddEntity("Printer Upgrade", {
	ent = "money_printer_upgrade",
	model = "models/items/battery.mdl",
	max = 9000,
	price = 799,
	cmd = "/buyupdrageprinter"
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