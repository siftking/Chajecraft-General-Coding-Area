    local VoteVGUI = {}
    local QuestionVGUI = {}
    local PanelNum = 0
    local LetterWritePanel
    VoteQueues = VoteQueues or {}
     
    function MsgDoVote(msg)
            local _, chatY = chat.GetChatBoxPos()
     
            local question = msg:ReadString()
            local voteid = msg:ReadString()
            local timeleft = msg:ReadFloat()
            if timeleft == 0 then
                    timeleft = 100
            end
            local OldTime = CurTime()
            if string.find(voteid, LocalPlayer():EntIndex()) then return end --If it's about you then go away
            if not IsValid(LocalPlayer()) then return end -- Sent right before player initialisation
           
            VoteQueues[voteid] = table.Count(VoteQueues) + 1
     
            LocalPlayer():EmitSound("Town.d1_town_02_elevbell1", 100, 100)
            local panel = vgui.Create("DFrame")
            panel:SetPos(3, -50)
            panel:SetTitle("")
            panel:SetSize(220, 70)
            panel:SetSizable(false)
            panel.btnClose:SetVisible(false)
            panel.btnMaxim:SetVisible(false)
            panel.btnMinim:SetVisible(false)
            panel:SetDraggable(false)
            function panel:Close()
                    VoteQueues[voteid] = nil
                    for _, v in pairs (VoteQueues) do
                            VoteQueues[_] = math.max(v - 1, 1)
                    end
                   
                    PanelNum = PanelNum - 70
                    VoteVGUI[voteid .. "vote"] = nil
     
                    local num = 0
                    for k,v in SortedPairs(VoteVGUI) do
                            v:SetPos(3, chatY - 145 - num)
                            num = num + 70
                    end
     
                    for k,v in SortedPairs(QuestionVGUI) do
                            v:SetPos(3, chatY - 145 - num)
                            num = num + 300
                    end
                    self:Remove()
            end
            panel.Paint = function(me)
                    local w, h = me:GetSize()
                    draw.RoundedBox(4, 0, 0, w, h, Color(0, 0, 0, 255))
                    draw.RoundedBox(4, 1, 1, w - 2, h - 2, Color(60, 60, 60, 255))
                   
                    draw.RoundedBox(0, w - 12, 4, 8, h - 8, color_black)
                    draw.RoundedBox(0, w - 11, 5, 6, h - 11, Color(25, 25, 25, 255))
                   
                    local frac = (CurTime() - OldTime) / timeleft
                    draw.RoundedBox(0, w - 11, 5 + h * frac, 6, h - h * frac - 10, Color(100, 100, 100, 255))
            end
     
            function panel:Think()
                    if timeleft - (CurTime() - OldTime) <= 0 then
                            return
							panel:Close()
                    end
     
                    panel.Pos = panel.Pos or -70
                    panel.Pos = Lerp(5 * FrameTime(), panel.Pos, 3 + (VoteQueues[voteid] - 1) * 73)
     
                    panel:SetPos(3, panel.Pos)
            end
     
            panel:SetKeyboardInputEnabled(false)
            panel:SetMouseInputEnabled(true)
            panel:SetVisible(true)
     
            local expl = string.Explode("\n", question)
            local name = expl[1]
     
            local line2 = ""
            for i = 2, #expl do
                    line2 = line2 .. expl[i] .. " "
            end
           
            local label = vgui.Create("DLabel")
            label:SetParent(panel)
            label:SetPos(5, 5)
            label:SetText(name)
            label:SizeToContents()
            label:SetWide(panel:GetWide() - 30)
            -- label:A()
            label:SetVisible(true)
           
            local label1 = vgui.Create("DLabel")
            label1:SetParent(panel)
            label1:SetPos(5, 5)
            label1:MoveBelow(label)
            label1:SetText(line2)
            label1:SizeToContents()
            label1:SetVisible(true)
     
            local nextHeight = label:GetTall() > 78 and label:GetTall() - 78 or 0 // make panel taller for divider and buttons
            panel:SetTall(panel:GetTall() + nextHeight)
     
            local divider = vgui.Create("Divider")
            divider:SetParent(panel)
            divider:SetPos(2, panel:GetTall() - 30)
            divider:SetSize(180, 2)
            divider:SetVisible(true)
     
            local ybutton = vgui.Create("Button")
            ybutton:SetParent(panel)
            ybutton:SetPos(25, panel:GetTall() - 25)
            ybutton:AlignLeft(10)
            ybutton:SetSize(80, 20)
            ybutton:SetCommand("!")
            ybutton:SetText("Yes")
            ybutton:SetVisible(true)
            ybutton.DoClick = function()
                    LocalPlayer():ConCommand("vote " .. voteid .. " 1\n")
                    panel:Close()
            end
            ybutton:SetColor(color_white)
            ybutton:SetFont("DermaDefaultBold")
            ybutton.Paint = function(me)
                    local w, h = me:GetSize()
                    draw.RoundedBox(4, 0, 0, w, h, Color(0, 0, 0, 255))
                    draw.RoundedBox(4, 1, 1, w - 2, h - 2, Color(27, 117, 36, 255))
                   
                    if (me.Hovered) then
                            draw.RoundedBox(4, 0, 0, w, h, Color(255, 255, 255, 100))
                    end
            end
           
            local nbutton = vgui.Create("Button")
            nbutton:SetParent(panel)
            nbutton:SetPos(70, panel:GetTall() - 25)
            nbutton:SetSize(80, 20)
            nbutton:AlignRight(25)
            nbutton:SetCommand("!")
            nbutton:SetText("No")
            nbutton:SetVisible(true)
            nbutton.DoClick = function()
                    LocalPlayer():ConCommand("vote " .. voteid .. " 2\n")
                    panel:Close()
            end
            nbutton:SetFont("DermaDefaultBold")
            nbutton:SetColor(color_white)
            nbutton.Paint = function(me)
                    local w, h = me:GetSize()
                    draw.RoundedBox(4, 0, 0, w, h, Color(0, 0, 0, 255))
                    draw.RoundedBox(4, 1, 1, w - 2, h - 2, Color(175, 0, 0, 255))
                   
                    if (me.Hovered) then
                            draw.RoundedBox(4, 0, 0, w, h, Color(255, 255, 255, 100))
                    end
            end
     
            PanelNum = PanelNum + 140
            VoteVGUI[voteid .. "vote"] = panel
    end
    usermessage.Hook("DoVote", MsgDoVote)
     
    local function KillVoteVGUI(msg)
            local id = msg:ReadString()
     
            if VoteVGUI[id .. "vote"] and VoteVGUI[id .. "vote"]:IsValid() then
                    VoteVGUI[id.."vote"]:Close()
     
            end
    end
    usermessage.Hook("KillVoteVGUI", KillVoteVGUI)
     
    local function MsgDoQuestion(msg)
            local _, chatY = chat.GetChatBoxPos()
            local question = msg:ReadString()
            local quesid = msg:ReadString()
            local timeleft = msg:ReadFloat()
            if timeleft == 0 then
                    timeleft = 100
            end
            VoteQueues[quesid] = table.Count(VoteQueues) + 1
           
            local OldTime = CurTime()
     
            LocalPlayer():EmitSound("Town.d1_town_02_elevbell1", 100, 100)
            local panel = vgui.Create("DFrame")
            panel:SetPos(3, -50)
            panel:SetTitle("")
            panel:SetSize(220, 70)
            panel:SetSizable(false)
            panel.btnClose:SetVisible(false)
            panel.btnMaxim:SetVisible(false)
            panel.btnMinim:SetVisible(false)
            panel:SetDraggable(false)
            function panel:Close()
                    VoteQueues[quesid] = nil
                    for _, v in pairs (VoteQueues) do
                            VoteQueues[_] = math.max(v - 1, 1)
                    end
                   
                    PanelNum = PanelNum - 70
                    VoteVGUI[quesid .. "vote"] = nil
     
                    local num = 0
                    for k,v in SortedPairs(VoteVGUI) do
                            v:SetPos(3, chatY - 145 - num)
                            num = num + 70
                    end
     
                    for k,v in SortedPairs(QuestionVGUI) do
                            v:SetPos(3, chatY - 145 - num)
                            num = num + 300
                    end
                    self:Remove()
            end
            panel.Paint = function(me)
                    local w, h = me:GetSize()
                    draw.RoundedBox(4, 0, 0, w, h, Color(0, 0, 0, 255))
                    draw.RoundedBox(4, 1, 1, w - 2, h - 2, Color(60, 60, 60, 255))
                   
                    draw.RoundedBox(0, w - 12, 4, 8, h - 8, color_black)
                    draw.RoundedBox(0, w - 11, 5, 6, h - 11, Color(25, 25, 25, 255))
                   
                    local frac = (CurTime() - OldTime) / timeleft
                    draw.RoundedBox(0, w - 11, 5 + h * frac, 6, h - h * frac - 10, Color(100, 100, 100, 255))
            end
     
            function panel:Think()
                    if timeleft - (CurTime() - OldTime) <= 0 then
                            panel:Close()
                            return
                    end
     
                    panel.Pos = panel.Pos or -70
                    panel.Pos = Lerp(5 * FrameTime(), panel.Pos, 3 + (VoteQueues[quesid] - 1) * 73)
     
                    panel:SetPos(3, panel.Pos)
            end
     
            panel:SetKeyboardInputEnabled(false)
            panel:SetMouseInputEnabled(true)
            panel:SetVisible(true)
     
            local expl = string.Explode("\n", question)
            local name = expl[1]
     
            local line2 = ""
            for i = 2, #expl do
                    line2 = line2 .. expl[i] .. " "
            end
           
            local label = vgui.Create("DLabel")
            label:SetParent(panel)
            label:SetPos(5, 5)
            label:SetText(name)
            label:SizeToContents()
            label:SetWide(panel:GetWide() - 30)
            -- label:A()
            label:SetVisible(true)
           
            local label1 = vgui.Create("DLabel")
            label1:SetParent(panel)
            label1:SetPos(5, 5)
            label1:MoveBelow(label)
            label1:SetText(line2)
            label1:SizeToContents()
            label1:SetVisible(true)
     
            local nextHeight = label:GetTall() > 78 and label:GetTall() - 78 or 0 // make panel taller for divider and buttons
            panel:SetTall(panel:GetTall() + nextHeight)
     
            local divider = vgui.Create("Divider")
            divider:SetParent(panel)
            divider:SetPos(2, panel:GetTall() - 30)
            divider:SetSize(180, 2)
            divider:SetVisible(true)
     
            local ybutton = vgui.Create("Button")
            ybutton:SetParent(panel)
            ybutton:SetPos(25, panel:GetTall() - 25)
            ybutton:AlignLeft(10)
            ybutton:SetSize(80, 20)
            ybutton:SetCommand("!")
            ybutton:SetText("Yes")
            ybutton:SetVisible(true)
            ybutton.DoClick = function()
                    LocalPlayer():ConCommand("ans " .. quesid .. " 1\n")
                    panel:Close()
            end
            ybutton:SetColor(color_white)
            ybutton:SetFont("DermaDefaultBold")
            ybutton.Paint = function(me)
                    local w, h = me:GetSize()
                    draw.RoundedBox(4, 0, 0, w, h, Color(0, 0, 0, 255))
                    draw.RoundedBox(4, 1, 1, w - 2, h - 2, Color(27, 117, 36, 255))
                   
                    if (me.Hovered) then
                            draw.RoundedBox(4, 0, 0, w, h, Color(255, 255, 255, 100))
                    end
            end
           
            local nbutton = vgui.Create("Button")
            nbutton:SetParent(panel)
            nbutton:SetPos(70, panel:GetTall() - 25)
            nbutton:SetSize(80, 20)
            nbutton:AlignRight(25)
            nbutton:SetCommand("!")
            nbutton:SetText("No")
            nbutton:SetVisible(true)
            nbutton.DoClick = function()
                    LocalPlayer():ConCommand("ans " .. quesid .. " 2\n")
                    panel:Close()
            end
            nbutton:SetFont("DermaDefaultBold")
            nbutton:SetColor(color_white)
            nbutton.Paint = function(me)
                    local w, h = me:GetSize()
                    draw.RoundedBox(4, 0, 0, w, h, Color(0, 0, 0, 255))
                    draw.RoundedBox(4, 1, 1, w - 2, h - 2, Color(175, 0, 0, 255))
                   
                    if (me.Hovered) then
                            draw.RoundedBox(4, 0, 0, w, h, Color(255, 255, 255, 100))
                    end
            end
     
            PanelNum = PanelNum + 140
            VoteVGUI[quesid .. "vote"] = panel
    end
    usermessage.Hook("DoQuestion", MsgDoQuestion)
     
    local function KillQuestionVGUI(msg)
            local id = msg:ReadString()
     
            if QuestionVGUI[id .. "ques"] and QuestionVGUI[id .. "ques"]:IsValid() then
                    QuestionVGUI[id .. "ques"]:Close()
            end
    end
    usermessage.Hook("KillQuestionVGUI", KillQuestionVGUI)
     
    local function DoVoteAnswerQuestion(ply, cmd, args)
            if not args[1] then return end
     
            local vote = 2
            if tonumber(args[1]) == 1 or string.lower(args[1]) == "yes" or string.lower(args[1]) == "true" then vote = 1 end
     
            for k,v in pairs(VoteVGUI) do
                    if ValidPanel(v) then
                            local ID = string.sub(k, 1, -5)
                            VoteVGUI[k]:Close()
                            RunConsoleCommand("vote", ID, vote)
                            return
                    end
            end
     
            for k,v in pairs(QuestionVGUI) do
                    if ValidPanel(v) then
                            local ID = string.sub(k, 1, -5)
                            QuestionVGUI[k]:Close()
                            RunConsoleCommand("ans", ID, vote)
                            return
                    end
            end
    end
    concommand.Add("rp_vote", DoVoteAnswerQuestion)
     
    local function DoLetter(msg)
            LetterWritePanel = vgui.Create("Frame")
            LetterWritePanel:SetPos(ScrW() / 2 - 75, ScrH() / 2 - 100)
            LetterWritePanel:SetSize(150, 200)
            LetterWritePanel:SetMouseInputEnabled(true)
            LetterWritePanel:SetKeyboardInputEnabled(true)
            LetterWritePanel:SetVisible(true)
    end
    usermessage.Hook("DoLetter", DoLetter)
     
    //Modify this
    local Colors = {
            //Main menu
            F4MenuBackground = Color(0,105,31,80),
            F4MenuBorder = Color(60,60,60,160),
            LogoCardBackground = Color(30,16,36,180),
            LogoCardTop = Color(255,255,255,255),
            LogoCardBottom = Color(20,250,60,255),
            CanvasBackground = Color(26,26,26,220),
            //Actions tab
            ButtonBackground = Color(201,201,201,255),
            ButtonText = Color(120,120,120,255),
            CategoryBackground = Color(151,151,151,255),
            //Jobs tab
            JobOutlineHover = Color(255,255,255),
            JobOutlinePressed = Color(10,10,255),
            //Shop tab
            ShopItemBackground = Color(201,201,201,255),
            ShopDescriptionBackground = Color(0,0,0,200),
            //Shared between tabs
            TabActive = Color(26,26,26,220),
            TabInactive = Color(60,60,60,220),
            TabTitleFront = Color(255,255,255,255),
            TabTitleShadow = Color(0,0,0,255),
    }
    local Texts = {
            //Menu
            LogoCardTop = 'ZombieRP',
            LogoCardBottom = 'Main Menu',
            //Tab titles
            ActionsTabTitle = 'Actions',
            JobsTabTitle = 'Jobs',
            ShopTabTitle = 'Shop',
            ForumTabTitle = 'Rules',
            //Some localizations
            DescriptionTitle = 'Description:',
            WeaponsNone = "This job has no weapons.",
            WeaponsSpecial = "Weapons:",
            CurrentTeam = 'Current: ',
            //Some system settings - no modifications needed, really
            TabTitleFont = 'F4TabTitle',
            ButtonFont = 'DermaDefaultBold',
            DarkRPCommand = 'say',
    }
    local Materials = {
            GradientNormal = Material('gui/gradient'),
            GradientUp = Material('gui/gradient_up'),
            GradientDown = Material('gui/gradient_down'),
            GradientCenter = Material('gui/center_gradient'),
            ActionsButton = Material('icon16/star.png'),
            JobsButton = Material('icon16/user_suit.png'),
            ShopButton = Material('icon16/cart.png'),
            ForumButton = Material('icon16/heart.png'),
    }
     
    //Command workaround
    local function RunCmd(...)
            local arg = {...}
            if Texts.DarkRPCommand:lower():find('say') then
                    arg = table.concat(arg,' ')
            else
                    arg = table.concat(arg,'" "')
            end
            RunConsoleCommand(Texts.DarkRPCommand,arg)
    end
     
    //This is what creates the layout
    local function CreateMenu()
            if F4Menu and IsValid(F4Menu) then
                    F4Menu:Remove()
            end
     
            local LogoCard,Canvas,TopBar
            local ActionsButton,ActionsTab
            local JobsButton,JobsTab
            local ShopButton,ShopTab
            local DonateButton,DonateTab
     
            F4Menu = vgui.Create('DFrame')
            F4Menu:SetSize(800,555)
            F4Menu:Center()
            F4Menu:MakePopup()
            F4Menu:ShowCloseButton(true)
            F4Menu.btnMaxim:SetVisible( false )
            F4Menu.btnMinim:SetVisible( false )
            F4Menu:SetDeleteOnClose(false)
            F4Menu:ParentToHUD()
            F4Menu:SetDraggable(false)
            F4Menu:SetSizable(false)
            F4Menu:SetTitle('')
            F4Menu.Tabs = {}
            function F4Menu:OpenTab(Button)
                    if Button == nil then
                            if self.OpenedTab and self.OpenedTab:IsValid() then
                                    Button = self.OpenedTab
                            else
                                    Button = table.GetFirstKey(self.Tabs)
                            end
                    end
                    if self.Tabs[Button] and IsValid(self.Tabs[Button]) then
                            self.OpenedTab = Button
                            for k,v in pairs(self.Tabs) do
                                    k.Toggled = false
                                    v:SetVisible(false)
                            end
                            self.Tabs[Button]:SetVisible(true)
                            self.Tabs[Button]:Refresh()
                            Button.Toggled = true
                    end
            end
            function F4Menu:Paint(w,h)
                    surface.SetDrawColor(Colors.F4MenuBackground)
                    surface.DrawRect(0,0,w,h)
                    surface.SetDrawColor(Colors.F4MenuBorder)
                    surface.DrawOutlinedRect(0,0,w,h)
            end
     
            LogoCard = vgui.Create('DPanel',F4Menu)
            LogoCard:SetPos(5,5)
            LogoCard:SetSize(175,70)
            function LogoCard:Paint(w,h)
                    draw.RoundedBox(4,0,0,w,h,Colors.LogoCardBackground)
                    draw.SimpleText(Texts.LogoCardTop,'DermaLarge',5,5,Colors.LogoCardTop)
                    draw.SimpleText(Texts.LogoCardBottom,'DermaLarge',5,35,Colors.LogoCardBottom)
            end
            F4Menu.LogoCard = LogoCard
     
            Canvas = vgui.Create('DPanel',F4Menu)
            Canvas:SetPos(5,LogoCard.y+LogoCard:GetTall()+5)
            Canvas:SetSize(F4Menu:GetWide()-10,F4Menu:GetTall()-(LogoCard.y+LogoCard:GetTall()+10))
            function Canvas:Paint(w,h)
                    draw.RoundedBox(8,0,0,w,h,Colors.CanvasBackground)
            end
            F4Menu.Canvas = Canvas
    end
     
    //Options stuff
    local function CreateButton(w,text,icon,doclick)
            text = tostring(text)
            w = tonumber(w) or 2
            icon = icon and Material(icon) or false
            doclick = doclick or function()end
            w = w*185 + (w-1)*5
     
            local button = vgui.Create('DButton')
            button:SetSize(w,45)
            button.Paint = function(self,w,h)
                    draw.RoundedBox(4,0,0,w,h,Colors.ButtonBackground)
                    if icon then
                            surface.SetDrawColor(Color(200,200,200,255))
                            surface.SetMaterial(icon)
                            surface.DrawTexturedRect(8,h/2-8,16,16)
                            draw.SimpleText(text,Texts.ButtonFont,8+w/2,h/2,Colors.ButtonText,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
                    else
                            draw.SimpleText(text,Texts.ButtonFont,w/2,h/2,Colors.ButtonText,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
                    end
                    return true
            end
            button.DoClick = doclick
            return button
    end
    local function GetOptions(type,col)
            type = tostring(type)
            col = col or Color(151,151,151,255)
            local Actions = vgui.Create("DPanelList")
            Actions:SetAutoSize(true)
            Actions:SetPadding(10)
            Actions:SetSpacing(5)
            Actions:EnableHorizontal(true)
            local Category = vgui.Create("DCollapsibleCategory")
            Category:SetLabel(type)
            Category:SetContents(Actions)
            Category.Paint = function(self,w,h)
                    draw.RoundedBox(4,0,0,w,h,col)
                    draw.RoundedBox(4,0,0,w,h,Color(151,151,151,100))
            end
            if type == 'general' then
                    Category:SetLabel('General')
                   
                    Actions:AddItem(CreateButton(2,
                            "Drop Money",
                            'icon16/money.png',
                            function()
                                    Derma_StringRequest("Amount of money", "How much money do you want to drop?", "", function(a) RunCmd("/dropmoney", tostring(a)) end)
                            end))

                                        Actions:AddItem(CreateButton(2,
                            string.format("Call an admin"),
                            'icon16/shield.png',
                            function()
                                    RunCmd("@ Admin, to me i need help!")
									F4Menu:Close()
                            end))              
                    Actions:AddItem(CreateButton(2,
                            "Drop Weapon",
                            'icon16/box.png',
                            function()
                                    RunCmd("/drop")
                            end))
                    Actions:AddItem(CreateButton(2,
                            "Suicide Trick",
                            'icon16/rainbow.png',
                            function()
                                    LocalPlayer():ConCommand("kill")
									F4Menu:Close()
                            end))
            elseif type == 'support' then
                    Category:SetLabel('Support')
					Actions:AddItem(CreateButton(2,
                            string.format("Donate"),
                            'icon16/heart.png',
                            function()
                                    RunCmd("// How to donate? Simple! Go to http://thebounddevs.tk/ and go for the donate tab, further info is there!")
									F4Menu:Close() 
                            end))
            elseif type == 'roleplay' then
                    Category:SetLabel('Roleplay actions')
                    Actions:AddItem(CreateButton(1,
                            'Change RP Name',
                            'icon16/vcard_edit.png',
                            function()
                                    Derma_StringRequest("Roleplay name", "What do you want to change your roleplay name to?", LocalPlayer():Name() or "", function(a) RunCmd("/rpname", tostring(a)) end)
                            end))
                    Actions:AddItem(CreateButton(1,
                            'Custom Job Title',
                            'icon16/vcard_edit.png',
                            function()
                                    Derma_StringRequest("Job title", "What do you want to change your job title to?", LocalPlayer().DarkRPVars.job or "", function(a) RunCmd("/job", tostring(a)) end)
                            end))
                    Actions:AddItem(CreateButton(1,
                            'Demote A Player',
                            'icon16/user_delete.png',
                            function()
                                    local menu = DermaMenu()
                                    for _,ply in pairs(player.GetAll()) do
                                            if ply ~= LocalPlayer() then
                                                    menu:AddOption(ply:Nick(), function()
                                                            Derma_StringRequest("Demote reason", "Why would you demote "..ply:Nick().."?", nil,function(a)RunCmd("/demote", tostring(ply:UserID()).." ".. a)end, function() end )
                                                    end)
                                            end
                                    end
                                    menu:Open()
                            end))
                    Actions:AddItem(CreateButton(1,
                            'Sell All Doors',
                            'icon16/book_delete.png',
                            function() RunCmd("/unownalldoors") end))
            elseif LocalPlayer():Team() == TEAM_SWAT or LocalPlayer():Team() == TEAM_SWATLEADER or LocalPlayer():Team() == TEAM_MAYOR or LocalPlayer():Team() == TEAM_POLICE or LocalPlayer():Team() == TEAM_CHIEF or LocalPlayer():Team() == TEAM_ADMIN or LocalPlayer():Team() == TEAM_SWATMEDIC or LocalPlayer():Team() == TEAM_SWATSNIPER or LocalPlayer():Team() == TEAM_SWATJUGGER or LocalPlayer():Team() == TEAM_SWATHACKER or LocalPlayer():Team() == TEAM_SWATEXPLOSIVE or ply:IsAdmin() then
                    col = team.GetColor(TEAM_POLICE)
                    Category:SetLabel('Survival Protection')
                    Actions:AddItem(CreateButton(1,
                            'Request Warrant',
                            'icon16/script_error.png',
                            function()
                                    local menu = DermaMenu()
                                    for _,ply in pairs(player.GetAll()) do
                                            if ply ~= LocalPlayer() then
                                                    menu:AddOption(ply:Nick(), function()
                                                            Derma_StringRequest("Warrant", "Why would you warrant "..ply:Nick().."?", nil,function(a)RunCmd("/warrant", tostring(ply:UserID()).." ".. a)end, function() end )
                                                    end)
                                            end
                                    end
                                    menu:Open()
                            end))
                    Actions:AddItem(CreateButton(1,
                            'Make Wanted',
                            'icon16/group_error.png',
                            function()
                                    local menu = DermaMenu()
                                    for _,ply in pairs(player.GetAll()) do
                                            if ply ~= LocalPlayer() then
                                                    menu:AddOption(ply:Nick(), function()
                                                            Derma_StringRequest("Warrant", "Why would you make "..ply:Nick().." wanted?", nil,function(a)RunCmd("/wanted", tostring(ply:UserID()).." ".. a)end, function() end )
                                                    end)
                                            end
                                    end
                                    menu:Open()
                            end))
                    Actions:AddItem(CreateButton(1,
                            'Remove Wanted',
                            'icon16/group_add.png',
                            function()
                                    local menu = DermaMenu()
                                    for _,ply in pairs(player.GetAll()) do
                                            if ply ~= LocalPlayer() then
                                                    menu:AddOption(ply:Nick(), function()
                                                            RunCmd("/unwanted", tostring(ply:UserID()))
                                                    end)
                                            end
                                    end
                                    menu:Open()
                            end))
                    if LocalPlayer():IsAdmin() then
                            Actions:AddItem(CreateButton(1,
                                    'Set Jail Position',
                                    'icon16/accept.png',
                                    function() RunCmd("/jailpos") end))
                            Actions:AddItem(CreateButton(1,
                                    'Add Jail Position',
                                    'icon16/add.png',
                                    function() RunCmd("/addjailpos") end))
                    end
            elseif type == 'mayor' then
                    col = team.GetColor(TEAM_MAYOR)
                    Category:SetLabel('Mayor')
                    Actions:AddItem(CreateButton(1,
                            'Initiate lockdown',
                            'icon16/bell_add.png',
                            function() RunCmd("/lockdown") end))
                    Actions:AddItem(CreateButton(1,
                            'Stop Lockdown',
                            'icon16/bell_delete.png',
                            function() RunCmd("/unlockdown") end))
                    Actions:AddItem(CreateButton(1,
                            'Initiate Lottery',
                            'icon16/money.png',
                            function() RunCmd("/lottery") end))
                    Actions:AddItem(CreateButton(1,
                            'Place Law Board',
                            'icon16/application.png',
                            function() RunCmd("/placelaws") end))
                    Actions:AddItem(CreateButton(1,
                            'Add Law',
                            'icon16/application_add.png',
                            function()
                                    Derma_StringRequest("Add a law", "Type the law you would like to add here.", "", function(law)
                                            RunCmd("/addlaw ", law)
                                    end)
                            end))
                    Actions:AddItem(CreateButton(1,
                            'Remove Law',
                            'icon16/application_delete.png',
                            function()
                                    Derma_StringRequest("Remove a law", "Enter the number of the law you would like to remove here.", "", function(num)
                                            RunCmd("/removelaw", num)
                                    end)
                                    end))
            elseif type == 'mobboss' then
                    local Team = LocalPlayer():Team()
                    col = Team == TEAM_MOB and team.GetColor(TEAM_MOB) or Team == TEAM_BDL and team.GetColor(TEAM_BDL) or col
                    Category:SetLabel('Mob boss')
                    Actions:AddItem(CreateButton(1,
                            'Set Agenda',
                            'icon16/application_view_detail.png',
                            function()
                                    Derma_StringRequest("Set agenda", "What text would you like to change agenda to?", LocalPlayer().DarkRPVars.agenda or "", function(a)
                                            RunCmd("/agenda", tostring(a))
                                    end)
                            end))
			elseif type == 'admin' then
			        col = team.GetColor(TEAM_HITMAN)
					Category:SetLabel('Administration')
					Actions:AddItem(CreateButton(1,
					        'Slay Player',
							'icon16/application_delete.png',
							function()
							        local menu = DermaMenu()
                                    for _,ply in pairs(player.GetAll()) do
                                            if ply ~= LocalPlayer() then
                                                    menu:AddOption(ply:Nick(), function()
                                                            Derma_StringRequest("Slay", nil,function(a)RunCmd("/slay", tostring(ply:UserID()), "rocket")end, function() end )
                                                    end)
                                            end
                                    end
                            end))
		    end
            return Category
    end
     
    //Stuff related to teams
    local function GetDescription(team)
            local Team = RPExtraTeams[team]
            if !Team then return false end
            local description = Texts.DescriptionTitle
            description = description.."\n"..Team.description
            description = description.."\n\n"
            local weps = ""
            if #Team.weapons > 0 then
                    weps = Texts.WeaponsSpecial
                    for k,v in pairs(Team.weapons) do
                            local class = weapons.Get(v)
                            if class then
                                    weps = weps.."\n* "..(class.PrintName or v)
                            end
                    end
            else
                    weps = Texts.WeaponsNone
            end
            description = description..weps
            return description
    end
    local function GetDisplayTeam(team)
            local Team = RPExtraTeams[team]
            if !Team then return false end
            Team = table.Copy(Team)
            if LocalPlayer():Team() == team then
                    Team.name = Texts.CurrentTeam..Team.name
            end
            Team.desc_full = GetDescription(team)
            if type(Team.model) == "table" then
                    Team.model = table.Random(Team.model)
            end
            return Team
    end
     
    //Tabs stuff
    local function AddActionsTab()
            local ActionList
            local ActionsButton = vgui.Create('DButton',F4Menu)
            ActionsButton:SetPos(280,F4Menu.Canvas.y-35)
            ActionsButton:SetSize(110,35)
            ActionsButton.Icon = Materials.ActionsButton
            ActionsButton.Text = Texts.ActionsTabTitle
            ActionsButton.DoClick = function(self) F4Menu:OpenTab(self) end
            ActionsButton.Paint = function(self,w,h)
                    local ry,rh
                    if self.Toggled then
                            ry,rh = 0,h
                            draw.RoundedBoxEx(4,0,ry,w,rh,Colors.TabActive,true,true)
                    else
                            ry,rh = 5,h-5
                            draw.RoundedBoxEx(4,0,ry,w,rh,Colors.TabInactive,true,true)
                    end
                    surface.SetDrawColor(Color(255,255,255,255))
                    surface.SetMaterial(self.Icon)
                    surface.DrawTexturedRect(8,ry+rh/2-8,16,16)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32+3,ry+rh/2+3,Colors.TabTitleShadow,nil,TEXT_ALIGN_CENTER)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32,ry+rh/2,Colors.TabTitleFront,nil,TEXT_ALIGN_CENTER)
                    return true
            end
     
            local ActionsTab = vgui.Create('DPanel',F4Menu.Canvas)
            ActionsTab:SetSize(F4Menu.Canvas:GetSize())
            ActionsTab.Paint = function()end
            ActionsTab.Refresh = function(self)
                    ActionList:Clear()
                    ActionList:AddItem(GetOptions('general'))
					ActionList:AddItem(GetOptions('support'))
                    ActionList:AddItem(GetOptions('roleplay'))
                    local team = LocalPlayer():Team()
                    if team == TEAM_MAYOR then
                            ActionList:AddItem(GetOptions('mayor'))
                            ActionList:AddItem(GetOptions('police'))
                    elseif table.HasValue({TEAM_SECRETS, TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR, TEAM_SWAT, TEAM_SWATLEADER, TEAM_SWATMEDIC, TEAM_SWATSNIPER},LocalPlayer():Team()) then
                            ActionList:AddItem(GetOptions('police'))
                    elseif team == TEAM_MOB or team == TEAM_BDL then
                            ActionList:AddItem(GetOptions('mobboss'))
                    end
            end
     
            ActionList = vgui.Create('DPanelList',ActionsTab)
            ActionList:SetPos(5,5)
            ActionList:SetSize(ActionsTab:GetWide()-10,ActionsTab:GetTall()-10)
            ActionList:EnableVerticalScrollbar(true)
            ActionList:SetSpacing(5)
     
            F4Menu.Tabs[ActionsButton] = ActionsTab
            F4Menu:OpenTab(ActionsButton)
            return ActionsButton
    end
    local function AddJobsTab()
            local JobList,JobPreview,JobsTab,JobsButton
            JobsButton = vgui.Create('DButton',F4Menu)
            JobsButton:SetPos(410,F4Menu.Canvas.y-35)
            JobsButton:SetSize(110,35)
            JobsButton.Icon = Materials.JobsButton
            JobsButton.Text = Texts.JobsTabTitle
            JobsButton.DoClick = function(self) F4Menu:OpenTab(self) end
            JobsButton.Paint = function(self,w,h)
                    local ry,rh
                    if self.Toggled then
                            ry,rh = 0,h
                            draw.RoundedBoxEx(4,0,ry,w,rh,Colors.TabActive,true,true)
                    else
                            ry,rh = 5,h-5
                            draw.RoundedBoxEx(4,0,ry,w,rh,Colors.TabInactive,true,true)
                    end
                    surface.SetDrawColor(Color(255,255,255,255))
                    surface.SetMaterial(self.Icon)
                    surface.DrawTexturedRect(8,ry+rh/2-8,16,16)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32+3,ry+rh/2+3,Colors.TabTitleShadow,nil,TEXT_ALIGN_CENTER)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32,ry+rh/2,Colors.TabTitleFront,nil,TEXT_ALIGN_CENTER)
                    return true
            end
     
            local PAINT_JOB = function(self,w,h)
                    draw.RoundedBox(4,0,0,w,h,self.m_colText)
                    if self.Hovered then
                            draw.RoundedBox(4,4,4,w-8,h-8,!self.Depressed and Colors.JobOutlineHover or Colors.JobOutlinePressed)
                            draw.RoundedBox(4,6,6,w-12,h-12,self.m_colText)
                    end
                    draw.SimpleText(self:GetText(),Texts.TabTitleFont,70,h/2,nil,nil,TEXT_ALIGN_CENTER)
                    return true
            end
            local DOCLICK_JOB = function(self,w,h)
                    local Team = JobPreview.Team
                    if Team.vote then
                            if ((Team.admin == 0 and LocalPlayer():IsAdmin()) or (Team.admin == 1 and LocalPlayer():IsSuperAdmin())) then
                                    local menu = DermaMenu()
                                    menu:AddOption("Vote", function() RunCmd("/vote"..Team.command) F4Menu:Close() end)
                                    menu:AddOption("Do not vote", function() RunCmd("/"..Team.command) F4Menu:Close() end)
                                    menu:Open()
                            else
                                    RunCmd("/vote" .. Team.command)
                                    F4Menu:Close()
                            end
                    else
                            RunCmd("/" .. Team.command)
                            F4Menu:Close()
                    end
            end
            JobsTab = vgui.Create('DPanel',F4Menu.Canvas)
            JobsTab:SetSize(F4Menu.Canvas:GetSize())
            JobsTab.Paint = function()end
            JobsTab.Refresh = function(self)
                    local ply = LocalPlayer()
                    local pt = ply:Team()
                    local width = (JobList:GetWide()-25)/2
                    JobList:Clear()
                    JobPreview.Team = GetDisplayTeam(LocalPlayer():Team())
                    JobPreview:Refresh()
     
                    for k,v in pairs(RPExtraTeams) do
                            local show = true
                            if pt == k then
                                    show = false
                            elseif v.admin == 1 and not ply:IsAdmin() then
                                    show = false
                            end
                            if v.admin > 1 and not ply:IsSuperAdmin() then
                                    show = false
                            end
                            if v.customCheck and not v.customCheck(ply) then
                                    show = false
                            end
                            if (type(v.NeedToChangeFrom) == "number" and pt ~= v.NeedToChangeFrom) or (type(v.NeedToChangeFrom) == "table" and not table.HasValue(v.NeedToChangeFrom, pt)) then
                                    show = false
                            end
     
                            if show then
                                    local model = v.model
                                    if type(model) == "table" then
                                            model = table.Random(model)
                                    end
     
                                    local button = vgui.Create('DButton')
                                    button:SetSize(width,66)
                                    button:SetColor(team.GetColor(k))
                                    button:SetText(v.name)
                                    button.Paint = PAINT_JOB
                                    button.DoClick = DOCLICK_JOB
                                    button.OnCursorEntered = function(self)
                                            JobPreview.Team = GetDisplayTeam(self.Team)
                                            JobPreview:Refresh()
                                    end
                                    button:SetTooltip('Press to join job')
     
                                    local icon = vgui.Create('SpawnIcon',button)
                                    icon:SetSize(64,64)
                                    icon:SetPos(1,1)
                                    icon:SetModel(model)
                                    icon:SetMouseInputEnabled(false)
                                    icon.PaintOver = function()end
                                    icon.DoClick = function()end
     
                                    button.Team = k
     
                                    JobList:AddItem(button)
                            end
                    end
            end
     
            JobList = vgui.Create('DPanelList',JobsTab)
            JobList:SetPos(5,5)
            JobList:SetSize((JobsTab:GetWide()-15)*.6,JobsTab:GetTall()-10)
            JobList:EnableHorizontal(true)
            JobList:EnableVerticalScrollbar(true)
            JobList:SetSpacing(10)
     
            JobPreview = vgui.Create('DPanelList',JobsTab)
            JobPreview:SetPos(10+JobList:GetWide(),5)
            JobPreview:SetSize((JobsTab:GetWide()-15)*.4,JobsTab:GetTall()-10)
            JobPreview.Paint = function(self,w,h)
                    draw.RoundedBox(4,0,0,w,h,Color(120,120,120,45))
                    if self.Team then
                            draw.RoundedBox(4,0,0,w,50,self.Team.color)
                            draw.SimpleText(self.Team.name,Texts.TabTitleFont,w/2,20,nil,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
                            draw.RoundedBox(4,0,40,w,h-40,Color(220,220,220))
                    end
            end
            JobPreview.Refresh = function(self)
                    local enabled = tobool(self.Team)
                    self.Description:SetVisible(enabled)
                    if enabled then
                            self.Description:SetText(self.Team.desc_full)
                    end
            end
     
            JobPreview.Description = vgui.Create('DTextEntry',JobPreview)
            JobPreview.Description:SetPos(5,45)
            JobPreview.Description:SetSize(JobPreview:GetWide()-10,JobPreview:GetTall()-50)
            JobPreview.Description:SetMultiline(true)
            JobPreview.Description:SetEditable(false)
            JobPreview.Description:SetDrawBackground(false)
     
            F4Menu.Tabs[JobsButton] = JobsTab
            return JobsButton
    end
    local function AddShopTab()
            local ItemList
            local ShopButton = vgui.Create('DButton',F4Menu)
            ShopButton:SetPos(540,F4Menu.Canvas.y-35)
            ShopButton:SetSize(110,35)
            ShopButton.Icon = Materials.ShopButton
            ShopButton.Text = Texts.ShopTabTitle
            ShopButton.DoClick = function(self) F4Menu:OpenTab(self) end
            ShopButton.Paint = function(self,w,h)
                    local ry,rh
                    if self.Toggled then
                            ry,rh = 0,h
                            draw.RoundedBoxEx(4,0,ry,w,rh,Colors.TabActive,true,true)
                    else
                            ry,rh = 5,h-5
                            draw.RoundedBoxEx(4,0,ry,w,rh,Colors.TabInactive,true,true)
                    end
                    surface.SetDrawColor(Color(255,255,255,255))
                    surface.SetMaterial(self.Icon)
                    surface.DrawTexturedRect(8,ry+rh/2-8,16,16)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32+3,ry+rh/2+3,Colors.TabTitleShadow,nil,TEXT_ALIGN_CENTER)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32,ry+rh/2,Colors.TabTitleFront,nil,TEXT_ALIGN_CENTER)
                    return true
            end
     
            local ShopTab = vgui.Create('DPanel',F4Menu.Canvas)
            ShopTab:SetSize(F4Menu.Canvas:GetSize())
            ShopTab.Paint = function()end
            ShopTab.Refresh = function()
                    ItemList:Clear()
                    if #CustomShipments > 0 then
                            local WepCat = vgui.Create("DCollapsibleCategory")
                            WepCat.Paint = function(self,w,h) draw.RoundedBox(4,0,0,w,h,Colors.CategoryBackground) end
                            WepCat:SetLabel("Weapons")
                                    local WepPanel = vgui.Create("DPanelList")
                                    WepPanel:SetSize(470, 100)
                                    WepPanel:SetAutoSize(true)
                                    WepPanel:EnableHorizontal(true)
                                    WepPanel:SetPadding(5)
                                    WepPanel:SetSpacing(5)
                                    local function AddWepIcon(Model, description, command)
                                            local button = vgui.Create("DButton")
                                            button:SetSize(80,80)
                                            button.Paint = function(self,w,h)
                                                    draw.RoundedBox(4,0,0,w,h,Colors.ShopItemBackground)
                                                    return true
                                            end
                                            button.PaintOver = function(self,w,h)
                                                    if self.Hovered then
                                                            draw.RoundedBoxEx(4,0,h-20,w,20,Colors.ShopDescriptionBackground,false,false,true,true)
                                                            draw.SimpleText(description,'DefaultSmall',w/2,h-10,nil,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
                                                    end
                                            end
                                            button.DoClick = function() RunCmd(command) end
                                            button:SetToolTip(description)
                                            local icon = vgui.Create("SpawnIcon",button)
                                            icon:InvalidateLayout( true )
                                            icon:SetModel(Model)
                                            icon:SetSize(64, 64)
                                            icon:SetPos(8,8)
                                            icon:SetMouseInputEnabled(false)
                                            WepPanel:AddItem(button)
                                    end
     
                                    local shown = 0
                                    for k,v in pairs(CustomShipments) do
                                            if (v.seperate and (not GAMEMODE.Config.restrictbuypistol or
                                                    (GAMEMODE.Config.restrictbuypistol and (not v.allowed[1] or table.HasValue(v.allowed, LocalPlayer():Team())))))
                                                    and (not v.customCheck or v.customCheck and v.customCheck(LocalPlayer())) then
                                                    AddWepIcon(v.model, v.name..': '.. CUR .. (v.pricesep or ""), "/buy "..v.name)
                                                    shown = shown + 1
                                            end
                                    end
     
                                    for k,v in pairs(GAMEMODE.AmmoTypes) do
                                            if not v.customCheck or v.customCheck(LocalPlayer()) then
                                                    AddWepIcon(v.model, v.name..': '.. CUR .. v.price, "/buyammo " .. v.ammoType)
                                                    shown = shown + 1
                                            end
                                    end
                            if shown > 0 then
                                    WepCat:SetContents(WepPanel)
                                    ItemList:AddItem(WepCat)
                            else
                                    WepPanel:Remove()
                                    WepCat:Remove()
                            end
                    end
                    if #DarkRPEntities > 0 then
                            local EntCat = vgui.Create("DCollapsibleCategory")
                            EntCat.Paint = function(self,w,h) draw.RoundedBox(4,0,0,w,h,Colors.CategoryBackground) end
                            EntCat:SetLabel("Entities")
                                    local EntPanel = vgui.Create("DPanelList")
                                    EntPanel:SetSize(470, 200)
                                    EntPanel:SetAutoSize(true)
                                    EntPanel:EnableHorizontal(true)
                                    EntPanel:SetPadding(5)
                                    EntPanel:SetSpacing(5)
                                    local function AddEntIcon(Model, description, command)
                                            local button = vgui.Create("DButton")
                                            button:SetSize(80,80)
                                            button.Paint = function(self,w,h)
                                                    draw.RoundedBox(4,0,0,w,h,Colors.ButtonBackground)
                                                    return true
                                            end
                                            button.PaintOver = function(self,w,h)
                                                    if self.Hovered then
                                                            draw.RoundedBoxEx(4,0,h-20,w,20,Color(0,0,0,200),false,false,true,true)
                                                            draw.SimpleText(description,'DefaultSmall',w/2,h-10,nil,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
                                                    end
                                            end
                                            button.DoClick = function() RunCmd(command) end
                                            button:SetToolTip(description)
                                            local icon = vgui.Create("SpawnIcon",button)
                                            icon:InvalidateLayout( true )
                                            icon:SetModel(Model)
                                            icon:SetSize(64, 64)
                                            icon:SetPos(8,8)
                                            icon:SetMouseInputEnabled(false)
                                            EntPanel:AddItem(button)
                                    end
     
                                    local shown = 0
                                    for k,v in pairs(DarkRPEntities) do
                                            if not v.allowed or (type(v.allowed) == "table" and table.HasValue(v.allowed, LocalPlayer():Team()))
                                                    and (not v.customCheck or (v.customCheck and v.customCheck(LocalPlayer()))) then
                                                    local cmdname = string.gsub(v.ent, " ", "_")
     
                                                    AddEntIcon(v.model, v.name ..": " .. CUR .. v.price, v.cmd)
                                                    shown = shown + 1
                                            end
                                    end
     
                                    if FoodItems and (GAMEMODE.Config.foodspawn or LocalPlayer():Team() == TEAM_COOK) and (GAMEMODE.Config.hungermod or LocalPlayer():Team() == TEAM_COOK) then
                                            for k,v in pairs(FoodItems) do
                                                    AddEntIcon(v.model, k .. ": " .. CUR .. "15", "/buyfood "..k)
                                                    shown = shown + 1
                                            end
                                    end
                                    for k,v in pairs(CustomShipments) do
                                            if not v.noship and table.HasValue(v.allowed, LocalPlayer():Team())
                                                    and (not v.customCheck or (v.customCheck and v.customCheck(LocalPlayer()))) then
                                                    AddEntIcon(v.model, string.format(LANGUAGE.buy_a, "a "..v.name .." shipment", CUR .. tostring(v.price)), "/buyshipment "..v.name)
                                                    shown = shown + 1
                                            end
                                    end
                            if shown > 0 then
                                    EntCat:SetContents(EntPanel)
                                    ItemList:AddItem(EntCat)
                            else
                                    EntPanel:Remove()
                                    EntCat:Remove()
                            end
                    end
                    if #CustomVehicles > 0 then
                            local VehCat = vgui.Create("DCollapsibleCategory")
                            VehCat.Paint = function(self,w,h) draw.RoundedBox(4,0,0,w,h,Colors.CategoryBackground) end
                            VehCat:SetLabel("Vehicles")
                                    local VehPanel = vgui.Create("DPanelList")
                                    VehPanel:SetSize(470, 200)
                                    VehPanel:SetAutoSize(true)
                                    VehPanel:EnableHorizontal(true)
                                    VehPanel:SetPadding(5)
                                    VehPanel:SetSpacing(5)
                                    local function AddVehIcon(Model, skin, description, command)
                                            local button = vgui.Create("DButton")
                                            button:SetSize(80,80)
                                            button.Paint = function(self,w,h)
                                                    draw.RoundedBox(4,0,0,w,h,Colors.ButtonBackground)
                                                    return true
                                            end
                                            button.PaintOver = function(self,w,h)
                                                    if self.Hovered then
                                                            draw.RoundedBoxEx(4,0,h-20,w,20,Color(0,0,0,200),false,false,true,true)
                                                            draw.SimpleText(description,'DefaultSmall',w/2,h-10,nil,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
                                                    end
                                            end
                                            button.DoClick = function() RunCmd(command) end
                                            button:SetToolTip(description)
                                            local icon = vgui.Create("SpawnIcon",button)
                                            icon:InvalidateLayout( true )
                                            icon:SetModel(Model)
                                            icon:SetSize(64, 64)
                                            icon:SetPos(8,8)
                                            icon:SetMouseInputEnabled(false)
                                            VehPanel:AddItem(button)
                                    end
     
                                    local shown = 0
                                    for k,v in pairs(CustomVehicles) do
                                            if (not v.allowed or table.HasValue(v.allowed, LocalPlayer():Team())) and (not v.customCheck or v.customCheck(LocalPlayer())) then
                                                    local Skin = (list.Get("Vehicles")[v.name] and list.Get("Vehicles")[v.name].KeyValues and list.Get("Vehicles")[v.name].KeyValues.Skin) or "0"
                                                    AddVehIcon(v.model or "models/buggy.mdl", Skin, "Buy a "..v.name.." for "..CUR..v.price, "/buyvehicle "..v.name)
                                                    shown = shown + 1
                                            end
                                    end
                            if shown > 0 then
                                    VehCat:SetContents(VehPanel)
                                    ItemList:AddItem(VehCat)
                            else
                                    VehPanel:Remove()
                                    VehCat:Remove()
                            end
                            ItemList:AddItem(VehCat)
                    end
            end
     
            ItemList = vgui.Create('DPanelList',ShopTab)
            ItemList:SetPos(5,5)
            ItemList:SetSize(ShopTab:GetWide()-10,ShopTab:GetTall()-10)
            ItemList:EnableVerticalScrollbar(true)
            ItemList:SetSpacing(5)
     
            F4Menu.Tabs[ShopButton] = ShopTab
            return ShopButton
    end
    local function AddForumTab()
            local ForumButton = vgui.Create('DButton',F4Menu)
            ForumButton:SetPos(670,F4Menu.Canvas.y-35)
            ForumButton:SetSize(110,35)
            ForumButton.Icon = Materials.ForumButton
            ForumButton.Text = Texts.ForumTabTitle
            ForumButton.DoClick = function(self) F4Menu:OpenTab(self) end
            ForumButton.Paint = function(self,w,h)
                    local ry,rh
                    if self.Toggled then
                            ry,rh = 0,h
                            draw.RoundedBoxEx(4,0,ry,w,rh,Color(26,26,26,220),true,true)
                    else
                            ry,rh = 5,h-5
                            draw.RoundedBoxEx(4,0,ry,w,rh,Color(60,60,60,220),true,true)
                    end
                    surface.SetDrawColor(Color(255,255,255,255))
                    surface.SetMaterial(self.Icon)
                    surface.DrawTexturedRect(8,ry+rh/2-8,16,16)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32+3,ry+rh/2+3,Color(0,0,0,255),nil,TEXT_ALIGN_CENTER)
                    draw.SimpleText(self.Text,Texts.TabTitleFont,32,ry+rh/2,Color(255,255,255,255),nil,TEXT_ALIGN_CENTER)
                    return true
            end
     
            local ForumTab = vgui.Create('DPanel',F4Menu.Canvas)
            ForumTab:SetSize(F4Menu.Canvas:GetSize())
            ForumTab.Paint = function()end
            ForumTab.Refresh = function()end
     
            local HTML = vgui.Create('HTML',ForumTab)
            HTML:SetPos(0,0)
            HTML:SetSize(ForumTab:GetWide(),ForumTab:GetTall()-35)
            HTML:OpenURL('https://dl.dropboxusercontent.com/u/182253869/ZombieRP.html')
    
     
            F4Menu.Tabs[ForumButton] = ForumTab
            return  ForumButton
    end
     
    //A small trebuchet20 fix
    surface.CreateFont(Texts.TabTitleFont, {
            font = "Trebuchet MS",
            size = 20,
            weight = 900
    })
    local function ChangeJobVGUI()
            if F4Menu and F4Menu:IsValid() then
                    F4Menu:SetVisible(true)
                    F4Menu:OpenTab()
                    return
            end
            CreateMenu()
            AddJobsTab()
            AddShopTab()
            AddForumTab()
            AddActionsTab()
    end
    usermessage.Hook("ChangeJobVGUI", ChangeJobVGUI)
     

     local KeyFrameVisible = false
        local function KeysMenu(um)
            local Vehicle = LocalPlayer():GetEyeTrace().Entity
            Vehicle = IsValid(Vehicle) and Vehicle:IsVehicle()
            if KeyFrameVisible then return end
            local trace = LocalPlayer():GetEyeTrace()
            local Frame = vgui.Create("DFrame")
            KeyFrameVisible = true
            Frame:SetSize(200, 470)
            Frame:Center()
            Frame:SetVisible(true)
            Frame:MakePopup()
     
            function Frame:Think()
                    local ent = LocalPlayer():GetEyeTrace().Entity
                    if not IsValid(ent) or (not ent:IsDoor() and not string.find(ent:GetClass(), "vehicle")) or ent:GetPos():Distance(LocalPlayer():GetPos()) > 200 then
                            self:Close()
                    end
                    if (!self.Dragging) then return end
                    local x = gui.MouseX() - self.Dragging[1]
                    local y = gui.MouseY() - self.Dragging[2]
                    x = math.Clamp( x, 0, ScrW() - self:GetWide() )
                    y = math.Clamp( y, 0, ScrH() - self:GetTall() )
                    self:SetPos( x, y )
            end
            local Entiteh = "Door"
            if Vehicle then
                    Entiteh = "Vehicle"
            end
            Frame:SetTitle(Entiteh .. " Options")
     
            function Frame:Close()
                    KeyFrameVisible = false
                    self:SetVisible( false )
                    self:Remove()
            end
     
            if trace.Entity:OwnedBy(LocalPlayer()) then
                    if not trace.Entity.DoorData then return end -- Don't open the menu when the door settings are not loaded yet
                    local Owndoor = vgui.Create("DButton", Frame)
                    Owndoor:SetPos(10, 30)
                    Owndoor:SetSize(180, 100)
                    Owndoor:SetText("Sell " .. Entiteh)
                    Owndoor.DoClick = function() RunConsoleCommand("darkrp", "/toggleown") Frame:Close() end
     
                    local AddOwner = vgui.Create("DButton", Frame)
                    AddOwner:SetPos(10, 140)
                    AddOwner:SetSize(180, 100)
                    AddOwner:SetText("Add owner")
                    AddOwner.DoClick = function()
                            local menu = DermaMenu()
                            menu.found = false
                            for k,v in pairs(player.GetAll()) do
                                    if not trace.Entity:OwnedBy(v) and not trace.Entity:AllowedToOwn(v) then
                                            menu.found = true
                                            menu:AddOption(v:Nick(), function() RunConsoleCommand("darkrp", "/ao", v:SteamID()) end)
                                    end
                            end
                            if not menu.found then
                                    menu:AddOption("Noone available", function() end)
                            end
                            menu:Open()
                    end
     
                    local RemoveOwner = vgui.Create("DButton", Frame)
                    RemoveOwner:SetPos(10, 250)
                    RemoveOwner:SetSize(180, 100)
                    RemoveOwner:SetText("Remove owner")
                    RemoveOwner.DoClick = function()
                            local menu = DermaMenu()
                            for k,v in pairs(player.GetAll()) do
                                    if (trace.Entity:OwnedBy(v) and not trace.Entity:IsMasterOwner(v)) or trace.Entity:AllowedToOwn(v) then
                                            menu.found = true
                                            menu:AddOption(v:Nick(), function() RunConsoleCommand("darkrp", "/ro", v:SteamID()) end)
                                    end
                            end
                            if not menu.found then
                                    menu:AddOption("Noone available", function() end)
                            end
                            menu:Open()
                    end
     
                    local DoorTitle = vgui.Create("DButton", Frame)
                    DoorTitle:SetPos(10, 360)
                    DoorTitle:SetSize(180, 100)
                    DoorTitle:SetText("Set "..Entiteh.." title")
                    if not trace.Entity:IsMasterOwner(LocalPlayer()) then
                            RemoveOwner.m_bDisabled = true
                    end
                    DoorTitle.DoClick = function()
                            Derma_StringRequest("Set door title", "Set the title of the "..Entiteh.." you're looking at", "", function(text)
                                    LocalPlayer():ConCommand("darkrp /title ".. text)
                                    if ValidPanel(Frame) then
                                            Frame:Close()
                                    end
                            end,
                            function() end, "OK!", "CANCEL!")
                    end
     
                    if (FAdmin and FAdmin.Access.PlayerHasPrivilege(LocalPlayer(), "rp_doorManipulation") or LocalPlayer():IsAdmin()) and not Vehicle then
                            Frame:SetSize(200, Frame:GetTall() + 110)
                            local SetCopsOnly = vgui.Create("DButton", Frame)
                            SetCopsOnly:SetPos(10, Frame:GetTall() - 110)
                            SetCopsOnly:SetSize(180, 100)
                            SetCopsOnly:SetText("Edit Door Group")
                            SetCopsOnly.DoClick = function()
                                    local menu = DermaMenu()
                                    local groups = menu:AddSubMenu("Door Groups")
                                    local teams = menu:AddSubMenu("Jobs")
                                    local add = teams:AddSubMenu("Add")
                                    local remove = teams:AddSubMenu("Remove")
     
                                    menu:AddOption("None", function() RunConsoleCommand("darkrp", "/togglegroupownable") Frame:Close() end)
                                    for k,v in pairs(RPExtraTeamDoors) do
                                            groups:AddOption(k, function() RunConsoleCommand("darkrp", "/togglegroupownable", k) Frame:Close() end)
                                    end
     
                                    if not trace.Entity.DoorData then return end
     
                                    for k,v in pairs(RPExtraTeams) do
                                            if not trace.Entity.DoorData.TeamOwn or not trace.Entity.DoorData.TeamOwn[k] then
                                                    add:AddOption( v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) Frame:Close() end )
                                            else
                                                    remove:AddOption( v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) Frame:Close() end )
                                            end
                                    end
     
                                    menu:Open()
                            end
                    end
            elseif not trace.Entity:OwnedBy(LocalPlayer()) and trace.Entity:IsOwnable() and not trace.Entity:IsOwned() and not trace.Entity.DoorData.NonOwnable then
                    if not trace.Entity.DoorData.GroupOwn then
                            Frame:SetSize(200, 140)
                            local Owndoor = vgui.Create("DButton", Frame)
                            Owndoor:SetPos(10, 30)
                            Owndoor:SetSize(180, 100)
                            Owndoor:SetText("Buy " .. Entiteh)
                            Owndoor.DoClick = function() RunConsoleCommand("darkrp", "/toggleown") Frame:Close() end
                    end
     
                    if (FAdmin and FAdmin.Access.PlayerHasPrivilege(LocalPlayer(), "rp_doorManipulation") or LocalPlayer():IsAdmin()) then
                            if trace.Entity.DoorData.GroupOwn then
                                    Frame:SetSize(200, 250)
                            else
                                    Frame:SetSize(200, 360)
                            end
     
                            local DisableOwnage = vgui.Create("DButton", Frame)
                            DisableOwnage:SetPos(10, Frame:GetTall() - 220)
                            DisableOwnage:SetSize(180, 100)
                            DisableOwnage:SetText("Disallow ownership")
                            DisableOwnage.DoClick = function() Frame:Close() RunConsoleCommand("darkrp", "/toggleownable") end
     
                            local SetCopsOnly = vgui.Create("DButton", Frame)
                            SetCopsOnly:SetPos(10, Frame:GetTall() - 110)
                            SetCopsOnly:SetSize(180, 100)
                            SetCopsOnly:SetText("Edit Door Group")
                            SetCopsOnly.DoClick = function()
                                    local menu = DermaMenu()
                                    local groups = menu:AddSubMenu("Door Groups")
                                    local teams = menu:AddSubMenu("Jobs")
                                    local add = teams:AddSubMenu("Add")
                                    local remove = teams:AddSubMenu("Remove")
     
                                    menu:AddOption("None", function() RunConsoleCommand("darkrp", "/togglegroupownable") Frame:Close() end)
                                    for k,v in pairs(RPExtraTeamDoors) do
                                            groups:AddOption(k, function() RunConsoleCommand("darkrp", "/togglegroupownable", k) Frame:Close() end)
                                    end
     
                                    if not trace.Entity.DoorData then return end
     
                                    for k,v in pairs(RPExtraTeams) do
                                            if not trace.Entity.DoorData.TeamOwn or not trace.Entity.DoorData.TeamOwn[k] then
                                                    add:AddOption(v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) if Frame.Close then Frame:Close() end end)
                                            else
                                                    remove:AddOption(v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) Frame:Close() end)
                                            end
                                    end
     
                                    menu:Open()
                            end
                    elseif not trace.Entity.DoorData.GroupOwn then
                            RunConsoleCommand("darkrp", "/toggleown")
                            Frame:Close()
                            KeyFrameVisible = true
                            timer.Simple(0.3, function() KeyFrameVisible = false end)
                    end
            elseif not trace.Entity:OwnedBy(LocalPlayer()) and trace.Entity:AllowedToOwn(LocalPlayer()) then
                    Frame:SetSize(200, 140)
                    local Owndoor = vgui.Create("DButton", Frame)
                    Owndoor:SetPos(10, 30)
                    Owndoor:SetSize(180, 100)
                    Owndoor:SetText("Co-own " .. Entiteh)
                    Owndoor.DoClick = function() RunConsoleCommand("darkrp", "/toggleown") Frame:Close() end
     
                    if (FAdmin and FAdmin.Access.PlayerHasPrivilege(LocalPlayer(), "rp_doorManipulation") or LocalPlayer():IsAdmin()) then
                            Frame:SetSize(200, Frame:GetTall() + 110)
                            local SetCopsOnly = vgui.Create("DButton", Frame)
                            SetCopsOnly:SetPos(10, Frame:GetTall() - 110)
                            SetCopsOnly:SetSize(180, 100)
                            SetCopsOnly:SetText("Edit Door Group")
                            SetCopsOnly.DoClick = function()
                                    local menu = DermaMenu()
                                    local groups = menu:AddSubMenu("Door Groups")
                                    local teams = menu:AddSubMenu("Jobs")
                                    local add = teams:AddSubMenu("Add")
                                    local remove = teams:AddSubMenu("Remove")
     
                                    menu:AddOption("None", function() RunConsoleCommand("darkrp", "/togglegroupownable") Frame:Close() end)
                                    for k,v in pairs(RPExtraTeamDoors) do
                                            groups:AddOption(k, function() RunConsoleCommand("darkrp", "/togglegroupownable", k) Frame:Close() end)
                                    end
     
                                    if not trace.Entity.DoorData then return end
     
                                    for k,v in pairs(RPExtraTeams) do
                                            if not trace.Entity.DoorData.TeamOwn or not trace.Entity.DoorData.TeamOwn[k] then
                                                    add:AddOption( v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) Frame:Close() end )
                                            else
                                                    remove:AddOption( v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) Frame:Close() end )
                                            end
                                    end
     
                                    menu:Open()
                            end
                    else
                            RunConsoleCommand("darkrp", "/toggleown")
                            Frame:Close()
                            KeyFrameVisible = true
                            timer.Simple(0.3, function() KeyFrameVisible = false end)
                    end
            elseif (FAdmin and FAdmin.Access.PlayerHasPrivilege(LocalPlayer(), "rp_doorManipulation") or LocalPlayer():IsAdmin()) and trace.Entity.DoorData.NonOwnable then
                    Frame:SetSize(200, 250)
                    local EnableOwnage = vgui.Create("DButton", Frame)
                    EnableOwnage:SetPos(10, 30)
                    EnableOwnage:SetSize(180, 100)
                    EnableOwnage:SetText("Allow ownership")
                    EnableOwnage.DoClick = function() Frame:Close() RunConsoleCommand("darkrp", "/toggleownable") end
     
                    local DoorTitle = vgui.Create("DButton", Frame)
                    DoorTitle:SetPos(10, Frame:GetTall() - 110)
                    DoorTitle:SetSize(180, 100)
                    DoorTitle:SetText("Set "..Entiteh.." title")
                    DoorTitle.DoClick = function()
                            Derma_StringRequest("Set door title", "Set the title of the "..Entiteh.." you're looking at", "", function(text) LocalPlayer():ConCommand("darkrp /title ".. text) Frame:Close() end, function() end, "OK!", "CANCEL!")
                    end
            elseif (FAdmin and FAdmin.Access.PlayerHasPrivilege(LocalPlayer(), "rp_doorManipulation") or LocalPlayer():IsAdmin()) and not trace.Entity:OwnedBy(LocalPlayer()) and trace.Entity:IsOwned() and not trace.Entity:AllowedToOwn(LocalPlayer()) then
                    Frame:SetSize(200, 250)
                    local DisableOwnage = vgui.Create("DButton", Frame)
                    DisableOwnage:SetPos(10, 30)
                    DisableOwnage:SetSize(180, 100)
                    DisableOwnage:SetText("Disallow ownership")
                    DisableOwnage.DoClick = function() Frame:Close() RunConsoleCommand("darkrp", "/toggleownable") end
     
                    local SetCopsOnly = vgui.Create("DButton", Frame)
                    SetCopsOnly:SetPos(10, Frame:GetTall() - 110)
                    SetCopsOnly:SetSize(180, 100)
                    SetCopsOnly:SetText("Edit Door Group")
                            SetCopsOnly.DoClick = function()
                                    local menu = DermaMenu()
                                    local groups = menu:AddSubMenu("Door Groups")
                                    local teams = menu:AddSubMenu("Jobs")
                                    local add = teams:AddSubMenu("Add")
                                    local remove = teams:AddSubMenu("Remove")
     
                                    if not trace.Entity.DoorData then return end
     
                                    menu:AddOption("None", function() RunConsoleCommand("darkrp", "/togglegroupownable") Frame:Close() end)
                                    for k,v in pairs(RPExtraTeamDoors) do
                                            groups:AddOption(k, function() RunConsoleCommand("darkrp", "/togglegroupownable", k) Frame:Close() end)
                                    end
     
                                    for k,v in pairs(RPExtraTeams) do
                                            if not trace.Entity.DoorData.TeamOwn or not trace.Entity.DoorData.TeamOwn[k] then
                                                    add:AddOption( v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) Frame:Close() end )
                                            else
                                                    remove:AddOption( v.name, function() RunConsoleCommand("darkrp", "/toggleteamownable", k) Frame:Close() end )
                                            end
                                    end
     
                                    menu:Open()
                            end
            else
                    Frame:Close()
            end
     
            Frame:SetSkin(GAMEMODE.Config.DarkRPSkin)
        end
        GM.ShowTeam = KeysMenu
        usermessage.Hook("KeysMenu", KeysMenu)
