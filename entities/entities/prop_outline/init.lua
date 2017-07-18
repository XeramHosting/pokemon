AddCSLuaFile( "cl_init.lua" ) -- Make sure clientside
AddCSLuaFile( "shared.lua" )  -- and shared scripts are sent.
 
include('shared.lua')
 
function ENT:Initialize()
 
	self:SetModel( "models/props_phx/construct/plastic/plastic_angle_360.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self:SetSolid( SOLID_VPHYSICS )         -- Toolbox
	
	self:SetColor( Color( 0, 255, 0, 100 ) )
	self:SetRenderMode( RENDERMODE_TRANSALPHA )
    
end
 
function ENT:Use( activator, caller )
    return
end
 
function ENT:Think()
	
end
 
