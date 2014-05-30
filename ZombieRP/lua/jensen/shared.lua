// ########################
// HOOK: PlayerKeyPress
// DESC: Serverside hook that's call when a player presses a key
// ARGS: PLAYER pl, NUMBER key
// AUTH: Entoros

if SERVER then
	concommand.Add("cl_keypress",function(pl,cmd,args)
		local n = tonumber(args[1])
		hook.Call("PlayerKeyPress",GAMEMODE,pl,n)
	end)
else
	local keys_pressed = {}
	hook.Add("Think","CheckKeyPress",function()
		for i =1, 130 do
			if input.IsKeyDown( i ) then
				if keys_pressed[i] then return end
				RunConsoleCommand( "cl_keypress", i )
				hook.Call("PlayerKeyPress",GAMEMODE,LocalPlayer(),i)
				keys_pressed[i] = true
			elseif keys_pressed[i] then keys_pressed[i] = nil
			end
		end
	end)
end

// This is very easy to edit
// to add keys for like a command (I suggest FAdmin commands), you would need to do
// hook.Add("PlayerKeyPress","BindMenu",function(pl,key)
// 	if key == <keys*> then LocalPlayer():RunConsoleCommand( "say", "<command>" ) end
// end)
// Keys can be found here: http://wiki.garrysmod.com/page/Enums/KEY

hook.Add("PlayerKeyPress","BindMenu",function(pl,key)
  if key == KEY_LALT and if key == IN_ATTACK then LocalPlayer():RunConsoleCommand( "say", "/drop" ) end // This is for weapon dropping.
end)
