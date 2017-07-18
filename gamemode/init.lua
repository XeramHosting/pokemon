
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile("cl_profderma.lua")
AddCSLuaFile("cl_moves.lua")
AddCSLuaFile("cl_shopderma.lua")

include( 'shared.lua' )
include('sv_moves.lua')
include('sv_net.lua')

function GM:InitPostEntity(ply)
	local profS = ents.Create( "prof" )
profS:SetPos( Vector( -1.937182, 2968.479492, -127.968750 ) )
profS:SetAngles(Angle(-1.262789, 89.780418, 0.000000))
profS:Spawn()

	local shop = ents.Create( "shop" )
shop:SetPos( Vector( -3557.082764, -36.067924, 320.031250 ) )
shop:SetAngles(Angle(3.788403, 88.564262, 0.000000))
shop:Spawn()
 
 local spawnarc2 = ents.Create( "arcnpc1" )
spawnarc2:SetPos( Vector( -506.334290, 103.042847, -1430.969727 + 100 ) )
spawnarc2:SetHealth(10000)
spawnarc2:Spawn()

local spawnarc1 = ents.Create( "arcnpc2" )
spawnarc1:SetPos( Vector( -921.481506, 648.941223, -1404.306274 + 100) )
spawnarc1:SetHealth(100)
spawnarc1:Spawn()

local spawnarc3 = ents.Create( "arcnpc3" )
spawnarc3:SetPos( Vector( -602.041504, 427.843018, -1371.957397 + 100 ) )
spawnarc3:SetHealth(100)
spawnarc3:Spawn()

local spawnfly1 = ents.Create( "flynpc1" )
spawnfly1:SetPos( Vector( 87.834854, -244.899872, -1471.968750 ) )
spawnfly1:SetHealth(100)
spawnfly1:Spawn()

local spawnglac2 = ents.Create( "glacnpc1" )
spawnglac2:SetPos( Vector( 936.249329, -338.369202, -1471.968750 ) )
spawnglac2:SetHealth(100)
spawnglac2:Spawn()

local spawnglac1 = ents.Create( "glacnpc1" )
spawnglac1:SetPos( Vector( 1073.653198, -418.183441, -1471.968750 ) )
spawnglac1:SetHealth(100)
spawnglac1:Spawn()

local spawnglac = ents.Create( "glacnpc1" )
spawnglac:SetPos( Vector( 1058.573486, -547.463318, -1471.968750 ) )
spawnglac:SetHealth(100)
spawnglac:Spawn()

local spawnj = ents.Create( "joltnpc1" )
spawnj:SetPos( Vector( 307.705383, 1013.546570, -1471.968750 ) )
spawnj:SetHealth(100)
spawnj:Spawn()

local spawnj2 = ents.Create( "joltnpc1" )
spawnj2:SetPos( Vector( 288.890656, 689.671143, -1471.968750 ) )
spawnj2:SetHealth(100)
spawnj2:Spawn()

local spawnj3 = ents.Create( "joltnpc1" )
spawnj3:SetPos( Vector( -1.978620, 716.737122, -1471.968750 ) )
spawnj3:SetHealth(100)
spawnj3:Spawn()

local spawncat1 = ents.Create( "mynpc5" )
spawncat1:SetPos( Vector(1443.031982, 1207.284302, -320.468750) )
spawncat1:SetHealth(100)
spawncat1:Spawn()

local healer = ents.Create( "healer" )
healer:SetPos( Vector(-3509.046631, -881.127136, 320.031250) )
healer:Spawn()

local c1 = ents.Create( "caterpie1" )
c1:SetPos( Vector( 420.261078, 6165.358398, -191.968750 ) )
c1:SetHealth(c1:GetVar("HP"))
c1:Spawn()

local c2 = ents.Create( "caterpie1" )
c2:SetPos( Vector( 562.414795, 5984.803223, -191.968750 ) )
c2:SetHealth(c2:GetVar("HP"))
c2:Spawn()

