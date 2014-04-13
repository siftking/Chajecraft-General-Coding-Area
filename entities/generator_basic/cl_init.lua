include("shared.lua")

local statusOnColour = Color(0, 255, 0, 200)
local statusOffColour = Color(255, 0, 0, 200)
local statusColour = Color(255, 255, 255, 200)
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

function DrawViewInfoGen_B()
	local tr = LocalPlayer():GetEyeTrace()
	local trEnt = tr.Entity 
	if IsValid(trEnt) and trEnt:GetPos():Distance(LocalPlayer():GetPos()) < 200 then
		if trEnt:GetClass() == "generator_basic" then
			local isOn = trEnt:GetNetworkedInt("generator_status")
			local connectedPrinters = trEnt:GetNetworkedInt("connected_amount")
			local connectedMax = trEnt:GetNetworkedInt("connected_max")
			local owner = trEnt:Getowning_ent()
			
			local PrintersConnected = "[" .. connectedPrinters .. "/" .. connectedMax .. "]" 
			owner = (IsValid(owner) and owner:Nick()) or "unknown"
			local OwnerLabel = owner .. "'s"
			local Name = "Generator:\nBasic"
			local Description =  "Status:"
			local Status
			
			if (isOn) then
				Status = "On"
				statusColour = statusOnColour
			else
				statusColour = statusOffColour
				Status = "Off"
			end
			
			local pos = trEnt:GetPos()
			
			local TextWidth = surface.GetTextSize(OwnerLabel)
			
			pos.z = pos.z + 8
			pos = pos:ToScreen()
			
			-- 73 and 67 Y
		    cam.Start2D();
				draw.RoundedBox( 0, pos.x - 152, pos.y - 3, 306, 123, Color( 0, 0, 0, 100 ) )
				draw.RoundedBox( 0, pos.x - 149, pos.y, 300, 117, Color( 0, 0, 0, 150 ) )
				draw.RoundedBox( 0, pos.x - 145, pos.y + 65, 292, 2, Color( 85, 85, 85, 255 ) )
				draw.WordBox(0, pos.x - 152, pos.y + 130, OwnerLabel, "CusNameText", Color(0, 0, 0, 150), Color(255,255,255,255))
				draw.DrawText(Name, "CusNameText", pos.x, pos.y, Color(255, 255, 255, 200), 1)
				draw.DrawText(PrintersConnected, "CusDescText", pos.x + 1, pos.y + 65, Color(255, 255, 255, 200), 1)
				draw.DrawText(Description, "CusDescText", pos.x + 1, pos.y + 82, Color(255, 255, 255, 200), 1)
				draw.DrawText(Status, "CusDescText", pos.x + 1, pos.y + 96, statusColour, 1)
			cam.End2D();
		end
	end
end
hook.Add( "HUDPaint", "DrawViewInfoGen_B", DrawViewInfoGen_B ) 

function ENT:Think()
end
