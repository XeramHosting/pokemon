
AddCSLuaFile( "shared.lua" )

SWEP.PrintName = "Controller" 
SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 62
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_pistol.mdl"
SWEP.WorldModel		= "models/weapons/w_357.mdl"
SWEP.AnimPrefix		= "python"

SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false

SWEP.Primary.ClipSize		= 0				// Size of a clip
SWEP.Primary.DefaultClip	= 0			// Default number of bullets in a clip			// Automatic/Semi Auto

SWEP.Secondary.ClipSize		= 0				// Size of a clip
SWEP.Secondary.DefaultClip	= 0				// Default number of bullets in a clip

/*---------------------------------------------------------
	Initialize
---------------------------------------------------------*/
function SWEP:Initialize()

end


/*---------------------------------------------------------
	Reload
---------------------------------------------------------*/
function SWEP:Reload()
	self:DefaultReload( ACT_VM_RELOAD );
end


/*---------------------------------------------------------
   Think does nothing
---------------------------------------------------------*/
function SWEP:Think()	
end


/*---------------------------------------------------------
	PrimaryAttack
---------------------------------------------------------*/

function SWEP:PrimaryAttack()
RunConsoleCommand("spawnbot")


end



function SWEP:SecondaryAttack()
RunConsoleCommand("viewent")
end


