// General place to add custom job fields and abilities...
function SpawnIFFTag( ply )
  // IFF Tag for turrets
	ply:SetNetworkedInt("JackyIFFTag",math.random(1,100000))
	
	// Abilities and custom job fields
	if ply:Team() == TEAM_SWATSUPPORT then
		JackaBodyArmorUpdate(ply,"Suit","EOD",ply:GetColor())
		JackaGenericUseEffect(ply)
		ply:SetModel("models/juggerjaut_player.mdl")
	elseif ply:Team() == TEAM_GANGSUPPORT then
	  ply:SetArmor(100)
	end
end


hook.Add( "PlayerSpawn", "SpawnIFFTag", SpawnIFFTag )

// Remove IFF Tag upon death.
local function Death(ply)
	ply:SetNetworkedInt("JackyIFFTag",0)
end
hook.Add("DoPlayerDeath","JackyIFFTagRemoval",Death)
