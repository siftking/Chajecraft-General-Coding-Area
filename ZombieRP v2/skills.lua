// Positioning will be tested on SV.
local function HPSkillzRegen( ply )
  local health = ply:Health()
  if !ply:Health(75) then
    ply:SetHealth(health + 1)
  end
end
SKILLTREE.Config = {}
SKILLTREE.Config.Skills = {}
SKILLTREE.Config.Types = {}

SKILLTREE.Config.Types = {"spawn","hit","attacked","death","kill","tick"}

SKILLTREE.Config.Skills[1] = {
Name = "Flu Shot",
Type = "spawn",
Desc = "Now you're injected you feel a lot healthier (Start with 100HP)",
MaxRank = 1,
x = 320,
y = 40,
func = function(ply) if ply:Health() == 75 then ply:SetHealth(100) end end

}

SKILLTREE.Config.Skills[2] = {
Name = "Hard Skin",
Type = "spawn",
Desc = "You have learned to take more hits (Start with 10 Armor)",
MaxRank = 1,
parent = 1,
x = 320,
y = 80,
func = function(ply) if ply:Armor() == 0 then ply:SetArmor(10) end end
}

SKILLTREE.Config.Skills[3] = {
Name = "New Shoes",
Type = "spawn",
Desc = "You have bought new shoes to handle the movement through the rough terrain",
MaxRank = 1,
parent = 1,
x = 320,
y = 120,
func = function(ply) if !ply:Team() == TEAM_SWATJUGGER then ply:SetWalkSpeed(122) ply:SetRunSpeed(223) end end
}

SKILLTREE.Config.Skills[4] = {
Name = "Vital Mutation",
Type = "spawn",
Desc = [[Being in the wasteland alot has had a few side effects (+1 HP Per 20 Sec)
    Applied Jobs: Stalker *, Monolith *, Runners, Duty *]],
MaxRank = 1,
parent = 2,
x = 320,
y = 120,
func = function(ply) if ply:Team() == TEAM_STALKER or ply:Team() == TEAM_RUNNER or ply:Team() == TEAM_DUTY or ply:Team() == TEAM_DUTYMEDIC or ply:Team() == TEAM_DUTYLEADER or ply:Team() == TEAM_MONOLITHLEADER then 
  timer.Create( "HPSkillRegen", 20, 0, HPSkillzRegen) end end
}

print("SkillTree Config Loaded")
