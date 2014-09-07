local function SpawnIFFTag( ply )
	ply:SetNetworkedInt("JackyIFFTag",math.random(1,100000))
	if ply:Team() == TEAM_SWATSUPPORT then
		JackaBodyArmorUpdate(ply,"Suit","EOD",ply:GetColor())
		JackaGenericUseEffect(ply)
		ply:SetModel("models/juggerjaut_player.mdl")
		ply:SetNetworkedInt("JackyIFFTag",math.random(1,100000))
	end

end
hook.Add( "PlayerSpawn", "SpawnIFFTag", SpawnIFFTag )

// Remove IFF Tag upon death.
local function Death(ply)
	ply:SetNetworkedInt("JackyIFFTag",0)
end
hook.Add("DoPlayerDeath","JackyIFFTagRemoval",Death)
