	concommand.Add("createtub4", function(ply)
	valor = ply:GetName()
	y = (ply:GetPos().y)
	
bt1 = ents.Create( "scratch" )
bt1:SetModelScale( bt1:GetModelScale() * 1, 0 )
bt1:SetColor(Color(244,244,244,244))
bt1:Spawn()
bt1:SetModelScale( bt1:GetModelScale() * 2, 0 )
bt1:SetColor( Color( 255, 0, 0, 255 ) )
sound.Play( "weapons/iceaxe/iceaxe_swing1.wav", ply:GetPos() )
RunConsoleCommand("std3")
hook.Add( "Think", "Another unique name", function()
RunConsoleCommand("std3")
if bt1:IsValid() then
     bt1:SetPos(Vector(ply:GetPos().x + ply:GetForward().x * 70, ply:GetPos().y + ply:GetForward().y * 50 , ply:GetPos().z + ply:GetForward().z * 50 + 10))
	bt1:SetAngles( Angle(ply:GetAngles().x + -40 , ply:GetAngles().y, ply:GetAngles().z ) )
	bt1:NextThink(CurTime() ); return true 
	end
end )

timer.Create("newt1", 1/10,1, function()
RunConsoleCommand("std3")
RunConsoleCommand("removetub2")

end)
concommand.Add("removetub2",function()
if bt1:IsValid() then
bt1:Remove()
hook.Remove( "Think", "Another unique name" )
dodamage = 1
end
end)

end)



concommand.Add("tackle", function(ply)
RunConsoleCommand("ps1")
    k1 = false
    local currentwalkspeed = ply:GetWalkSpeed()
	local currentrunspeed = ply:GetRunSpeed()
	ply:SetWalkSpeed(currentwalkspeed + 2000)
	ply:SetRunSpeed(currentrunspeed + 2000)
	timer.Simple(1/10, function()
		ply:SetWalkSpeed(currentwalkspeed)
		ply:SetRunSpeed(currentrunspeed)
		
		end)

end)



	concommand.Add("createtub", function(ply)
	valor = ply:GetName()
	y = (ply:GetPos().y)
	
bt1 = ents.Create( "prop_outline" )
bt1:SetPos( Vector(ply:GetPos().x + 1000, y ,ply:GetPos().z) )
bt1:SetModelScale( bt1:GetModelScale() * 1, 0 )
bt1:SetColor(Color(244,244,244,244))
bt1:Spawn()
RunConsoleCommand("std2")
hook.Add( "Think", "Another unique name", function()
RunConsoleCommand("std2")
if bt1:IsValid() then
    bt1:SetPos(Vector(ply:GetPos().x, ply:GetPos().y ,ply:GetPos().z + 10))
	bt1:NextThink(CurTime() ); return true 
	end
end )
hook.Add("ShouldCollide", "uniquename2", function(e1,e2)
if (e1:GetName() == valor and e2:GetClass() == "prop_outline" ) then return false
elseif (e1:GetName() != valor and e2:GetClass() == "prop_outline" ) then end
end)

timer.Create("newt1", 1/10,1, function()
RunConsoleCommand("std2")
RunConsoleCommand("removetub")

end)
concommand.Add("removetub",function()
if bt1:IsValid() then
bt1:Remove()
hook.Remove( "Think", "Another unique name" )
dodamage = 1
end
end)

end)

util.AddNetworkString( "SendAge" )

net.Receive( "SendAge", function( len, ply ) -- len is the net message length, which we don't care about, ply is the player who sent it.
	 age = net.ReadString() -- Notice how ReadUInt requires an argument. This is the second argument of WriteUInt, which tells us how big the number is.
	
end )

util.AddNetworkString( "SendAge2" )
net.Receive( "SendAge2", function( len, ply ) -- len is the net message length, which we don't care about, ply is the player who sent it.
	 age2 = net.ReadString() -- Notice how ReadUInt requires an argument. This is the second argument of WriteUInt, which tells us how big the number is.
end )

