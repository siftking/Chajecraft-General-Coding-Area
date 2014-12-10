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

print("SkillTree Config Loaded")
