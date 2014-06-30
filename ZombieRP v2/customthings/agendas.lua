/*

--------------------------------------------------------
HOW TO MAKE AN AGENDA
--------------------------------------------------------
AddAgenda(Title of the agenda, Manager (who edits it), Listeners (the ones who just see and follow the agenda))

WARNING: THE AGENDAS HAVE TO BE UNDER THE TEAMS IN SHARED.LUA. IF THEY ARE NOT, IT MIGHT MUCK UP!

The default agenda's, can also be used as examples:
*/
AddAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
AddAgenda("Survivor Protection Team's Agenda", TEAM_MAYOR, {TEAM_CHIEF, TEAM_POLICE, TEAM_ADMIN})
AddAgenda("Military Agenda", TEAM_SWATLEADER, {TEAM_SWATMEDIC, TEAM_SWATSNIPER, TEAM_SWATEXPLOSIVE, TEAM_SWAT, TEAM_SWATHACKER, TEAM_SWATJUGGER})
AddAgenda("Assassins Agenda", TEAM_ASSASSIN, {TEAM_NINJA, TEAM_VIPNINJA})
