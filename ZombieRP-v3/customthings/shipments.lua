--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]
// #NoSimplerr#

// Arms Dealer

DarkRP.createShipment("Magnum", {
	model = "models/weapons/w_357.mdl",
	entity = "fas2_ragingbull",
	price = 1700,
	category = "Pistol & Heavy Pistols",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("Remington 870", {
	model = "models/weapons/world/shotguns/ks23.mdl",
	entity = "fas2_rem870",
	category = "Shotguns",
	price = 2250,
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("AK-12", {
	model = "models/weapons/world/rifles/ak12.mdl",
	entity = "fas2_ak12",
	category = "Rifles",
	price = 4000,
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("AK-47", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "fas2_ak74",
	price = 3200,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("AK-74", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "fas2_ak47",
	price = 3200,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("AN-92", {
	model = "models/weapons/world/rifles/an94.mdl",
	entity = "fas2_an94",
	category = "Rifles",
	price = 3250,
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("FAMAS F1", {
	model = "models/weapons/w_rif_famas.mdl",
	entity = "fas2_famas",
	price = 2650,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("G36C", {
	model = "models/weapons/world/rifles/ak12.mdl",
	entity = "fas2_g36c",
	price = 2250,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("G3A3", {
	model = "models/weapons/world/rifles/ak12.mdl",
	entity = "fas2_g3",
	price = 3800,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("Glock-20", {
	model = "models/weapons/w_pist_glock18.mdl",
	entity = "fas2_glock20",
	price = 1570,
	category = "Pistol & Heavy Pistols",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("IMI Desert Eagle", {
	model = "models/weapons/w_pist_deagle.mdl",
	entity = "fas2_deagle",
	category = "Pistol & Heavy Pistols",
	price = 1650,
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("IMI Galil", {
	model = "models/weapons/w_rif_galil.mdl",
	entity = "fas2_galil",
	price = 3200,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("IMI Uzi", {
	model = "models/weapons/w_smg_mp5.mdl",
	entity = "fas2_uzi",
	price = 2000,
	category = "SMGs",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("KS-23", {
	model = "models/weapons/world/shotguns/ks23.mdl",
	entity = "fas2_ks23",
	price = 4050,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("M14", {
	model = "models/weapons/world/rifles/sks.mdl",
	entity = "fas2_m14",
	price = 3400,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("M21", {
	model = "models/weapons/w_snip_awp.mdl",
	entity = "fas2_m21",
	category = "Sniper Rifles",
	price = 5500,
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("M3 Super 90", {
	model = "models/weapons/w_shot_m3super90.mdl",
	entity = "fas2_m3s90",
	price = 4200,
	category = "Shotguns",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("M82", {
	model = "models/weapons/w_snip_sg550.mdl",
	entity = "fas2_m82",
	price = 5700,
	category = "Sniper Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("MP5A5", {
	model = "models/weapons/w_smg_mp5.mdl",
	entity = "fas2_mp5a5",
	price = 2650,
	category = "SMGs",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("MP5K", {
	model = "models/weapons/w_smg_mp5.mdl",
	entity = "fas2_mp5k",
	price = 2600,
	category = "SMGs",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("MP5SD6", {
	model = "models/weapons/w_smg_mp5.mdl",
	entity = "fas2_mp5sd6",
	price = 2650,
	category = "SMGs",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("OT-s33 Pernach", {
	model = "models/weapons/world/pistols/ots33.mdl",
	entity = "fas2_ots33",
	price = 1570,
	category = "Pistol & Heavy Pistols",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("P226", {
	model = "models/weapons/w_pist_p228.mdl",
	entity = "fas2_p226",
	price = 1400,
	category = "Pistol & Heavy Pistols",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("PP-19 Bizon", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "fas2_pp19",
	price = 2650,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("RPK-47", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "fas2_rpk",
	category = "Rifles",
	price = 3400,
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("Sako RK-95", {
	model = "models/weapons/world/rifles/rk95.mdl",
	entity = "fas2_rk95",
	price = 2850,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("SG 550", {
	model = "models/weapons/w_snip_sg550.mdl",
	entity = "fas2_sg550",
	price = 2850,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("SG 552", {
	model = "models/weapons/w_rif_sg552.mdl",
	entity = "fas2_sg552",
	price = 2850,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("SKS", {
	model = "models/weapons/world/rifles/sks.mdl",
	entity = "fas2_sks",
	price = 5600,
	category = "Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})

DarkRP.createShipment("SR-25", {
	model = "models/weapons/w_snip_g3sg1.mdl",
	entity = "fas2_sr25",
	price = 5500,
	category = "Sniper Rifles",
	amount = 10,
	allowed = {TEAM_GUN}
})
// Black Market Dealer
DarkRP.createShipment("M67 Grenade", {
	model = "models/Items/grenadeAmmo.mdl",
	entity = "fas2_m67",
	price = 6000,
	category = "Illegal",
	amount = 5,
	allowed = {TEAM_BMD}
})

DarkRP.createShipment("Machete", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "fas2_machete",
	price = 2000,
	category = "Illegal",
	amount = 5,
	allowed = {TEAM_BMD}
})

DarkRP.createShipment("Knife", {
	model = "models/weapons/w_knife_t.mdl",
	entity = "fas2_dv2",
	price = 1000,
	category = "Illegal",
	amount = 5,
	allowed = {TEAM_BMD}
})