dodamage = 1
concommand.Add("std2", function(ply)
if dodamage == 1 then
for k,v in pairs(ents.FindByClass("prop_outline")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then

 if(v2:GetPos():Distance(v1:GetPos() ) < 70) then v2:TakeDamage((2*age2/5+2)*50*(age/v2:GetVar("DEF"))/50 + 2)
  dodamage = 0
 end
 
 end
end
end
end  
end)

concommand.Add("std3", function(ply)
if dodamage == 1 then
for k,v in pairs(ents.FindByClass("scratch")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/caterpie.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/charmander.mdl" then
 --if not v2:IsNPC() then v2:TakeDamage((2*age2/5+2)*50*(age/v2:GetVar("DEF"))/50 + 2) 
 --dodamage = 0 else
 if(v2:GetPos():Distance(v1:GetPos() ) < 70) then v2:TakeDamage((2*age2/5+2)*50*(age/v2:GetVar("DEF"))/50 + 2)
  dodamage = 0
 end
 --end
 end
end
end
end  
end)

concommand.Add("playsound2", function(ply)
ply:EmitSound( "npc/antlion_guard/angry1.wav" )

end)

concommand.Add("playsound3", function(ply)
ply:EmitSound( "Metal.SawbladeStick" )

end)

concommand.Add("playsound4", function(ply)
ply:EmitSound( "weapons/rpg/rocketfire1.wav" )

end)

dodamagegrw = 1
concommand.Add("growl", function(ply)
valor = ply:GetName()
bt2 = ents.Create( "prop_outline2" )
bt2:SetPos( Vector(ply:GetPos() + ply:GetForward() * 25) )
bt2:SetAngles( Angle(ply:GetAngles().x + -90 , ply:GetAngles().y, ply:GetAngles().z) )
bt2:Spawn()


hook.Add("ShouldCollide", "uniquename2", function(e1,e2)
if (e1:GetName() == valor and e2:GetClass() == "prop_outline2" ) then return false
elseif (e1:GetName() != valor and e2:GetClass() == "prop_outline2" ) then end
end)


hook.Add( "Think", "Another unique name2", function()
if bt2:IsValid() then
    bt2:SetPos(Vector(ply:GetPos().x + ply:GetForward().x * 90, ply:GetPos().y + ply:GetForward().y * 50 , ply:GetPos().z + ply:GetForward().z * 50 + 10))
	bt2:SetAngles( Angle(ply:GetAngles().x + -90 , ply:GetAngles().y, ply:GetAngles().z ) )
	bt2:NextThink(CurTime() ); return true 
	end
	
	end )

concommand.Add("rg", function()
bt2:Remove()

end)

concommand.Add("st3", function(ply)
if dodamagegrw == 1 then
for k,v in pairs(ents.FindByClass("prop_outline2")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 70) then v2:SetVar("DEF", v2:GetVar("DEF") *4/5)
  dodamagegrw = 0
ply:ChatPrint("Enemy Pokemon's Defence Lowered")
 end
 end
end
end
end
end)

timer.Create("growltimer",1,1,function()
bt2:Remove()
dodamagegrw = 1
end)

	
end)

concommand.Add("vinewip", function(ply)
vw = ents.Create( "prop_outline3" )
vw:SetPos(Vector(ply:GetPos().x + ply:GetForward().x * 70, ply:GetPos().y + ply:GetForward().y * 50 , ply:GetPos().z - 80 + ply:GetForward().z * -150 ))
vw:SetAngles( Angle(ply:GetAngles().x -180 , ply:GetAngles().y, ply:GetAngles().z ) )
vw:Spawn()

hook.Add( "Think", "Another unique name2", function()
if vw:IsValid() then
    vw:SetPos(Vector(ply:GetPos().x + ply:GetForward().x * 70, ply:GetPos().y + ply:GetForward().y * 50 , ply:GetPos().z - 80 + ply:GetForward().z * -150 ))
	vw:SetAngles( Angle(ply:GetAngles().x -180 , ply:GetAngles().y, ply:GetAngles().z ) )
	vw:NextThink(CurTime() ); return true 
	end
	
	end )

	timer.Create("vwt", 3/5,1,function()
vw:Remove()
end)

concommand.Add("st4", function(ply)

for k,v in pairs(ents.FindByClass("prop_outline3")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 160) then v2:TakeDamage((2*age2/5+2)*60*(age/v2:GetVar("DEF"))/50 + 2)
 end
 end
end
end
end)
end)

poisonedpokemon = {}

concommand.Add("poistont", function(ply)
PrintTable(poisonedpokemon)
end)
 
 
dodamagepois = 1
concommand.Add("poisonpowder", function(ply)
poisp = ents.Create( "prop_outline4" )
poisp:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 80 ))
poisp:Spawn()
poisp:GetPhysicsObject():AddVelocity(Vector(ply:GetForward() * 70000))
hook.Add( "Think", "Another unique name2", function()
if poisp:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( poisp:GetPos() )
util.Effect( "cball_explode", effectdata )
end

for k,v in pairs(poisonedpokemon) do
if v:IsValid() then
v:TakeDamage(.01) end end

	if dodamagepois == 1 then
for k,v in pairs(ents.FindByClass("prop_outline4")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 160) then table.insert(poisonedpokemon, v2)
 dodamagepois = 0 
 end
 end
 end
end
end

	end )
	
timer.Create("poist",1.5,1, function()
poisp:Remove()
dodamagepois = 1
end)



end)

