
AddCSLuaFile( "shared.lua" )

SWEP.PrintName = "Pokeball" 
SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 62
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= ""
SWEP.WorldModel		= ""
SWEP.AnimPrefix		= "python"

SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false

function SWEP:Initialize()
function hideammo(name)
for k, v in pairs({"CHudAmmo", "CHudSecondaryAmmo"}) do
if name == v then return false end
end
end
hook.Add("HUDShouldDraw", "HideOurAmmo", hideammo)
end

function SWEP:Think()	

end

function SWEP:PrimaryAttack(ply)
RunConsoleCommand("catch")
RunConsoleCommand("catch2")
end

function SWEP:SecondaryAttack()
RunConsoleCommand("")
end