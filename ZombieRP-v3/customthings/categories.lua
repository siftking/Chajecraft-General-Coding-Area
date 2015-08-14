--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
http://wiki.darkrp.com/index.php/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
// #NoSimplerr#

// Jobs
DarkRP.createCategory{
	name = "Government",
	categorises = "jobs",
	startExpanded = true,
	color = Color(0,140,255,255),
	sortOrder = 2
}

DarkRP.createCategory{
	name = "Normal",
	categorises = "jobs",
	startExpanded = true,
	color = Color(0,140,255,255),
	sortOrder = 1
}

DarkRP.createCategory{
	name = "Outlaw",
	categorises = "jobs",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 3
}

// Ammo
DarkRP.createCategory{
	name = "Pistol Ammo Types",
	categorises = "ammo",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 1
}

DarkRP.createCategory{
	name = "Heavy Pistol Ammo Types",
	categorises = "ammo",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 2
}

DarkRP.createCategory{
	name = "Submachine Ammo Types",
	categorises = "ammo",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 3
}

DarkRP.createCategory{
	name = "Assault Rifle Ammo Types",
	categorises = "ammo",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 4
}

DarkRP.createCategory{
	name = "Shotgun Ammo Types",
	categorises = "ammo",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 5
}

DarkRP.createCategory{
	name = "Sniper Rifle Ammo Types",
	categorises = "ammo",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

// Guns
DarkRP.createCategory{
	name = "Pistol & Heavy Pistols",
	categorises = "shipments",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "Rifles",
	categorises = "shipments",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "Shotguns",
	categorises = "shipments",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "SMGs",
	categorises = "shipments",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "Sniper Rifles",
	categorises = "shipments",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

// Black Market Dealer
DarkRP.createCategory{
	name = "Illegal",
	categorises = "shipments",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

// Entities
DarkRP.createCategory{
	name = "Drugs",
	categorises = "entities",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "Money Printers",
	categorises = "entities",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "Medical",
	categorises = "entities",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "Turrets",
	categorises = "entities",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}

DarkRP.createCategory{
	name = "Tools",
	categorises = "entities",
	startExpanded = true,
	color = Color(94,94,94,255),
	sortOrder = 6
}