local c3 = ents.Create( "caterpie1" )
c3:SetPos( Vector( 863.681274, 6012.063965, -191.968750 ) )
c3:SetHealth(c3:GetVar("HP"))
c3:Spawn()

local c5 = ents.Create( "caterpie1" )
c5:SetPos( Vector( 555.788818, 6109.678223, -191.968750 ) )
c5:SetHealth(c5:GetVar("HP"))
c5:Spawn()


local spk = ents.Create( "slowpoke1" )
spk:SetPos( Vector( 4713.771484, 4591.639648, -196.968750 ) )
spk:SetHealth(10)
spk:Spawn()

local slowpoke = ents.Create( "slowpoke1" )
slowpoke:SetPos( Vector( 4290.849609, 4075.161377, -191.968750 ) )
slowpoke:Spawn()

local slowpoke = ents.Create( "slowpoke1" )
slowpoke:SetPos( Vector( 4030.824707, 4181.282227, -191.968750 ) )
slowpoke:Spawn()


local slowpoke = ents.Create( "slowpoke1" )
slowpoke:SetPos( Vector( 4179.325195, 3951.376221 ,-191.968750 ) )
slowpoke:Spawn()

local slowpoke = ents.Create( "slowpoke1" )
slowpoke:SetPos( Vector( 4737.740234, 4211.071777, -191.968750) )
slowpoke:Spawn()

end

concommand.Add("changeform", function(ply)
ply:GetEyeTrace().Entity:SetModel("models/rtbmodels/pokemon/charmander.mdl")
end)

concommand.Add("spawnhealer2",function()

local c3 = ents.Create( "caterpie1" )
c3:SetPos( Vector( 863.681274, 6012.063965, -191.968750 ) )
c3:SetHealth(c3:GetVar("HP"))
c3:Spawn()
end)

concommand.Add("spawnhealer",function()
local healer = ents.Create( "healer" )
healer:SetPos( Vector(-3509.046631, -881.127136, 320.031250) )
healer:Spawn()

end)
 

concommand.Add("spawnglaceon2", function()
local spawnglac2 = ents.Create( "mynpc3" )
spawnglac2:SetPos( Vector( 936.249329, -338.369202, -1471.968750 ) )
spawnglac2:Spawn()

end)

concommand.Add("spawnslow", function(ply)
local spawnglac2 = ents.Create( "slowpoke1" )
spawnglac2:SetPos( ply:GetEyeTrace().HitPos )
spawnglac2:Spawn()

end)

concommand.Add("spawnglaceon3", function()
local spawnglac1 = ents.Create( "mynpc3" )
spawnglac1:SetPos( Vector( 1073.653198, -418.183441, -1471.968750 ) )
spawnglac1:Spawn()
end)

concommand.Add("spawnglaceon1", function()
local spawnglac = ents.Create( "mynpc3" )
spawnglac:SetPos( Vector( 1058.573486, -547.463318, -1471.968750 ) )
spawnglac:Spawn()
spawnglac:SetMaxHealth(100)
spawnglac:SetHealth(100)
end)

concommand.Add("spawnflygon1", function()
local spawnfly1 = ents.Create( "flynpc1" )
spawnfly1:SetPos( Vector( 87.834854, -244.899872, -1471.968750 ) )
spawnfly1:Spawn()
spawnfly1:SetHealth(100)
spawnfly1:SetMaxHealth(100)
end)

concommand.Add("spawnflygon2", function()
local spawnfly2 = ents.Create( "mynpc1" )
spawnfly2:SetPos( Vector( -81.752045, -438.238922, -1471.968750 ) )
spawnfly2:Spawn()
end)

concommand.Add("spawnflygon3", function()
local spawnfly3 = ents.Create( "mynpc1" )
spawnfly3:SetPos( Vector( 227.067535, -446.592438, -1471.968750 ) )
spawnfly3:Spawn()
end)

concommand.Add("spawnjolt1", function()
local sj1= ents.Create( "joltnpc1" )
sj1:SetPos( Vector( 227.067535, -446.592438, -1471.968750 ) )
sj1:Spawn()
sj1:SetHealth(100)
sj1:SetMaxHealth(100)
end)

