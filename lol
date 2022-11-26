-- Methods
local Methods = loadstring(game:HttpGet("https://raw.githubusercontent.com/coolsk8rboy/The-John-Cena-Factory/main/JohnCenasMain.lua"))()
-- Setup
Methods:SetIdleAnimation(7142933331, .1)
Methods:SetWalkAnimation(7142732585, .1)
Methods:SetWalkSpeed(8)
Methods:EnableSprinting(7142895580, .1, 25)
-- Fling
Methods:BodyPartFlingOnTouch("Right Arm")
Methods:BodyPartFlingOnTouch("Left Arm")
Methods:BodyPartFlingOnTouch("Right Leg")
Methods:BodyPartFlingOnTouch("Left Leg")
-- Key Connections
Methods:OnKeyPress("q", function()
    Methods:ApplyVelocityFoward(-5)
    Methods:ApplyVelocityUpward(80)
    Methods:PlayAnimation(7142738887, .1, 5)
end)
Methods:OnKeyPress("e", function()
    Methods:ApplyVelocityFoward(5)
    Methods:ApplyVelocityUpward(80)
    Methods:PlayAnimation(6936454190, .1, 5)
end)
-- Attacks
Methods:NewAttack("Attack1", "z", 7142975235, .1, 3)
Methods:NewAttack("Attack2", "x", 7142973417, .1, 3)
Methods:NewAttack("Attack3", "c", 7142740591, .1, 3)
Methods:NewAttack("Attack4", "v", 7142741890, .1, 3)
Methods:NewAttack("Attack5", "b", 6936458635, .1, 3)
Methods:NewAttack("Attack6", "t", 4837749916, .1, 2)
-- Finishing up
Methods:SetScriptCreator("CatOnCord")
Methods:SystemMessage([[Controls:
z - Combo 1
x - Combo 2
c - Combo 3
v - Combo 4
b - Combo 5
e - Front Flip
q - Back Flip
t - Taunt
Left Alt - Sprint
]])
Methods:PlaySound(1842802203, true)
Methods:RunScript()
end)

bozo:Button('Box', function()
    --https://www.roblox.com/catalog/9350274205/Vans-Black-White-Checkerboard-Umbrella
local plr = game.Players.LocalPlayer
local char = plr.Character
local uis = game:GetService("UserInputService")
local sitting = false

if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    plr:Kick("This script does not support R15! Please switch to R6.")
end

for i, v in pairs(char:GetDescendants()) do
    if v:IsA("Accessory") then
        if v.Name ~= "VANS_Umbrella" then
            v:Destroy()
        end
    end
end

char.VANS_Umbrella:WaitForChild("Handle").Mesh:Destroy()
char.VANS_Umbrella:WaitForChild("Handle").Position = char.HumanoidRootPart.Position + Vector3.new(0, 0.9, 0)
char["Left Arm"]:Destroy()
char["Right Arm"]:Destroy()

local function inputBegan(object,gameProcessedEvent) 
    if (uis:GetFocusedTextBox()) then
        return; -- make sure player's not chatting!
    end
    if (object.KeyCode == Enum.KeyCode.E) then
        char.Humanoid.Sit = true
    end
end
uis.InputBegan:Connect(inputBegan)
end)
