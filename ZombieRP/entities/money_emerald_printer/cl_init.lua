include("shared.lua")

-- [ ALTER THESE VALUES ] ----
local LabelBackgroundColor 	= Color( 60, 255, 60, 255 )			-- The color of the frame where your name and type of printer are listed.
local LabelTextColor 		= Color( 0, 0, 0, 255 )				-- The color of the text where your name and type of printer are listed.
------------------------------

function ENT:Initialize()
end 

function ENT:Draw()
	self.Entity:DrawModel()
	
	local Pos = self:GetPos()										-- Gets printer's current vector location
	local Ang = self:GetAngles()									-- Gets printer's current angles
	
    local owner = self:Getowning_ent() 								-- Sets the owner
	owner = (IsValid(owner) and owner:Nick()) or "Disconnected"		-- Fixes owner's nickname
	
	txt1 = self.PrintName											-- Printer Label
	txt2 = "$" ..self:GetNWInt("PrintA")							-- Receives Networked Int for Total Money
	txt3 = self:GetNWInt("PrintB")									-- Receives Networked Int for Health
	opacity1 = txt3 / 2 											-- Opacity calculation
	
	surface.SetFont("HUDNumber5")									-- Sets font
	local TextWidthLabel = surface.GetTextSize(txt1)				-- Centers each textline
	local TextWidthOwner = surface.GetTextSize(owner)				-- ^^
	
	Ang:RotateAroundAxis(Ang:Up(), 90)								-- Rotates labels upward
	
	cam.Start3D2D(Pos + Ang:Up() * 3.5, Ang, 0.09)
	    -- Type of Printer Label
		draw.WordBox(6, -TextWidthLabel*0.5-5, -50, txt1, "HUDNumber5", LabelBackgroundColor, LabelTextColor)
	cam.End3D2D()
	
	cam.Start3D2D(Pos + Ang:Up() * 3.5, Ang, 0.06)
		-- Owner Label
		draw.WordBox(6, -TextWidthOwner*0.5, 0, owner, "HUDNumber5", LabelBackgroundColor, LabelTextColor)
	cam.End3D2D()
	
	Ang:RotateAroundAxis(Ang:Forward(), 90)												-- Rotates label forward
	
	cam.Start3D2D(Pos + Ang:Up() * 7.3, Ang, 0.07)
		draw.RoundedBox( 0, -24-100, -22, 70, 42, Color( 255, 255, 255, 255))			-- Health Box Background 
		draw.RoundedBox( 0, -24-95, -22, 60, 42, Color( 255, 0, 0, 255 ))				-- Health Box RED
		draw.RoundedBox( 0, -24-95, -22, 60, 42, Color( 0, 255, 0, opacity1))			-- Health Box GREEN (fades)
		if self:GetNWBool("Upgraded") then
			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetMaterial(Material("icon16/star.png"))
			surface.DrawTexturedRect( -124, 22, 16, 16 )
			draw.SimpleText( "Upgraded", "Trebuchet18", -106, 22, Color( 255, 255, 255, 255 ) )
		end
		
		draw.RoundedBox( 0, -40, -22, 164, 42, Color( 255, 255, 255, 255))				-- Money Background
		draw.RoundedBox( 0, -35, -22, 154, 42, Color( 50, 100, 50, 255))				-- ^^
				
		draw.SimpleText(txt3, "HUDNumber5", -89, 0, Color( 0, 0, 0, 255 ), 1, 1 )		-- Money Content Label
		draw.SimpleText(txt2, "HUDNumber5", 43, 0, Color( 0, 0, 0, 255 ), 1, 1 )		-- Health Guage Label
				
		if self:GetNWBool("CoolantToggle") then
			draw.RoundedBox( 0, -124, -44, 248, 15, Color( 255, 255, 255, 255 ) )
			draw.RoundedBox( 0, -119, -44, 238, 15, Color( 180, 180, 180, 255 ) )
			draw.RoundedBox( 0, -119, -44, ( ( 238 / 100 ) * self:GetNWInt("Coolant") ), 15, Color( 0, 255, 255, 255 ) )
		end
		
	cam.End3D2D()
end

function ENT:Think()
end
