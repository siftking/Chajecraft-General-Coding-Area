--[[---------------------------------------------------------------------------
DarkRP custom vehicles
---------------------------------------------------------------------------

This file contains your custom vehicles.
This file should also contain vehicles from DarkRP that you edited.

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:Vehicles


Add vehicles under the following line:
---------------------------------------------------------------------------]]
DarkRP.createVehicle({
    name = "Crown Vic",
    model = "models/jessev92/blackmesa/veh_crownvic_chassis.mdl",
    price = 3500,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Pickup",
    model = "models/jessev92/blackmesa/veh_pickup_chassis.mdl",
    price = 4000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Jeep",
    model = "models/jessev92/blackmesa/veh_jeep_chassis.mdl",
    price = 4000,
	allowed = {TEAM_POLICE}
})
DarkRP.createVehicle({
    name = "Junker1",
    model = "models/props_vehicles/car002b.mdl",
    price = 3000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Junker2",
    model = "models/props_vehicles/car003b.mdl",
    price = 3000,
	allowed = {TEAM_ENGINEER}
})
DarkRP.createVehicle({
    name = "Junker3",
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
    name = "PCJ-600",
    model = "models/jessev92/blackmesa/veh_hmmwv_chassis.mdl",
    price = 5000,
	allowed = {TEAM_MILITARY}
})
DarkRP.createVehicle({
    name = "LAV-25",
    model = "models/jessev92/blackmesa/veh_lav_chassis.mdl",
	customCheck = function(ply) return table.HasValue(MemberRanks, ply:GetUserGroup()) end,
    price = 15000,
	allowed = {TEAM_MILITARY}
})
