include("shared.lua")

function ENT:Initialize()
	surface.CreateFont( "CusNameText", {
		font = "Tahoma",
		size = 26,
		weight = 500,
		antialias = true
	} )	
	surface.CreateFont( "CusDescText", {
		font = "Tahoma",
		size = 17,
		weight = 1000,
		antialias = true
	} )
end

function ENT:Draw()
	self:DrawModel()
end

function DrawViewInfo()
	local tr = LocalPlayer():GetEyeTrace()
	if IsValid(tr.Entity) and tr.Entity:GetPos():Distance(LocalPlayer():GetPos()) < 200 then
		if tr.Entity:GetClass() == "upgrade_coolingplate" then
			local ent = tr.Entity
			local pos = ent:GetPos()

			pos.z = pos.z + 8
			pos = pos:ToScreen()

			local Name = "Hardware Upgrade:\nCooling Plate"
			local Description =  "This is used on an Upgradeable Printer \nto prevent it from overheating."
			
			-- 73 and 67 Y
		    cam.Start2D();
				draw.RoundedBox( 0, pos.x - 152, pos.y - 3, 306, 123, Color( 0, 0, 0, 100 ) )
				draw.RoundedBox( 0, pos.x - 149, pos.y, 300, 117, Color( 0, 0, 0, 150 ) )
				draw.RoundedBox( 0, pos.x - 145, pos.y + 65, 292, 2, Color( 85, 85, 85, 255 ) )
				draw.DrawText(Name, "CusNameText", pos.x, pos.y, Color(255, 255, 255, 200), 1)
				draw.DrawText(Description, "CusDescText", pos.x + 1, pos.y + 74, Color(255, 255, 255, 200), 1)
			cam.End2D();
		end
	end
end
hook.Add( "HUDPaint", "DrawViewInfo", DrawViewInfo ) 

function ENT:Think()
end
