//	weapon_real_cs_five-seven = {
//		name = "Fiveseven", -- Print name
//		desc = "Normal Hand Gun" -- description
//	},
-- item definitions
-- These are for custom ents. Default shipments, weapons, and food are already handled

-- forbidden ent classnames (these will break the addon):
--[[
	sweps
	ships
	foods
	_size
]]--

--register your normal ents here
items = {
	food = { -- classname
		name = "Chinese Food", -- Print name
		desc = "Healthy chinese food, fills your whole hunger bar.", -- description
		useable = true, --can they use it from the invenotry?
		max = 0, --max that can be carried, 0 for infinate
		model = "models/props_junk/garbage_takeoutcarton001a.mdl" -- model
	},
	drug = { -- classname
		name = "Drugs", -- Print name
		desc = "Duuuuuuuude this stuff makes you BUFF.", -- description
		useable = true, --can they use it from the invenotry?
		max = 0, --max that can be carried, 0 for infinate
		model = "models/props_lab/jar01a.mdl" -- model
	}	--commands on all closing brackets except the last one
}

--register your sweps here
weps = {
	weapon_real_cs_desert_eagle = {
		name = "Desert Eagle", -- Print name
		desc = "Heavy Hand Gun" -- description
	}
	fas2_ak12 = {
		name = "AK-12", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_ak47 = {
		name = "AK-47", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_ak74 = {
		name = "AK-74", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_an94 = {
		name = "AN-94", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_famas = {
		name = "FAMAS F1", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_g36c = {
		name = "G36C", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_g3 = {
		name = "G3A3", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_galil = {
		name = "IMI Galil", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_m4a1 = {
		name = "M4A1", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_pp19 = {
		name = "PP-19 Bizon", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_rpk = {
		name = "PRK-47", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_rk95 = {
		name = "Sako RK-95", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_sg550 = {
		name = "SG 550", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_sg552 = {
		name = "SG 552", -- Print name
		desc = "Customizable Assault Rifle" -- description
	}
	fas2_uzi = {
		name = "IMI Uzi", -- Print name
		desc = "Customizable Submachine Gun" -- description
	}
	fas2_mac11 = {
		name = "M11A1", -- Print name
		desc = "Customizable Submachine Gun" -- description
	}
	fas2_mp5a5 = {
		name = "MP5A5", -- Print name
		desc = "Customizable Submachine Gun" -- description
	}
	fas2_mp5k = {
		name = "MP5K", -- Print name
		desc = "Customizable Submachine Gun" -- description
	}
	fas2_mp5sd6 = {
		name = "MP5SD6", -- Print name
		desc = "Customizable Submachine Gun" -- description
	}
	fas2_glock20 = {
		name = "Glock-20", -- Print name
		desc = "Customizable Hand Gun" -- description
	}
	fas2_m1911 = {
		name = "M1911", -- Print name
		desc = "Customizable Hand Gun" -- description
	}
	fas2_ots33 = {
		name = "OTs-33 Pernach", -- Print name
		desc = "Customizable Hand Gun" -- description
	}
	fas2_p226 = {
		name = "P226", -- Print name
		desc = "Customizable Hand Gun" -- description
	}
	fas2_deagle = {
		name = "IMI Desert Eagle", -- Print name
		desc = "Customizable Heavy Hand Gun" -- description
	}
	fas2_ragingbull = {
		name = "Magnum", -- Print name
		desc = "Customizable Revolver" -- description
	}
	fas2_m14 = {
		name = "M14", -- Print name
		desc = "Customizable Sniper Rifle" -- description
	}
	fas2_m21 = {
		name = "M21", -- Print name
		desc = "Customizable Sniper Rifle" -- description
	}
	fas2_m24 = {
		name = "M24", -- Print name
		desc = "Customizable Sniper Rifle" -- description
	}
	fas2_m82 = {
		name = "M82", -- Print name
		desc = "Customizable Sniper Rifle" -- description
	}
	fas2_sks = {
		name = "SKS", -- Print name
		desc = "Customizable Sniper Rifle" -- description
	}
	fas2_sr25 = {
		name = "SR-25", -- Print name
		desc = "Customizable Sniper Rifle" -- description
	}
	fas2_ks23 = {
		name = "KS-23", -- Print name
		desc = "Customizable Rifle" -- description
	}
	fas2_m3s90 = {
		name = "M3 Super 90", -- Print name
		desc = "Customizable Shotgun" -- description
	}
	fas2_rem870 = {
		name = "Remington 870", -- Print name
		desc = "Customizable Shotgun" -- description
	}
	fas2_m67 = {
		name = "M67", -- Print name
		desc = "Grenades say BOOOOMMM!!!" -- description
	}
	fas2_m79 = {
		name = "M79", -- Print name
		desc = "Grenade Launcher shoots out some BOMBS!!!" -- description
	}
		m9k_colt1911 = {
		name = "Colt 1911", -- Print name
		desc = "Hand Gun" -- description
	}
		m9k_glock = {
		name = "Glock 18", -- Print name
		desc = "Hand Gun" -- description
	}
		m9k_usp = {
		name = "HK USP", -- Print name
		desc = "Hand Gun" -- description
	}
		m9k_hk45 = {
		name = "HK45C", -- Print name
		desc = "Hand Gun" -- description
	}
		m9k_m92beretta = {
		name = "M92 Beretta", -- Print name
		desc = "Hand Gun" -- description
	}
		m9k_luger = {
		name = "P08 Lunger", -- Print name
		desc = "Hand Gun" -- description
	}
		m9k_sig_p229r = {
		name = "SIG Sauer P229R", -- Print name
		desc = "Hand Gun" -- description
	}
		m9k_deagle = {
		name = "Desert Egale", -- Print name
		desc = "Heavy Hand Gun" -- description
	}
		m9k_coltpython = {
		name = "Colt Python", -- Print name
		desc = "Revolver" -- description
	}
		m9k_m29satan = {
		name = "M29 Satan", -- Print name
		desc = "Revolver" -- description
	}
		m9k_ragingbull = {
		name = "Raging Bull", -- Print name
		desc = "Revolver" -- description
	}
		m9k_scoped_taurus = {
		name = "Raging Bull - Scoped", -- Print name
		desc = "Revolver" -- description
	}
		m9k_remington1858 = {
		name = "Remington 1858", -- Print name
		desc = "Revolver" -- description
	}
		m9k_model3russian = {
		name = "SW Model 3 Russain", -- Print name
		desc = "Revolver" -- description
	}
		m9k_model500 = {
		name = "SW Model 500", -- Print name
		desc = "Revolver" -- description
	}
		m9k_model627 = {
		name = "SW Model 1627", -- Print name
		desc = "Revolver" -- description
	}
		m9k_m3 = {
		name = "Benelli M3", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_browningauto5 = {
		name = "Browning Auto 5", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_ithacam37 = {
		name = "Ithaca M37", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_mossberg590 = {
		name = "Mossberg 590", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_jackhammer = {
		name = "Pancor Jackhammer", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_remington870 = {
		name = "Remington 870.", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_spas12 = {
		name = "SPAS 12", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_striker12 = {
		name = "Striker 12", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_usas = {
		name = "USAS", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_1897winchester = {
		name = "Winchester 1897", -- Print name
		desc = "Shotgun" -- description
	}
		m9k_dbarrel = {
		name = "Double Barrel Shotgun", -- Print name
		desc = "Double Barrel Shotgun" -- description
	}
		m9k_aw50 = {
		name = "AI AW50", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_barret_m82 = {
		name = "Barret M82", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_m98b = {
		name = "Barret M98B", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_svu = {
		name = "Dragunov SVU", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_sl8 = {
		name = "HK SL8", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_intervention = {
		name = "Intervention", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_m24 = {
		name = "M24.", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_psg1 = {
		name = "PSG-1", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_remington7615p = {
		name = "Remington 7615P", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_dragunov = {
		name = "SVD Dragunov", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_svt40 = {
		name = "SVT 40", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_contender = {
		name = "Thompson Contender G2", -- Print name
		desc = "Sniper Rifle" -- description
	}
		m9k_winchester73 = {
		name = "73 Winchester Carbine", -- Print name
		desc = "Rifle" -- description
	}
		m9k_honeybadger = {
		name = "AAC Honey Badger", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_bizonp19 = {
		name = "Bizon PP19", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_smgp90 = {
		name = "FN P90", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_mp5 = {
		name = "HK MP5", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_mp7 = {
		name = "HK MP7", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_ump45 = {
		name = "HK UMP45", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_usc = {
		name = "HK USC", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_kac_pdw = {
		name = "KAC PDW", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_vector = {
		name = "KRISS Vector", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_magpulpdr = {
		name = "Magpul PDR", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_mp40 = {
		name = "MP40", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_mp5sd = {
		name = "MP5SD", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_mp9 = {
		name = "MP9", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_sten = {
		name = "STEN", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_tec9 = {
		name = "TEC-9", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_thompson = {
		name = "Tommy Gun", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_uzi = {
		name = "UZI", -- Print name
		desc = "Submachine Gun" -- description
	}
		m9k_acr = {
		name = "ACR", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_ak47 = {
		name = "AK-47.", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_ak74 = {
		name = "AK-74.", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_amd65 = {
		name = "ADM 65", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_an94 = {
		name = "AN-94", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_val = {
		name = "SA VAL", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_f2000 = {
		name = "F2000", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_famas = {
		name = "Famas", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_fal = {
		name = "FN FAL", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_g36 = {
		name = "G36", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_m416 = {
		name = "HK 416", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_g3a3 = {
		name = "HK G3A3", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_l85 = {
		name = "L85", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_m14sp = {
		name = "M14.", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_m16a4_acog = {
		name = "M16A4 ACGO", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_m4a1 = {
		name = "M4A1 Iron", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_scar = {
		name = "SCAR", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_vikhr = {
		name = "SR-M3 Vikhr", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_auga3 = {
		name = "Steyr AUG A3", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_tar21 = {
		name = "TAR-21", -- Print name
		desc = "Assault Rifle" -- description
	}
		m9k_ares_shrike = {
		name = "Ares Shrike", -- Print name
		desc = "Machine Gun" -- description
	}
		m9k_fg42 = {
		name = "FG 42", -- Print name
		desc = "Machine Gun" -- description
	}
		m9k_minigun = {
		name = "M134 Minigun", -- Print name
		desc = "Machine Gun" -- description
	}
		m9k_m1918bar = {
		name = "M1918 BAR", -- Print name
		desc = "Machine Gun" -- description
	}
		m9k_m249lmg = {
		name = "M249 LMG", -- Print name
		desc = "Machine Gun" -- description
	}
		m9k_m60 = {
		name = "M60 Machine Gun", -- Print name
		desc = "Machine Gun" -- description
	}
		m9k_pkm = {
		name = "PKM", -- Print name
		desc = "Machine Gun" -- description
	}
		weapon_laserpistol2 = {
		name = "Discharge Pistol", -- Print name
		desc = "PEW PEW ZAP ZAP!!!" -- description
	}
}

--register your foods
foodies = {
	["models/props/cs_italy/bananna.mdl"] = { -- model
		name = "Banana", -- Print name
		desc = "Yummy single banana." -- description
	},
	["models/props/cs_italy/bananna_bunch.mdl"] = { -- model
		name = "Banana Bunch", -- Print name
		desc = "A whole bunch of 'nanas!" -- description
	},
	["models/props_junk/watermelon01.mdl"] = { -- model
		name = "Melon", -- Print name
		desc = "A melon from Garry's own farm." -- description
	},
	["models/props_junk/glassbottle01a.mdl"] = { -- model
		name = "Vodka", -- Print name
		desc = "In Soviet Russia, items put YOU in inventory!" -- description
	},
	["models/props_junk/popcan01a.mdl"] = { -- model
		name = "Soda", -- Print name
		desc = "Straight from Dr. Breen's private reserve." -- description
	},
	["models/props_junk/garbage_plasticbottle003a.mdl"] = { -- model
		name = "2-Liter Soda", -- Print name
		desc = "Don't forget the mentos!" -- description
	},
	["models/props_junk/garbage_milkcarton002a.mdl"] = { -- model
		name = "Melk", -- Print name
		desc = "It's good for your bones or sumthing." -- description
	},
	["models/props_junk/garbage_glassbottle001a.mdl"] = { -- model
		name = "B33R", -- Print name
		desc = "Now you can be just like Mastur Cheef!" -- description
	},
	["models/props_junk/garbage_glassbottle002a.mdl"] = { -- model
		name = "Bagged Bud Light", -- Print name
		desc = "BYOB?" -- description
	},
	["models/props_junk/garbage_glassbottle003a.mdl"] = { -- model
		name = "Dos Equis", -- Print name
		desc = "\"When it is raining, it is because he is sad.\"" -- description
	},
	["models/props/cs_italy/orange.mdl"] = { -- model
		name = "Orange", -- Print name
		desc = "An Orange a day keep der fuhror away." -- description
	} --commands on all closing brackets except the last one
}
