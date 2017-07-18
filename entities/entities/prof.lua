AddCSLuaFile()
ENT.Base 			= "base_nextbot"
ENT.Spawnable		= true
function ENT:Initialize(ENT)
	self:SetModel( "models/lucian/pokemontrainers/sycamore.mdl" )
end
function ENT:RunBehaviour()
	while ( true ) do
		coroutine.wait( 2 )
	end
end
list.Set( "NPC", "simple_nextbot", {
	Name = "Professor",
	Class = "npc_citizen",
	Category = "NPC"
} )