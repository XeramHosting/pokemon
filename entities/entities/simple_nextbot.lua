AddCSLuaFile()

ENT.Base 			= "base_nextbot"
ENT.Spawnable		= true

function ENT:Initialize()
  
	 
	self:SetModel( "models/player/kleiner.mdl" )

	self.LoseTargetDist	= 2000
	self.SearchRadius 	= 1000	
	
	mr = math.random(1,10)
    testbotlvl = {mr}
	for k,v in pairs(testbotlvl) do 
    self:SetHealth(100*v)
    print(v)
	end
	

end

concommand.Add("test5", function()
PrintTable(testbotlvl2) end
)

function ENT:SetEnemy( ent )
	self.Enemy = ent
end
function ENT:GetEnemy()
	return self.Enemy
end

function ENT:RunBehaviour()
	while ( true ) do
	
		coroutine.wait( 2 )

	end
	 

end

list.Set( "NPC", "simple_nextbot", {
	Name = "Simple bot",
	Class = "npc_citizen",
	Category = "NPC"
} )