concommand.Add("sleeppowder",function(ply)
sleepp = ents.Create( "prop_outline4" )
sleepp:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 80 ))
sleepp:Spawn()
sleepp:GetPhysicsObject():AddVelocity(Vector(ply:GetForward() * 70000))

hook.Add( "Think", "Another unique name2", function()
if sleepp:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( sleepp:GetPos() )
util.Effect( "cball_explode", effectdata )
end



	end )
	
	hook.Add("ShouldCollide", "uniquename2", function(e1,e2)
if (e1:GetName() != ply:GetName() and e2:GetClass() == "prop_outline4" ) then 
if(e1:GetPos():Distance(e2:GetPos() ) < 500) then 
e1:Freeze(true)
timer.Create("ptimer3",2,1, function()
e1:Freeze(false)
end) end
end
end)
timer.Create("sleeptimer",4,1, function()
sleepp:Remove()
end)
end)

concommand.Add("tailwhip",function(ply)
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/caterpie.mdl" then
 if(v2:GetPos():Distance(ply:GetPos() ) < 100) then ply:ChatPrint(v2:GetModel())
 end
end
end
end)

concommand.Add("watergun",function(ply)
sleepp = ents.Create( "prop_outline4" )
sleepp:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 40 ))
sleepp:Spawn()
sleepp:GetPhysicsObject():AddVelocity(Vector(ply:GetAimVector() * 1000000))

timer.Create("sleeptimer2",1,1, function()
sleepp:Remove()
end)

dodamage = 1
dodamage2 = 1
hook.Add( "Think", "Another unique name2", function()
if sleepp:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( sleepp:GetPos() )
util.Effect( "watersplash", effectdata )

if dodamage == 1 then 
for k,v in pairs(ents.FindByClass("prop_outline4")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 50) then v2:SetHealth(v2:Health() - 500)
 dodamage = 0
 end
end
end
end  
end



end
end)
end)

concommand.Add("ember",function(ply)
sleepp = ents.Create( "prop_outline4" )
sleepp:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 40 ))
sleepp:Spawn()
sleepp:GetPhysicsObject():AddVelocity(Vector(ply:GetAimVector() * 1000000))

timer.Create("sleeptimer2",1,1, function()
sleepp:Remove()
end)

dodamage = 1
dodamage2 = 1
hook.Add( "Think", "Another unique name2", function()
if sleepp:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( sleepp:GetPos() )
util.Effect( "MuzzleEffect", effectdata )

if dodamage == 1 then 
for k,v in pairs(ents.FindByClass("prop_outline4")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 50) then v2:SetHealth(v2:Health() - 40)
 dodamage = 0
 end
end
end
end  
end



end
end)
end)

concommand.Add("dragonr",function(ply)
sleepp = ents.Create( "prop_outline4" )
sleepp:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 40 ))
sleepp:Spawn()
sleepp:GetPhysicsObject():AddVelocity(Vector(ply:GetAimVector() * 1000000))

timer.Create("sleeptimer2",1,1, function()
sleepp:Remove()
end)

dodamage = 1
dodamage2 = 1
hook.Add( "Think", "Another unique name2", function()
if sleepp:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( sleepp:GetPos() )
util.Effect( "BloodImpact", effectdata )

if dodamage == 1 then 
for k,v in pairs(ents.FindByClass("prop_outline4")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 50) then v2:SetHealth(v2:Health() - 40)
 dodamage = 0
 end
end
end
end  
end



end
end)
end)

concommand.Add("smokescreen", function(ply)
local vPoint = Vector( ply:GetPos() )
local effectdata = EffectData()
effectdata:SetOrigin( vPoint )
util.Effect( "Smoke", effectdata )
end)

concommand.Add("withdrawc",function(ply)
ply:SetModel("models/rtbmodels/pokemon/squirtle_shell.mdl")
timer.Create("withdrawtimer",1,1,function()
ply:SetModel(sql.QueryValue("SELECT model FROM playerpokemon"))
end)
end)

concommand.Add("switchmove1",function()
sql.Query("UPDATE playerpokemon SET move1 = 'bubble'")
end)

