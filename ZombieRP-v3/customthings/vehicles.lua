--[[---------------------------------------------------------------------------
DarkRP custom vehicles
---------------------------------------------------------------------------

This file contains your custom vehicles.
This file should also contain vehicles from DarkRP that you edited.

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:Vehicles


Add vehicles under the following line:
---------------------------------------------------------------------------]]

// #NoSimplerr#

MemberRanks = {"Member", "Trusted", "donator", "Owner", "superadmin", "admin"}
timer.Simple(1, function() 
DarkRP.createVehicle({
    name = "Pickup",
	label = "Pickup truck",
    model = "models/jessev92/blackmesa/veh_pickup_chassis.mdl",
    price = 4000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Jeep",
    model = "models/jessev92/blackmesa/veh_jeep_chassis.mdl",
    price = 4000,
	allowed = {TEAM_POLICE, TEAM_MILITARY, TEAM_CHIEF}
})
DarkRP.createVehicle({
    name = "Junker1",
	label = "Scrap Car (#1)",
    model = "models/props_vehicles/car002b.mdl",
    price = 3000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Junker2",
	label = "Scrap Car (#2)",
    model = "models/props_vehicles/car003b.mdl",
    price = 3000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Junker3",
	label = "Scrap Car (#3)",
    model = "models/props_vehicles/van001a.mdl",
    price = 3000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Angel",
    model = "models/tiggomods/gta/vc/angelbody.mdl",
    price = 3000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Faggio",
    model = "models/tiggomods/gta/vc/faggiobody.mdl",
    price = 1500,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Freeway",
    model = "models/tiggomods/gta/vc/freewaybody.mdl",
    price = 2500,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "PCJ-600",
    model = "models/tiggomods/gta/vc/pcj-600body.mdl",
    price = 3000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "PizzaBoy",
    model = "models/tiggomods/gta/vc/pizzaboybody.mdl",
    price = 1500,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Sanchez",
    model = "models/tiggomods/gta/vc/sanchezbody.mdl",
    price = 2000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "LAV-25",
    model = "models/jessev92/blackmesa/veh_lav_chassis.mdl",
	customCheck = function(ply) return table.HasValue(MemberRanks, ply:GetUserGroup()) end,
    price = 15000,
	allowed = {TEAM_MILITARY}
})
DarkRP.createVehicle({
    name = "M1114",
    model = "models/jessev92/blackmesa/veh_hmmwv_chassis.mdl",
    price = 5000,
	allowed = {TEAM_MILITARY}
})
end)
