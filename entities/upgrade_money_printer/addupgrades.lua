UpgradePrinterLevels = {}

function AddUpgrade( data, rankrequired )
	local upgrades = { lvl = data.level, ucost = data.upgradecost, pa = data.printamount, pt = data.printtime, ohc = data.overheatchance, h = data.health, rank = rankrequired }
	
	table.insert( UpgradePrinterLevels, upgrades )
end

//*Notes*
// Level 1 is default. Ranks or Upgrade Cost do not apply
// Print amount is the amount printed every PrintTime.
// PrintTime is in seconds.
// Overheat chance is the chance of blowing up every Print Time (also malfunction rate). DO NOT USE DECIMALS
// Rank is the rank that is required to upgrade to that level. "*" for all player groups
// If these are not followed correctly, expect errors!
// Example of donator upgrade:
//AddUpgrade( { level = 1, 
//	upgradecost = 0, 
//	printamount = 250, 
//	printtime = 90, 
//	overheatchance = 11, 
//	health = 100 }, 
//{ "donator", "donatorplus", "vip" } ) Put all the ranks you want to have access to the upgrade, in the {}. "*" for all player groups.

GroupsWhoBypassAllPermissions = { "admin" } // Groups that can use all printers "none" for no groups or "*" for all.

AddUpgrade( { level = 1, 
	upgradecost = 0, 
	printamount = 250, 
	printtime = 90, 
	overheatchance = 11, 
	health = 100 }, 
{ "*" } )

AddUpgrade( { level = 2, 
	upgradecost = 2000, 
	printamount = 500, 
	printtime = 85, 
	overheatchance = 10, 
	health = 105 }, 
{ "*" } )

AddUpgrade( { level = 3, 
	upgradecost = 3500, 
	printamount = 750, 
	printtime = 80, 
	overheatchance = 9, 
	health = 125 }, 
{ "*" } )	

AddUpgrade( { level = 4, 
	upgradecost = 5500, 
	printamount = 950, 
	printtime = 75, 
	overheatchance = 8, 
	health = 155 }, 
{ "*" } )

AddUpgrade( { level = 5, 
	upgradecost = 8000, 
	printamount = 1300, 
	printtime = 70, 
	overheatchance = 7, 
	health = 200 }, 
{ "*" } )	