concommand.Add("switchmove2",function()
sql.Query("UPDATE playerpokemon SET move2 = 'bubble'")
end)

concommand.Add("switchmove3",function()
sql.Query("UPDATE playerpokemon SET move3 = 'bubble'")
end)

concommand.Add("switchmove4",function()
sql.Query("UPDATE playerpokemon SET move4 = 'bubble'")
end)

concommand.Add("bubble",function(ply)
sleepp = ents.Create( "prop_outline4" )
sleepp:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 40 ))
sleepp:Spawn()
sleepp:GetPhysicsObject():AddVelocity(Vector(ply:GetAimVector() * 1000000))

timer.Create("sleeptimer2",1,1, function()
sleepp:Remove()
end)

dodamage = 1
dodamage2 = 1
hook.Add( "Think", "Another unique name2", function()
if sleepp:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( sleepp:GetPos() )
util.Effect( "watersplash", effectdata )

if dodamage == 1 then 
RunConsoleCommand("damagecalc")
end
end
end)
end)

concommand.Add("takedown", function(ply)
RunConsoleCommand("ps1")

    local currentwalkspeed = ply:GetWalkSpeed()
	local currentrunspeed = ply:GetRunSpeed()
	ply:SetWalkSpeed(currentwalkspeed + 2000)
	ply:SetRunSpeed(currentrunspeed + 2000)
	timer.Simple(1/10, function()
		ply:SetWalkSpeed(currentwalkspeed)
		ply:SetRunSpeed(currentrunspeed)
		
		end)

end)

concommand.Add("createtub2", function(ply)
	valor = ply:GetName()
	y = (ply:GetPos().y)
	
bt1 = ents.Create( "prop_outline" )
bt1:SetPos( Vector(ply:GetPos().x + 1000, y ,ply:GetPos().z) )
bt1:SetModelScale( bt1:GetModelScale() * 1, 0 )
bt1:SetColor(Color(244,244,244,244))
bt1:Spawn()
RunConsoleCommand("std2a")
hook.Add( "Think", "Another unique name", function()
RunConsoleCommand("std2a")
if bt1:IsValid() then
    bt1:SetPos(Vector(ply:GetPos().x, ply:GetPos().y ,ply:GetPos().z + 10))
	bt1:NextThink(CurTime() ); return true 
	end
end )
hook.Add("ShouldCollide", "uniquename2", function(e1,e2)
if (e1:GetName() == valor and e2:GetClass() == "prop_outline" ) then return false
elseif (e1:GetName() != valor and e2:GetClass() == "prop_outline" ) then end
end)

timer.Create("newt1", 1/10,1, function()
RunConsoleCommand("std2")
RunConsoleCommand("removetuba")

end)
concommand.Add("removetuba",function()
if bt1:IsValid() then
bt1:Remove()
hook.Remove( "Think", "Another unique name" )
dodamagea = 1
end
end)

end)

dodamagea = 1
concommand.Add("std2a", function(ply)
if dodamagea == 1 then
for k,v in pairs(ents.FindByClass("prop_outline")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 70) then v2:TakeDamage((2*age2/5+2)*90*(age/v2:GetVar("DEF"))/50 + 2)
  dodamagea = 0

 end
 end
end
end
end  
end)

concommand.Add("razr",function(ply)
sleepp2 = ents.Create( "prop_outline5" )
sleepp2:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 40 ))
sleepp2:Spawn()
sleepp2:GetPhysicsObject():AddVelocity(Vector(ply:GetAimVector() * 1000000))

timer.Create("sleeptimer2",1,1, function()
sleepp2:Remove()
end)

dodamage = 1
dodamage2 = 1
hook.Add( "Think", "Another unique name3", function()
if sleepp2:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( sleepp2:GetPos() )

if dodamage == 1 then 
RunConsoleCommand("damagecalc")
end
end
end)
end)

concommand.Add("growth", function(ply)
ply:SetHealth(ply:Health() + 20)
end)

