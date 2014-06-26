/*---------------------------------------------------------------------------
Custom ammo types

Add your custom ammo types in this file. Here's the syntax:

GM:AddAmmoType(ammoType, name, model, price, amountGiven, customCheck)

ammoType: The name of the ammo that Garry's mod recognizes
	If you open your SWEP's shared.lua, you can find the ammo name next to
	SWEP.Primary.Ammo = "AMMO NAME HERE"
	or
	SWEP.Secondary.Ammo = "AMMO NAME HERE"

name: The name you want to give to the ammo. This can be anything.

model: The model you want the ammo to have in the F4 menu

price: the price of your ammo in dollars

amountGiven: How much bullets of this ammo is given every time the player buys it

customCheck: (Optional! Advanced!) a Lua function that describes who can buy the ammo.
	Similar to the custom check function for jobs and shipments
	Parameters:
		ply: the player who is trying to buy the ammo

Examples are below!
---------------------------------------------------------------------------*/

-- Pistol ammo type. Used by p228, desert eagle and all other pistols
GM:AddAmmoType("pistol", "Pistol ammo", "models/Items/BoxSRounds.mdl", 30, 24)
GM:AddAmmoType("357", "357 Ammo", "models/Items/357ammo.mdl", 50, 30)
GM:AddAmmoType("m9k_ammo_sniper_rounds", "SNIPER ammo", "models/Items/sniper_round_box.mdl", 200, 120)

-- Buckshot ammo, used by the shotguns
GM:AddAmmoType("buckshot", "Shotgun ammo", "models/Items/BoxBuckshot.mdl", 50, 8)

-- Rifle ammo, usually used by assault rifles
GM:AddAmmoType("smg1", "SMG Ammo", "models/Items/BoxMRounds.mdl", 80, 30)

GM:AddAmmoType("XBowBolt", "CrossBow Bolts", "models/Items/Crossbowrounds.mdl", 80, 15)

-- Explosive Ammo
GM:AddAmmoType("RPG_Round", "Rocket Launcher Ammo", "models/Items/car_battery01.mdl", 180, 15)

-- VortEnergy
GM:AddAmmoType("ammo_vortenergy", "Pack of VortEnergy", "models/Items/combine_rifle_ammo01.mdl", 60, 15)

-- Pulse Ammo
GM:AddAmmoType("AR2", "Assault Rifle Ammo", "models/Items/combine_rifle_cartridge01.mdl", 60, 60)
GM:AddAmmoType("Gravity", "SMG Only Ammo", "models/Items/BoxMRounds.mdl", 60, 60)

// Pistol Ammo Types
AddAmmoType("fas2_ammo_10x25", "10x25MM Ammo", "models/Items/BoxSRounds.mdl", 37, 30)
AddAmmoType("fas2_ammo_45acp", ".45 ACP Ammo", "models/Items/BoxSRounds.mdl", 37, 30)
AddAmmoType("fas2_ammo_357sig", ".357 SIG Ammo", "models/Items/BoxSRounds.mdl", 37, 30)
AddAmmoType("fas2_ammo_9x18", "9x18MM Ammo", "models/Items/BoxSRounds.mdl", 37, 30)

// Heavy Pistol Ammo Types
AddAmmoType("fas2_ammo_50ae", ".50 AE Ammo", "models/Items/357ammo.mdl", 50, 28)
AddAmmoType("fas2_ammo_454casull", ".454 Casull Ammo", "models/Items/357ammo.mdl", 50, 28)

// Submachine Gun Ammo Tpyes
AddAmmoType("fas2_ammo_9x19", "9x19MM Ammo", "models/Items/BoxMRounds.mdl", 80, 40)
AddAmmoType("fas2_ammo_380acp", ".380 ACP Ammo", "models/Items/BoxMRounds.mdl", 120, 60)

// Assault Ammo Types
AddAmmoType("fas2_ammo_545x39", "5.45x39MM Ammo", "models/Items/combine_rifle_cartridge01.mdl", 160, 60)
AddAmmoType("fas2_ammo_762x39", "7.62x39MM Ammo", "models/Items/combine_rifle_cartridge01.mdl", 160, 60)
AddAmmoType("fas2_ammo_556x45", "5.56x45MM Ammo", "models/Items/combine_rifle_cartridge01.mdl", 160, 60)

// Shotgun Ammo Types
AddAmmoType("fas2_ammo_12gauge", "12 Guage Ammo", "models/Items/BoxBuckshot.mdl", 180, 32)

// Shotgun With Slug Ammo Type
AddAmmoType("fas2_ammo_23x75", "23x75 Ammo", "models/Items/BoxBuckshot.mdl", 180, 20)

// Sniper Rifle Ammo Types
AddAmmoType("fas2_ammo_762x51", "7.62x51MM Ammo", "models/Items/BoxMRounds.mdl", 200, 40)
AddAmmoType("fas2_ammo_50bmg", ".50 BMG Ammo", "models/Items/BoxMRounds.mdl", 200, 40)

// Explosive Ammo Types
AddAmmoType("fas2_ammo_m67", ".50 BMG Ammo", "models/Items/BoxMRounds.mdl", 240, 12)
