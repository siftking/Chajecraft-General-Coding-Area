--[[---------------------------------------------------------------------------
Ammo types
---------------------------------------------------------------------------
Ammo boxes that can be purchased in the F4 menu.

Add your custom ammo types in this file. Here's the syntax:
DarkRP.createAmmoType("ammoType", {
    name = "Ammo name",
    model = "Model",
    price = 1234,
    amountGiven = 5678,
    customCheck = function(ply) return ply:IsAdmin()
})

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

Pistol ammo type. Used by p228, desert eagle and all other pistols
Example 1:

DarkRP.createAmmoType("pistol", {
	name = "Pistol ammo",
	model = "models/Items/BoxSRounds.mdl",
	price = 30,
	amountGiven = 24
})

Buckshot ammo, used by the shotguns
Example 2:

DarkRP.createAmmoType("buckshot", {
	name = "Shotgun ammo",
	model = "models/Items/BoxBuckshot.mdl",
	price = 50,
	amountGiven = 8
})

Rifle ammo, usually used by assault rifles
Example 3:

DarkRP.createAmmoType("smg1", {
	name = "Rifle ammo",
	model = "models/Items/BoxMRounds.mdl",
	price = 80,
	amountGiven = 30
})

Add new ammo types under the next line!
---------------------------------------------------------------------------]]
// #NoSimplerr#
-- Pistol Ammo Types
DarkRP.createAmmoType("10x25MM", {
    name = "10x25MM Ammo",
    model = "models/Items/BoxSRounds.mdl",
    price = 37,
    amountGiven = 30,
	category = "Pistol Ammo Types"
})

DarkRP.createAmmoType(".45 ACP", {
    name = ".45 ACP Ammo",
    model = "models/Items/BoxSRounds.mdl",
    price = 37,
    amountGiven = 30,
	category = "Pistol Ammo Types"
})

DarkRP.createAmmoType(".357 SIG", {
    name = ".357 SIG Ammo",
    model = "models/Items/BoxSRounds.mdl",
    price = 37,
    amountGiven = 30,
	category = "Pistol Ammo Types"
})

DarkRP.createAmmoType("9x18MM", {
    name = "9x18MM Ammo",
    model = "models/Items/BoxSRounds.mdl",
    price = 37,
    amountGiven = 30,
	category = "Pistol Ammo Types"
})
-- Heavy Pistol Ammo Types)
DarkRP.createAmmoType(".50 AE", {
    name = ".50 AE Ammo",
    model = "models/Items/357ammo.mdl",
    price = 50,
    amountGiven = 28,
	category = "Heavy Pistol Ammo Types"
})

DarkRP.createAmmoType(".454 Casull", {
    name = ".454 Casull Ammo",
    model = "models/Items/357ammo.mdl",
    price = 50,
    amountGiven = 28,
	category = "Heavy Pistol Ammo Types"
})

-- Submachine Gun Ammo Tpyes
DarkRP.createAmmoType("9x19MM", {
    name = "9x19MM Ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 80,
    amountGiven = 40,
	category = "Submachine Ammo Types"
})

DarkRP.createAmmoType(".380 ACP", {
    name = ".380 ACP Ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 120,
    amountGiven = 60,
	category = "Submachine Ammo Types"
})

-- Assault Ammo Types
DarkRP.createAmmoType("5.45x39MM", {
    name = "5.45x39MM Ammo",
    model = "models/Items/combine_rifle_cartridge01.mdl",
    price = 160,
    amountGiven = 60,
	category = "Assault Rifle Ammo Types"
})

DarkRP.createAmmoType("7.62x39MM", {
    name = "7.62x39MM Ammo",
    model = "models/Items/combine_rifle_cartridge01.mdl",
    price = 160,
    amountGiven = 60,
	category = "Assault Rifle Ammo Types"
})

DarkRP.createAmmoType("5.56x45MM", {
    name = "5.56x45MM Ammo",
    model = "models/Items/combine_rifle_cartridge01.mdl",
    price = 160,
    amountGiven = 60,
	category = "Assault Rifle Ammo Types"
})

-- Shotgun Ammo Types
DarkRP.createAmmoType("12 Gauge", {
    name = "12 Gauge Ammo",
    model = "models/Items/BoxBuckshot.mdl",
    price = 180,
    amountGiven = 32,
	category = "Shotgun Ammo Types"
})

-- Shotgun With Slug Ammo Type
DarkRP.createAmmoType("23x75MMR", {
    name = "23x75MMR Ammo",
    model = "models/Items/BoxBuckshot.mdl",
    price = 180,
    amountGiven = 20,
	category = "Shotgun Ammo Types"
})

-- Sniper Rifle Ammo Types
DarkRP.createAmmoType("7.62x51MM", {
    name = "7.62x51MM Ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 200,
    amountGiven = 40,
	category = "Sniper Rifle Ammo Types"
})

DarkRP.createAmmoType(".50 BMG", {
    name = ".50 BMG Ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 200,
    amountGiven = 40,
	category = "Sniper Rifle Ammo Types"
})
