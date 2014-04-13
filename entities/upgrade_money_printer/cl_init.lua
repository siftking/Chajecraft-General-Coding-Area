include("shared.lua")

local VisualLimit = { 1,2,3,4,5,6,7,8,9,10 }
local extra = 0

surface.CreateFont( "CusText", {
	font = "Tahoma",
	size = 15,
	weight = 500,
	antialias = true
} )
surface.CreateFont( "CusText2", {
	font = "Tahoma",
	size = 15,
	weight = 1000,
	antialias = true
} )

function ENT:Initialize()
end

function ENT:Draw()
	self:DrawModel()
	local Pos = self:GetPos()
	local Ang = self:GetAngles()

	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or "unknown"
	local mplevel = self:GetNetworkedInt("printer_level")
	local hascoolingplate = self:GetNetworkedInt("printer_coolingplate")
	local isPowered = self:GetNetworkedInt("powered")
	local statusText
	local statusColour

	if isPowered then
		statusText = "Power: Available"
		statusColour = Color(0, 255, 0, 255)
	else
		statusText = "Power: Not Available"
		statusColour = Color(255, 0, 0, 255)
	end
	
	surface.SetFont("HUDNumber5")
	local TextWidth = surface.GetTextSize("Money printer")
	local TextWidth2 = surface.GetTextSize(owner)
	local TextWidth3 = surface.GetTextSize("Press 'E' x 2 to upgrade!")
	local TextWidth4 = surface.GetTextSize(statusText)
		
	Ang:RotateAroundAxis(Ang:Up(), 90)
	
	cam.Start3D2D(Pos + Ang:Up() * 11.5, Ang, 0.11)
		draw.WordBox(2, -TextWidth4*0.5, -118, statusText, "HUDNumber5", Color(0, 0, 0, 100), statusColour)
		draw.WordBox(2, -TextWidth3*0.5, -78, "Press 'E' x 2 to upgrade!", "HUDNumber5", Color(0, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth*0.5, -30, "Money printer ", "HUDNumber5", Color(0, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth2*0.5, 18, owner, "HUDNumber5", Color(0, 0, 0, 100), Color(255,255,255,255))
		draw.RoundedBox( 4, 35, 65 + extra, 105, 58, Color(0, 0, 0, 100) )

		local ix = 80 
		local iy = 110
		local SizeW = 16
		local SizeH = 16
		
		local NoUpgradeCol = Color(0, 0, 0, 255)
		local HasUpgradeCol = Color(255, 255, 255, 255)
		
		local CoolingPlate = NoUpgradeCol
		
		local Star = Material( "icon16/star.png", "nocull" )
		local Shield = Material( "icon16/shield.png", "nocull" )
		local Tick = Material( "icon16/tick.png", "nocull" )
		local Cross = Material( "icon16/cross.png", "nocull" ) 
		
		if hascoolingplate then
			CoolingPlate = HasUpgradeCol
		end
			
		local function paintPNG()
			local MPL = self:GetNetworkedInt( "printer_level" )
			local MF = self:GetNetworkedInt( "printer_malfunction" )
			surface.SetMaterial( Shield )
			surface.SetDrawColor( CoolingPlate );
			surface.DrawTexturedRect( ix - 40, iy - 35, 16, 16 )
		
			if MF then
				surface.SetMaterial( Cross )
			else
				surface.SetMaterial( Tick )	
			end
			surface.SetDrawColor( HasUpgradeCol );
			surface.DrawTexturedRect( ix + 40, iy - 35, 16, 16 )
		
			for i = 1, MPL, 1 do
				if table.HasValue( VisualLimit, i ) then
					extra = 0
					surface.SetMaterial( Star )
					surface.SetDrawColor( HasUpgradeCol );			
					surface.DrawTexturedRect( ( ix - 50 ) + ( 9 * i ), iy - 15, 16, 16 )
				else
					extra = 6
					surface.SetMaterial( Star )
					surface.SetDrawColor( HasUpgradeCol );	
					surface.DrawTexturedRect( ( ix - 140 ) + ( 9 * i ), iy, 16, 16 )
				end
			end
		end
		paintPNG()
	cam.End3D2D()
end
usermessage.Hook( "PrinterUpgradeMenu", function (data)
	local ButUpgrade
	local printer = data:ReadEntity()
	
    local Panel = vgui.Create( "DFrame" )
	Panel:SetPos( 100, 100 )
	Panel:SetSize( 375, 205 )
	Panel:SetTitle( "Upgrade Menu" )
	Panel:SetVisible( true )
	Panel:SetDraggable( true )
	Panel:ShowCloseButton( true )
	Panel.Paint = function()
		draw.RoundedBox( 0, 0, 23, Panel:GetWide(), 1, Color( 0, 0, 0, 150 ) )
		draw.RoundedBox( 8, 0, 0, Panel:GetWide(), Panel:GetTall(), Color( 0, 0, 0, 125 ) )
	end
	Panel:MakePopup()

	local Tabs = vgui.Create( "DPropertySheet", Panel )
	Tabs:SetPos( 5, 25 )
	Tabs:SetSize( 365, 175 )
	
	local Panel2 = vgui.Create( "DPanelList", Tabs )
	Panel2:InvalidateLayout( true )
	Panel2:SetPos( 5,40 )
	Panel2:SetSize( Tabs:GetWide(), Tabs:GetTall() )
	Panel2:SetSpacing( 1 ) 
	Panel2:EnableHorizontal( true ) 
	Panel2:EnableVerticalScrollbar( true )	
	Panel2.Paint = function()
		local PrinterLevel = printer:GetNetworkedInt( "printer_level" )
		local PrintTime = printer:GetNetworkedInt( "printer_printtime" )
		local OHC = printer:GetNetworkedInt( "printer_overheatchance" )
		local PrintAmount = printer:GetNetworkedInt( "printer_printamount" ) 
		local PrinterHP = math.Round( printer:GetNetworkedInt( "printer_hp" ) )
		local MaxLevel = printer:GetNetworkedInt( "printer_maxlevel" )
		local UpgradeCost = printer:GetNetworkedInt( "Nprinter_upgradecost" )
		
		local UpgradeText 
		local HealthText = "Health: " .. PrinterHP
		if PrinterLevel != MaxLevel then 
			UpgradeText = "Upgrade Cost: $" .. UpgradeCost	
			ButUpgrade:SetText( "Upgrade" )
			ButUpgrade:SetDisabled( false )			
		else 
			ButUpgrade:SetText( "Max Upgrade" )
			ButUpgrade:SetDisabled( true )
			UpgradeText = "" 
		end
	
		local TextWidth = surface.GetTextSize( HealthText )
	
		draw.RoundedBox( 4, 0, 0, Panel2:GetWide(), Panel2:GetTall(), Color( 0, 0, 0, 150 ) )
		draw.RoundedBox( 4, 140, 10, 84, 20, Color( 0, 0, 0, 80 ) )
		draw.SimpleText( HealthText, "CusText2", 143, 12, Color(190,0,0,255) )		
		draw.SimpleText( "Printer Amount: $" .. PrintAmount, "CusText", 140, 30, Color(255,255,255,255) )
		draw.SimpleText( "Print Time: " .. PrintTime .. "s", "CusText", 140, 45, Color(255,255,255,255) )
		draw.SimpleText( "Overheat Chance: " .. OHC .. " in 100 / " .. PrintTime .. "s", "CusText", 140, 60, Color(255,255,255,255) )
		draw.SimpleText( UpgradeText, "CusText", 190, 88, Color(255,255,255,255) )
	end
	
	local Panel3 = vgui.Create( "DPanelList", Tabs )
	Panel3:SetPos( 5,40 )
	Panel3:SetSize( Tabs:GetWide(), Tabs:GetTall() )
	Panel3:SetSpacing( 1 ) 
	Panel3:EnableHorizontal( true ) 
	Panel3:EnableVerticalScrollbar( true )	
	Panel3.Paint = function()
		draw.RoundedBox( 4, 0, 0, Panel3:GetWide(), Panel3:GetTall(), Color( 0, 0, 0, 150 ) )
	end
	
	Tabs:AddSheet( "Basic Upgrades", Panel2, "icon16/star.png", 
	false, false, "Basic Upgrades for your Money Printer" )
	
	Tabs:AddSheet( "More Options", Panel3, "icon16/wrench.png", 
	false, false, "Some other options" )
	
    local ViewModelPrinter = vgui.Create( "DModelPanel", Panel2 )
    ViewModelPrinter:SetPos( -60,-150 )
    ViewModelPrinter:SetSize( 256,256 )
    ViewModelPrinter:SetModel( printer:GetModel() )
	
	local EjectCooler = vgui.Create( "DButton", Panel3 )	
	EjectCooler:SetPos( 10,10 )
	EjectCooler:SetSize( 95,20 )
	EjectCooler:SetText( "Eject Cooler" )
	EjectCooler.DoClick = function()
		local EjectCoolerMenu = DermaMenu()
		EjectCoolerMenu:AddOption( "Confirm?", function() RunConsoleCommand( "printer_eject_cooler" ); end )
		EjectCoolerMenu:Open()	
	end
	
	ButRepair = vgui.Create( "DButton", Panel3 )	
	ButRepair:SetPos( 10,35 )
	ButRepair:SetSize( 95,20 )
	ButRepair:SetText( "Repair" )
	ButRepair.DoClick = function()
		local ButRepairMenu = DermaMenu()
		ButRepairMenu:AddOption( "Confirm?", function() RunConsoleCommand( "printer_repair" ) end )
		ButRepairMenu:Open()
	end
	
	ButUpgrade = vgui.Create( "DButton", Panel2 )	
	ButUpgrade:SetPos( 140,85 )
	ButUpgrade:SetSize( 95,20 )
	ButUpgrade:SetText( "Upgrade" )
	ButUpgrade.DoClick = function()
		local ButUpgradeMenu = DermaMenu()
		ButUpgradeMenu:AddOption( "Confirm?", function() RunConsoleCommand( "printer_add_totalupgrade" ) end )
		ButUpgradeMenu:Open()
	end
end);

function ENT:Think()
	

end
