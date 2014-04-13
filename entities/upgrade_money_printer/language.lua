DCL_UP = {}
local derpy_config_languages_UP = {}
local Language_Override = "english" // default( english, dutch, deutsch or custom ) Which language data you wish to use

derpy_config_languages_UP.english = {
	printer_exploded = "Your money printer has exploded!",
	printer_overheat = "Your money printer is overheating!",
	printer_malfunction = "Your printer cooler is malfunctioning, you can repair it for $",
	printer_upgrade_toofaraway = "Too far away from the printer.",
	printer_upgrade_noperm = "You don't have the permission to upgrade to level ",
	printer_upgrade_max = "Your printer is maximum upgrade!",
	printer_upgrade_cantafford = "You cannot afford level ",
	printer_upgrade_success = "Printer Upgraded! Now level ",
	printer_upgrade_nocoolingplate = "Money Printer doesn't have a cooling plate installed.",
	printer_upgrade_unistalledcoolingplate = "You have un-installed your cooling plate.",
	printer_repair_noneed = "Your printer is functioning correctly, there is no need for it to be repaired.",
	printer_repair_success = "Your printer has been repaired."
}

derpy_config_languages_UP.dutch = {
	printer_exploded = "Uw geld printer is geëxplodeerd!",
	printer_overheat = "Uw geld printer is oververhit!",
	printer_malfunction = "Uw printer koeler is defect, u kunt dit reparen met $",
	printer_upgrade_toofaraway = "Te ver weg van de printer.",
	printer_upgrade_noperm = "U heeft geen toestemming om te upgraden naar niveau ",
	printer_upgrade_max = "Uw printer is het maximale geüpgrade!",
	printer_upgrade_cantafford = "U kunt zich niet veroorloven niveau ",
	printer_upgrade_success = "Printer Upgraded! nu level ",
	printer_upgrade_nocoolingplate = "Geld printer beschikt niet over een koelplaat gemonteerd.",
	printer_upgrade_unistalledcoolingplate = "Je hebt niet geïnstalleerde uw koelplaat.",
	printer_repair_noneed = "Uw printer is functioneel, is er geen noodzaak om te worden gerepareerd.",
	printer_repair_success = "Uw printer is gerepareerd."
}

derpy_config_languages_UP.deutsch = { // Used deutsch translator on google, sorry. (Feel free to edit)
	printer_exploded = "Ihr Geld Drucker ist explodiert!",
	printer_overheat = "Ihr Geld Drucker Überhitzung!",
	printer_malfunction = "Ihr Drucker Kühler defekt ist, können Sie es für $",
	printer_upgrade_toofaraway = "Zu weit weg aus dem Drucker.",
	printer_upgrade_noperm = "Sie haben nicht die Erlaubnis, auf Ebene aktualisieren ",
	printer_upgrade_max = "Ihr Drucker ist maximale Upgrade!",
	printer_upgrade_cantafford = "Sie können es sich nicht leisten Ebene ",
	printer_upgrade_success = "Printer Upgrade! Jetzt Ebene ",
	printer_upgrade_nocoolingplate = "Geld Drucker nicht über eine Kühlplatte installiert.",
	printer_upgrade_unistalledcoolingplate = "Sie haben Ihre Kühlplatte deinstalliert.",
	printer_repair_noneed = "Ihr Drucker ordnungsgemäß funktioniert, gibt es keine Notwendigkeit für sie repariert werden.",
	printer_repair_success = "Ihr Drucker ist repariert worden."
}

derpy_config_languages_UP.custom = {
	printer_overheat = "",
	printer_malfunction = "",
	printer_upgrade_toofaraway = "",
	printer_upgrade_noperm = "",
	printer_upgrade_max = "",
	printer_upgrade_cantafford = "",
	printer_upgrade_success = "",
	printer_upgrade_nocoolingplate = "",
	printer_upgrade_unistalledcoolingplate = "",
	printer_repair_noneed = "",
	printer_repair_success = ""
}

DCL_UP = derpy_config_languages_UP[Language_Override]

if DCL_UP == nil then
	print( "[Derpy Languages] The selected language " .. Language_Override .. " was not found, using english instead." )
	DCL_UP = derpy_config_languages_UP["english"]
end

if table.Count( DCL_UP ) < 12 then
	if Language_Override == "english" then
		print( "[Derpy Languages] English has not been formatted correctly." )	
	else
		print( "[Derpy Languages] The selected language " .. Language_Override .. " is incorrectly formatted, using english instead." )
		DCL_UP = derpy_config_languages_UP["english"]
	end
end