concommand.Add("spawnarcanine1", function()
local spawnarc12 = ents.Create( "arcnpc1" )
spawnarc12:SetPos( Vector( -921.481506, 648.941223, -1404.306274 + 100 ) )
spawnarc12:SetHealth(100)
spawnarc12:Spawn()
spawnarc12:SetMaxHealth(100)

end)



concommand.Add("spawnarcanine2", function()
local spawnarc2 = ents.Create( "mynpc2" )
spawnarc2:SetPos( Vector( -506.334290, 103.042847, -1430.969727 ) )
spawnarc2:Spawn()

end)

concommand.Add("spawnarcanine3", function()
local spawnarc3 = ents.Create( "mynpc2" )
spawnarc3:SetPos( Vector( -602.041504, 427.843018, -1371.957397 ) )
spawnarc3:Spawn()

end)

concommand.Add("spawnarcanine4", function(ply)
local spawnarc4 = ents.Create( "arcnpc4" )
spawnarc4:SetPos( ply:GetEyeTrace().HitPos)

spawnarc4:Spawn()

end)

concommand.Add("spawnarc",function(ply)
avctor = ply:GetEyeTrace()
	local arc1 = ents.Create( "arc2" )
arc1:SetPos( avctor.HitPos )
arc1:Spawn()
arc1:SetCustomCollisionCheck(true)
end)

function GM:PlayerInitialSpawn( ply )
ply:SetCustomCollisionCheck(true)
RunConsoleCommand("inventorycheck")
RunConsoleCommand("moneycheck")

end

function GM:ShowHelp( ply ) -- This hook is called everytime F1 is pressed.
    umsg.Start( "MyMenu", ply )-- Sending a message to the client.
    umsg.End()
end --Ends function

function GM:ShowTeam( ply ) 
RunConsoleCommand("sendinv")
    umsg.Start( "MyMenu2", ply )
    umsg.End()
end 

function GM:ShowSpare1( ply ) 

    umsg.Start( "MyMenu3", ply )
    umsg.End()

end 



net.Receive("myMessage2", function()
reads4 = net.ReadString()
print(reads4)end)

function GM:CanPlayerSuicide(ply)
	return false
end

playerhealthtable = {}
concommand.Add("updatehptable",function(ply)
table.insert( playerhealthtable, ply:Health() )
print(playerhealthtable)
end)

concommand.Add("givepiston", function(ply)
ply:Give("weapon_pistol")
ply:Give("weapon_crowbar")
end)

function GM:GetFallDamage( ply, speed )
    
    ply:EmitSound("thin_wood_snapping_3.wav")
 
    return false
 
end

 
function GM:OnNPCKilled( NPC, Entity, inf)
for k,v in pairs(player.GetAll()) do 
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..v:SteamID().."'")
if Vector( NPC:GetPos() ):Distance( Vector( v:GetPos() ) ) < 100
then v:ConCommand("exp") end
v:ConCommand("givemoney")
end
if NPC:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl"  then 
RunConsoleCommand("spawnjolt1")
end
if NPC:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then 
RunConsoleCommand("spawnglaceon1")
end
if NPC:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" then 
RunConsoleCommand("spawnflygon1")
RunConsoleCommand("spawnflygon1")
end
if NPC:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" then 
RunConsoleCommand("spawnarcanine1")
end
end

util.AddNetworkString("test7")
	concommand.Add("printmodel", function(ply)
if sql.TableExists("playerinventory") then
local pkballs = sql.QueryValue("SELECT move1 FROM playerpokemon")
net.Start( "test7" )
net.WriteString(pkballs)
net.Send(ply)
end
end)

util.AddNetworkString( "SendHP" )


