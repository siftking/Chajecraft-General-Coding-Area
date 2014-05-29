// This is very easy to edit
// to add keys for like a command (I suggest FAdmin commands), you would need to do
// hook.Add("PlayerKeyPress","BindMenu",function(pl,key)
// 	if key == <keys*> then LocalPlayer():RunConsoleCommand( "say", "<command>" ) end
// end)
// Keys can be found here: http://wiki.garrysmod.com/page/Enums/KEY

hook.Add("PlayerKeyPress","BindMenu",function(pl,key)
  if key == KEY_LALT and if key == IN_ATTACK then LocalPlayer():RunConsoleCommand( "say", "/drop" ) end
end)
