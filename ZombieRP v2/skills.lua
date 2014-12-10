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
Desc = "You have learned to take more hits (Start with 10Armor)",
MaxRank = 1,
x = 320,
y = 80,
func = function(ply) if ply:Armor() == 0 then ply:SetArmor(10) end end
}

SKILLTREE.Config.Skills[3] = {
Name = "New Shoes",
Type = "spawn",
Desc = "You have bought new choose to handle the wildness terraine +2 walkspeed +3 runspeed",
MaxRank = 1,
x = 320,
y = 120,
func = function(ply) ply:SetWalkSpeed(122) end
func = function(ply) ply:SetRunSpeed(223) end
}

print("SkillTree Config Loaded")
