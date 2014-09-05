/*---------------------------------------------------------------------------
Door groups
---------------------------------------------------------------------------
The server owner can set certain doors as owned by a group of people, identified by their jobs.


HOW TO MAKE A DOOR GROUP:
AddDoorGroup("NAME OF THE GROUP HERE, you will see this when looking at a door", Team1, Team2, team3, team4, etc.)
---------------------------------------------------------------------------*/


-- Example: AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
-- Example: AddDoorGroup("Gundealer only", TEAM_GUN)
AddDoorGroup("Goverment only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR, TEAM_SWAT, TEAM_SWATLEADER, TEAM_ADMIN, TEAM_SWATMEDIC, TEAM_SWATSNIPER, TEAM_SECRETSERVICE, TEAM_SWATEXPLOSIVE, TEAM_SWATHACKER, TEAM_SWATJUGGER, TEAM_STEAMPILOT)
AddDoorGroup("Gundealer only", TEAM_GUN, TEAM_ADMIN)
AddDoorGroup("Outlanders only", TEAM_GANG, TEAM_MOB, TEAM_GANGHACKER, TEAM_GANGMEDIC, TEAM_GANGSNIPER, TEAM_GANGSUPPORT, TEAM_ADMIN)
