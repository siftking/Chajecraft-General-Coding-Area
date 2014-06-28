// Weird file name, I know, but this is where you change properties of items
// I'm gonna experiment to see if I can add custom ones
// This is the masterlist of items, how does this works? Easy, it's a JSON table
// Damn, looks hard/new right? don't worry, just come here http://www.jsoneditoronline.org/ and paste
// the code from the line: 11 to 237, take a look at this pic: http://i.imgur.com/4KFg3aj.jpg
// We paste on the left window, and then we press the > button, then we have something more easy to read
// Here we can config the data: http://i.imgur.com/DHuGvCf.jpg example the price, once we finish, we must
// press the < button, the we copy the left window content to replace the line 11 to 237

AddCSLuaFile()

STOREDATA = [[
{
  "Booster": [
    {
      "Name": "Turbine",
      "Speed": 1,
      "Signal": -0.1,
      "Price": 500,
      "Control": 0.4,
      "spawn": "sent_truster",
      "Model": "models/maxofs2d/hover_propeller.mdl"
    },
    {
      "Name": "Propulsor",
      "Speed": 1.5,
      "Price": 1200,
      "Control": -0.25,
      "Fuel": -0.25,
      "spawn": "sent_propulsor",
      "Model": "models/maxofs2d/thruster_projector.mdl"
    },
    {
      "Name": "Afterburner",
      "Speed": 2,
      "Signal": -0.25,
      "Price": 2500,
      "Control": -0.4,
      "spawn": "sent_afterburner",
      "Fuel": -0.1,
      "Model": "models/XQM/afterburner1.mdl"
    },
    {
      "Name": "",
      "Price": 500,
      "spawn": "",
      "Model": ""
    }
  ],
  "Signal": [
    {
      "Name": "Pipe",
      "Signal": 1,
      "Price": 400,
      "Control": 0.25,
      "spawn": "sent_anthena",
      "Model": "models/props_c17/TrapPropeller_Lever.mdl"
    },
    {
      "Name": "Electric beam",
      "Signal": 1.5,
      "Battery": -0.25,
      "Price": 1000,
      "Speed": -0.25,
      "spawn": "sent_battery",
      "Model": "models/Items/battery.mdl"
    },
    {
      "Name": "Nuclear core",
      "Signal": 2.5,
      "Battery": -1,
      "Price": 2500,
      "Control": 0.25,
      "spawn": "sent_nuclearcore",
      "Speed": -0.2,
      "Model": "models/maxofs2d/hover_basic.mdl"
    },
    {
      "Name": "",
      "Price": 500,
      "spawn": "",
      "Model": ""
    }
  ],
  "Fuel": [
    {
      "Name": "Gas tank",
      "Fuel": 1,
      "Speed": -0.1,
      "Price": 500,
      "Control": 0.1,
      "spawn": "sent_fuel",
      "Model": "models/props_c17/TrapPropeller_Lever.mdl"
    },
    {
      "Name": "Propane",
      "Fuel": 1.75,
      "Speed": -0.2,
      "Price": 1250,
      "Control": 0.15,
      "spawn": "sent_propane",
      "Model": "models/props_junk/propane_tank001a.mdl"
    },
    {
      "Name": "Oil Drum",
      "Fuel": 2.5,
      "Speed": -0.3,
      "Price": 2500,
      "Signal": -0.2,
      "Control": 0.4,
      "spawn": "sent_oildrum",
      "Model": "models/props_c17/oildrum001_explosive.mdl"
    },
    {
      "Name": "",
      "Price": 500,
      "spawn": "",
      "Model": ""
    }
  ],
  "Left-Click": [
    {
      "Name": "Radial lamp",
      "Signal": 0.1,
      "Speed": -0.25,
      "Price": 750,
      "Description": "Flash all your enemies on a radious of 512 units",
      "Control": 0.1,
      "spawn": "sent_flash",
      "Model": "models/props_wasteland/light_spotlight01_lamp.mdl"
    },
    {
      "Name": "Vital scanner",
      "Fuel": -0.25,
      "Speed": -0.25,
      "Price": 1500,
      "Description": "Watch on your screen signal vital of your enemies on a radious of 1024 units",
      "Control": -0.15,
      "spawn": "sent_scanner",
      "Model": "models/maxofs2d/camera.mdl"
    },
    {
      "Name": "Cloack device",
      "Control": -0.25,
      "Speed": -0.1,
      "Price": 2000,
      "Signal": -0.3,
      "Description": "Cloak your drone (You can't shoot)",
      "spawn": "sent_cloack",
      "Model": "models/maxofs2d/hover_plate.mdl"
    },
    {
      "Name": "",
      "Price": 500,
      "spawn": "",
      "Model": ""
    }
  ],
  "Right-Click": [
    {
      "Name": "Gun",
      "Damage": 12,
      "Magazine": 30,
      "Price": 750,
      "Description": "Normal bullets",
      "Control": 0.5,
      "spawn": "sent_gun",
      "Model": "models/gibs/gunship_gibs_nosegun.mdl"
    },
    {
      "Name": "Energy gun",
      "Damage": 5,
      "Magazine": 25,
      "Price": 1500,
      "Description": "Your enemy will be paralizated 2 seconds",
      "Control": 0.5,
      "spawn": "sent_energy",
      "Model": "models/items/combine_rifle_ammo01.mdl"
    },
    {
      "Name": "Flare gun",
      "Damage": 7,
      "Magazine": 20,
      "Price": 1500,
      "Description": "Your drone will spit a big flame that burns 3-5 secs",
      "Control": 0.5,
      "spawn": "sent_flaregun",
      "Model": "models/items/boxflares.mdl"
    },
    {
      "Name": "",
      "Price": 500,
      "spawn": "",
      "Model": ""
    }
  ],
  "Misc": [
    {
      "Name": "Unusual drone",
      "Price": 2500,
      "Description": "There's nothing unusual on this drone!",
      "Model": "models/props_lab/huladoll.mdl",
      "spawn": "sent_unusual",
      "IsUnusual": true
    },
    {
      "Name": "Mr. Drone",
      "Speed": -0.25,
      "Price": 3000,
      "Description": "Your drone always will try to get your attention with stunts",
      "spawn": "sent_taunt",
      "Model": "models/Combine_Scanner.mdl"
    },
    {
      "Name": "Movement sensor",
      "Control": -0.25,
      "Speed": -0.1,
      "Price": 2000,
      "Signal": -0.3,
      "spawn": "sent_sensor",
      "Description": "Your drone will alert you when someone it's near at him",
      "Model": "models/maxofs2d/lamp_projector.mdl"
    },
    {
      "Name": "Trail emitter",
      "Price": 2000,
      "spawn": "sent_trailm",
      "Description": "Your drone will drop a beautiful trail.",
      "Model": "models/props_c17/lampShade001a.mdl",
      "IsTrail": true
    },
    {
      "Name": "",
      "Price": 500,
      "spawn": "",
      "Model": ""
    }
  ]
}
]]
