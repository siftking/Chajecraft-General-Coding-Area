
rPrint.RemovePrintersOnDisconnect = false  --whether to remove printers on player disconnect

rPrint.DefaultPrinterParams = {	
	Color = Color( 255, 255, 255, 255 ),  --color of the printer
	SoundEffectVolume = 15,  --sound effects volume (between 0 and 100)
	
	TempMin = 28,  --minimum temperature (won't go below this)
	TempMax = 80,  --maximum temperature (will explode or shut down at this temperature)
	TempStart = 30,  --starting temperature

	PrintRate = 4,  --printing rate (in money per second) ($/s)
	HeatRate = 1 / 25,  --heat rate (in degrees per money printed) (*/$)
	CoolRate = 1 / 7,  --cool rate (in degrees per second) (*/s)

	CoolerCost = 400,  --cooler cost
	CoolerCoolRate = 3 / 2,  --cooler cooling rate (in degrees per second) (*/s)
	CoolerBreakEnabled = true,  --should the cooler sometimes break
	CoolerBreakInterval = {  --the time interval between the coolers breaking (in seconds, randomized) (s)
		6 * 60,  --minimum amount of seconds between breaks
		10 * 60   --maximum amount of seconds between breaks
	},

	PowerConsumptionRate = 1 / 20, --power consumption rate (in percent power per money printed) (%/$)
	PowerConsumptionRateCooler = 1 / 12,  --power consumption rate for the cooler (in percent per second) (%/s)

	RechargeCost = 1000,  --cost to recharge
	RechargeMax = 30,  --the value at which the recharge button becomes pressable

	FadeDistance = 200,  --maximum distance that the printers render the GUI
	UseDistance = 150,  --maximum distance a player can use the buttons

	AlertOwnerOnDestroyed = true,  --alert the owner when someone blows up their printer
	AlertOwnerOnOverheated = true,  --alert the owner when the printer overheats and blows up

	PrinterHealth = 500,  --printer health (resistance to damage)
	ExplodeOnOverheat = true,  --explode when the printer overheats

	CanBeDestroyed = true,  --can the printers be broken
	DestroyPayout = 2500,  --amount paid to the person who destroyed the printer
	DestroyPayoutTeams = {  --teams which can receive money from destroying a printer
		TEAM_POLICE,
		TEAM_CHIEF,
		TEAM_SWAT,
		TEAM_SWATLEADER,
		TEAM_SWATJUGGER,
		TEAM_SWATSNIPER,
		TEAM_SWATMEDIC,
		TEAM_SWATEXPLOSIVE
	}
}


--[[ Examples:

--Printer with all default settings
rPrint.RegisterPrinterType( "Default", {}, "rprint_defaultprinter" )


--Printer with default settings, except it uses less power
rPrint.RegisterPrinterType( "Eco", {
	PowerConsumptionRate = 1 / 35,
	PowerConsumptionRateCooler = 1 / 25
}, "rprint_ecoprinter" )


--Special VIP printer, you'll want to lock this to a special user class so you use
--the normal RegisterPrinterType function since you'll add it to DarkRP manually.
rPrint.RegisterPrinterType( "VIP", {
	PrintRate = 10, --$6,000 per minute!

	HeatRate = 1 / 100, --heats up very slowly
	CoolRate = 1 / 2, --cool down pretty fast, you shouldn't even need a cooler for this one
	CoolerCoolRate = 5, --super cooler for the hell of it
	CoolerBreakEnabled = false, --cooler never breaks

	PowerConsumptionRate = 1 / 500, --very efficient
	PowerConsumptionRateCooler = 1 / 300, --cooler is also very efficient

	PrinterHealth = 1000, --super strong
	ExplodeOnOverheat = false, --don't blow up
	DestroyPayout = 5000 --Police jackpot!
}, "rprint_vipprinter" ) --give it the entity name "rprint_vipprinter"

]]
rPrint.RegisterPrinterType( "Bronze", {
	PrintRate = 15, 
	DestroyPayout = 250, 
	Color = Color( 205, 135, 65, 255 ), 
	RechargeCost = 1500, 
	CoolerCost = 200,
	PrinterHealth = 150,
	PowerConsumptionRate = 1 / 100,
	PowerConsumptionRateCooler = 1 / 800,
	HeatRate = 1 / 30,
	CoolRate = 1 / 5
}, "rprint_bronzeprinter" )

rPrint.RegisterPrinterType( "Silver", {
	PrintRate = 25, 
	DestroyPayout = 500, 
	Color = Color( 150, 150, 150, 255 ), 
	RechargeCost = 2500, 
	CoolerCost = 300,
	PrinterHealth = 350,
	PowerConsumptionRate = 1 / 130,
	PowerConsumptionRateCooler = 1 / 800,
	HeatRate = 1 / 30,
	CoolRate = 1 / 5
}, "rprint_silverprinter" )

rPrint.RegisterPrinterType( "Gold", {
	PrintRate = 45, 
	DestroyPayout = 750, 
	Color = Color( 255, 255, 135, 255 ), 
	RechargeCost = 2800, 
	CoolerCost = 400,
	PrinterHealth = 500,
	PowerConsumptionRate = 1 / 140,
	PowerConsumptionRateCooler = 1 / 800,
	HeatRate = 1 / 30,
	CoolRate = 1 / 5
}, "rprint_goldprinter" )

rPrint.RegisterPrinterType( "Platinum", {
	PrintRate = 60, 
	DestroyPayout = 1750, 
	Color = Color( 203, 204, 255 ), 
	RechargeCost = 2200, 
	CoolerCost = 500,
	PrinterHealth = 750,
	PowerConsumptionRate = 1 / 150,
	PowerConsumptionRateCooler = 1 / 800,
	HeatRate = 1 / 50,
	CoolRate = 1 / 2
}, "rprint_platinum" )

rPrint.RegisterPrinterType( "Quantum", {
	PrintRate = 80, 
	DestroyPayout = 2510, 
	Color = Color( 255, 255, 255 ), 
	RechargeCost = 2500, 
	CoolerCost = 600,
	PrinterHealth = 1250,
	PowerConsumptionRate = 1 / 180,
	PowerConsumptionRateCooler = 1 / 800,
	HeatRate = 1 / 50,
	CoolRate = 1 / 2
}, "rprint_quantum" )