concommand.Add("spawnkleiner", function(ply)
RunConsoleCommand("sethpnow")
net.Receive( "SendHP", function( len, ply ) -- len is the net message length, which we don't care about, ply is the player who sent it.
	 lvl = net.ReadString() -- Notice how ReadUInt requires an argument. This is the second argument of WriteUInt, which tells us how big the number is.
	 ply:SetHealth(lvl)
end )
if IsValid(playernpc) then else
playernpc = ents.Create( "npc_kleiner" )
playernpc:SetPos( Vector( ply:GetPos() ) )
playernpc:SetAngles( ply:GetAngles())
playernpc:SetModel("models/player/red.mdl")
playernpc:Spawn()
    ply:SetPos(ply:GetPos() + ply:GetForward()*70)


	end

				concommand.Add("returnpokemon",function(ply)
		if playernpc:IsValid() then
		ply:SetPos(playernpc:GetPos())
playernpc:Remove()
end
ply:SetModel("models/player/red.mdl")
RunConsoleCommand("firstperson")

end)

local function onThink()
if not ply:IsValid() then
if playernpc:IsValid() then
	playernpc:Remove()
	end
	end
end

hook.Add( "Tick", "Some unique name", onThink )

end)

concommand.Add("spawnkleiner3", function(ply)
	ply:SetModel("models/rtbmodels/pokemon/squirtle.mdl")
end)

concommand.Add("spawnkleiner4", function(ply)
	ply:SetModel("models/rtbmodels/pokemon/charmander.mdl")
end)

concommand.Add("spawnkleiner5", function(ply)
	ply:SetModel("models/rtbmodels/pokemon/bulbasaur.mdl")
end)

concommand.Add("spawnkleiner7", function(ply)
	ply:SetModel("models/rtbmodels/pokemon/blastoise.mdl")
end)

concommand.Add("spawnkleiner8", function(ply)
	ply:SetModel("models/rtbmodels/pokemon/charizard.mdl")
end)

concommand.Add("spawnkleiner9", function(ply)
	ply:SetModel("models/rtbmodels/pokemon/venusaur.mdl")
end)
printhp = sql.Query("SELECT hp from playerpokemon")



util.AddNetworkString( "SendAge2" )


concommand.Add("givepball2",function(ply)
ply:Give("pkball")
end)

concommand.Add("shadow", function(ply)
local button = ents.Create( "prop_physics" )
if ( !IsValid( button ) ) then return end
button:SetModel( "models/rtbmodels/pokemon/squirtle.mdl" )
button:SetAngles(Angle(ply:GetAngles()  ))
button:SetPos( Vector( ply:GetPos()) )
button:Spawn()
button:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
ply:SetModelScale( 0,0)
ply:Freeze(true)
local function onThink()
	button:SetAngles(Angle(button:GetAngles().x,button:GetAngles().y + 10, button:GetAngles().z  ))
	button:SetPos( Vector( ply:GetPos()) )

end

timer.Create("removethink",1,1, function()
hook.Remove( "Think", "Some unique name")
button:Remove()
ply:SetModelScale( 1,0)
ply:Freeze(false)

end)

hook.Add( "Think", "Some unique name", onThink )

end)

concommand.Add("blastit",function(ply)
ply:SetModel("models/rtbmodels/pokemon/blastoise.mdl")
end)

concommand.Add("venuit",function(ply)
ply:SetModel("models/rtbmodels/pokemon/venusaur.mdl")
end)

concommand.Add("charit",function(ply)
ply:SetModel("models/rtbmodels/pokemon/charizard.mdl")
end)

util.AddNetworkString( "SendAge" )

util.AddNetworkString( "SendAge2" )
concommand.Add("catch", function(ply)
ply:StripWeapon( "pkball" )
end)

concommand.Add("cma", function(ply)
ply:SetModel("models/rtbmodels/pokemon/arcanine.mdl")
end)

concommand.Add("cma2", function(ply)
ply:SetModel("models/rtbmodels/pokemon/flygon.mdl")
end)

concommand.Add("cma3", function(ply)
ply:SetModel("models/rtbmodels/pokemon/jolteon.mdl")
end)

concommand.Add("cma4", function(ply)
ply:SetModel("models/rtbmodels/pokemon/glaceon.mdl")
end)

