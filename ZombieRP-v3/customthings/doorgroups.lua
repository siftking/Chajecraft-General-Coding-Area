--[[---------------------------------------------------------------------------
Door groups
---------------------------------------------------------------------------
The server owner can set certain doors as owned by a group of people, identified by their jobs.


HOW TO MAKE A DOOR GROUP:
AddDoorGroup("NAME OF THE GROUP HERE, you will see this when looking at a door", Team1, Team2, team3, team4, etc.)
---------------------------------------------------------------------------]]
AddDoorGroup("Government Only", TEAM_POLICE, TEAM_CHIEF, TEAM_MAYOR, TEAM_MILITARY, TEAM_MILITARYMEDIC, TEAM_MILITARYCOMMANDER, TEAM_MILITARYSNIPER, TEAM_MILITARYJUG)
AddDoorGroup("Arms Dealer Only", TEAM_GUN)
AddDoorGroup("Bandits Only", TEAM_GANG, TEAM_MOB, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGHEAVY)

-- Example: AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
-- Example: AddDoorGroup("Gundealer only", TEAM_GUN)
