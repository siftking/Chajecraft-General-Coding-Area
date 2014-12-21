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
Parent = 1,
x = 120,
y = 200,
func = function(ply) if ply:Armor() == 0 then ply:SetArmor(10) end end
}

SKILLTREE.Config.Skills[3] = {
Name = "New Shoes",
Type = "spawn",
Desc = "You have bought new shoes to handle the movement through the rough terrain",
MaxRank = 1,
Parent = 1,
x = 520,
y = 200,
func = function(ply) if !ply:Team() == TEAM_SWATJUGGER then ply:SetWalkSpeed(122) ply:SetRunSpeed(223) end end
}

SKILLTREE.Config.Skills[4] = {
Name = "Raider",
Type = "spawn",
Desc = [[You seem to be equipped with gear to raid. (Lockpick on spawn for Monoliths & Bandits)]],
MaxRank = 1,
Parent = 2,
x = 120,
y = 400,
func = function(ply) if ply:Team() == TEAM_GANG or ply:Team() == TEAM_GANGSNIPER or ply:Team() == TEAM_GANGMEDIC or ply:Team() == TEAM_MOB or ply:Team() == TEAM_MONOLITH or ply:Team() == TEAM_MONOLITHLEADER then 
  ply:Give("lockpick") end end
}

SKILLTREE.Config.Skills[5] = {
Name = "Athlete",
Type = "spawn",
Desc = "Damn, where have you been training those legs? (+10% Jump Height)",
MaxRank = 1,
Parent = 3,
x = 520,
y = 400,
func = function(ply) 
  local jump = ply:GetJumpPower()
  local jumpmath = jump / 100 * 10
  local newjump = jump + jumpmath
  ply:SetJumpPower(newjump)
  end
}

print("SkillTree Config Loaded")