concommand.Add("doubed", function(ply)
RunConsoleCommand("ps1")
    k1 = false
    local currentwalkspeed = ply:GetWalkSpeed()
	local currentrunspeed = ply:GetRunSpeed()
	ply:SetWalkSpeed(currentwalkspeed + 2000)
	ply:SetRunSpeed(currentrunspeed + 2000)
	timer.Simple(1/10, function()
		ply:SetWalkSpeed(currentwalkspeed)
		ply:SetRunSpeed(currentrunspeed)
		
		end)

end)

	concommand.Add("createtub3", function(ply)
	valor = ply:GetName()
	y = (ply:GetPos().y)
	
bt1 = ents.Create( "prop_outline" )
bt1:SetPos( Vector(ply:GetPos().x + 1000, y ,ply:GetPos().z) )
bt1:SetModelScale( bt1:GetModelScale() * 1, 0 )
bt1:SetColor(Color(244,244,244,244))
bt1:Spawn()
RunConsoleCommand("std2b")
hook.Add( "Think", "Another unique name", function()
RunConsoleCommand("std2b")
if bt1:IsValid() then
    bt1:SetPos(Vector(ply:GetPos().x, ply:GetPos().y ,ply:GetPos().z + 10))
	bt1:NextThink(CurTime() ); return true 
	end
end )
hook.Add("ShouldCollide", "uniquename2", function(e1,e2)
if (e1:GetName() == valor and e2:GetClass() == "prop_outline" ) then return false
elseif (e1:GetName() != valor and e2:GetClass() == "prop_outline" ) then end
end)

timer.Create("newt1", 1/10,1, function()
RunConsoleCommand("std2")
RunConsoleCommand("removetub")

end)
concommand.Add("removetub",function()
if bt1:IsValid() then
bt1:Remove()
hook.Remove( "Think", "Another unique name" )
dodamage = 1
end
end)

end)

dodamagea = 1
concommand.Add("std2b", function(ply)
if dodamagea == 1 then
for k,v in pairs(ents.FindByClass("prop_outline")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 70) then v2:TakeDamage((2*age2/5+2)*120*(age/v2:GetVar("DEF"))/50 + 2)
  dodamagea = 0

 end
 end
end
end
end  
end)

concommand.Add("scaryf", function(ply)
sound.Play( "ambient/voices/f_scream1.wav", ply:GetPos() )
valor = ply:GetName()
bt2 = ents.Create( "scary" )
bt2:SetPos( Vector(ply:GetPos() + ply:GetForward() * 25) )
bt2:SetAngles( Angle(ply:GetAngles().x + -90 , ply:GetAngles().y, ply:GetAngles().z) )
bt2:Spawn()


hook.Add( "Think", "Another unique name2", function()
if bt2:IsValid() then
    bt2:SetPos(Vector(ply:GetPos().x + ply:GetForward().x * 90, ply:GetPos().y + ply:GetForward().y * 50 , ply:GetPos().z + ply:GetForward().z * 50 + 10))
	bt2:SetAngles( Angle(ply:GetAngles().x + -90 , ply:GetAngles().y, ply:GetAngles().z ) )
	bt2:NextThink(CurTime() ); return true 
	end
	
	end )

concommand.Add("rg", function()
bt2:Remove()

end)

concommand.Add("st3", function(ply)

if dodamagegrw == 1 then
for k,v in pairs(ents.FindByClass("scary")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 70) then v2:SetVar("SPD", v2:GetVar("SPD") *4/5)
  dodamagegrw = 0
ply:ChatPrint("Enemy Pokemon's SPEED Lowered")
 end
 end
end
end
end
end)

timer.Create("growltimer",1,1,function()
bt2:Remove()
dodamagegrw = 1
end)
end)

concommand.Add("firefang", function(ply)
ply:Ignite(1)
end)

concommand.Add("bigflame", function(ply)
sleepp = ents.Create( "prop_outline4" )
sleepp:SetPos( Vector(ply:GetPos().x,ply:GetPos().y,ply:GetPos().z + 40 ))
sleepp:Spawn()
sleepp:GetPhysicsObject():AddVelocity(Vector(ply:GetAimVector() * 1000000))

timer.Create("sleeptimer2",1,1, function()
sleepp:Remove()
end)

dodamage = 1
dodamage2 = 1
hook.Add( "Think", "Another unique name2", function()
if sleepp:IsValid() then
local effectdata = EffectData()
effectdata:SetOrigin( sleepp:GetPos() )
util.Effect( "HelicopterMegaBomb", effectdata )

if dodamage == 1 then 
for k,v in pairs(ents.FindByClass("prop_outline4")) do
v1 = v
for k,v in pairs(ents.GetAll()) do 
v2 = v
if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
 if(v2:GetPos():Distance(v1:GetPos() ) < 50) then v2:SetHealth(v2:Health() - 40)
 dodamage = 0
 end
end
end
end  
end



end
end)
end)

concommand.Add("protect", function(ply)
ply:GodEnable()
timer.Create("godrtimer", 1, 5, function()
ply:GodEnable(false)
end)
end)