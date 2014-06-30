/*---------------------------------------------------------------------------
DarkRP custom food
---------------------------------------------------------------------------

This file contains your custom food.
This file should also contain food from DarkRP that you edited.

THIS WILL ONLY LOAD IF HUNGERMOD IS ENABLED IN darkrp_config/disabled_defaults.lua.
IT IS DISABLED BY DEFAULT.

Note: If you want to edit a default DarkRP food, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the food item to this file and edit it.

The default food can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/modules/hungermod/sh_init.lua#L33

Add food under the following line:
---------------------------------------------------------------------------*/

DarkRP.DARKRP_LOADING = true

DarkRP.registerDarkRPVar("Energy", net.WriteFloat, net.ReadFloat)

DarkRP.createFood("Banana", {
	model = "models/props/cs_italy/bananna.mdl",
	energy = 10,
	price = 10
})
DarkRP.createFood("Bunch of bananas", {
	model = "models/props/cs_italy/bananna_bunch.mdl",
	energy = 20,
	price = 20
})
DarkRP.createFood("Melon", {
	model = "models/props_junk/watermelon01.mdl",
	energy = 20,
	price = 20
})
DarkRP.createFood("Glass bottle", {
	model = "models/props_junk/GlassBottle01a.mdl",
	energy = 20,
	price = 20
})
DarkRP.createFood("Pop can", {
	model = "models/props_junk/PopCan01a.mdl",
	energy = 5,
	price = 5
})
DarkRP.createFood("Plastic bottle", {
	model = "models/props_junk/garbage_plasticbottle003a.mdl",
	energy = 15,
	price = 15
})
DarkRP.createFood("Milk", {
	model = "models/props_junk/garbage_milkcarton002a.mdl",
	energy = 20,
	price = 20
})
DarkRP.createFood("Bottle 1", {
	model = "models/props_junk/garbage_glassbottle001a.mdl",
	energy = 10,
	price = 10
})
DarkRP.createFood("Bottle 2", {
	model = "models/props_junk/garbage_glassbottle002a.mdl",
	energy = 10,
	price = 10
})
DarkRP.createFood("Bottle 3", {
	model = "models/props_junk/garbage_glassbottle003a.mdl",
	energy = 10,
	price = 10
})
DarkRP.createFood("Orange", {
	model = "models/props/cs_italy/orange.mdl",
	energy = 20,
	price = 20
})
DarkRP.DARKRP_LOADING = nil