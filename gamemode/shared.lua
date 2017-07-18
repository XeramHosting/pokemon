
GM.Name = "Pokemon"
GM.Author = "N/A"
GM.Email = "N/A"
GM.Website = "N/A"

function GM:Initialize()

	self.BaseClass.Initialize( self )

end

concommand.Add("spinhook", function()
	hook.Call( "spin" )

end)




function GM:PlayerSpawn( ply )
	pokemonstate = false
	RunConsoleCommand("testnet3")
	ply:SetModel("models/player/red.mdl")
	ply:SetPlayerColor( Vector( 1, 0, 0 ) )
	RunConsoleCommand("defaultquest")
	ply:ConCommand("defaultquest")
	ply:ConCommand("printatk")
	ply:ConCommand("newhud")
	ply:ConCommand("sendmove1")
	ply:ConCommand("sendmove2")
	ply:ConCommand("sendmove3")
	ply:ConCommand("sendmove4")
	ply:ConCommand("sendbhelth")
	ply:ConCommand("sendxp")
	ply:ConCommand("sendlvl")
	ply:ConCommand("sendinv")
	ply:ConCommand("moneycheck")
	ply:ConCommand("newhud3")
	ply:ConCommand("inventorycheck")
	ply:ConCommand("sendforp1")
	ply:ConCommand("newhud")
	ply:ConCommand("newhud3")
	ply:ConCommand("questcheck")
	ply:ConCommand("questtrigger")
end

--
concommand.Add("questtrigger", function(ply)
	abcd = tonumber(sql.QueryValue("SELECT quest1 FROM playerquests"))
	abcd2 = tonumber(sql.QueryValue("SELECT quest2 FROM playerquests"))
	if abcd ! = 3 then
		ply:ConCommand("quest1") end

		if abcd == 3 and abcd2 < 2 then
			ply:ConCommand("quest2")
		end

	end)

	concommand.Add("questcheck", function()
		if not sql.TableExists("playerquests") then
		sql.Query( "CREATE TABLE playerquests ( quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10)" )
		sql.Query( "INSERT INTO playerquests ( quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10 ) VALUES ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )" )
	end
end)

concommand.Add("savebulbasaurtest", function(ply)
	if sql.TableExists( "playerpokemon" ) then
	print("You already have bulbasaur!")
else
	sql.Query( "CREATE TABLE playerpokemon ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', 'models/rtbmodels/pokemon/bulbasaur.mdl','5', '11' , '11' , '13', '13', '11', '21','0', 'tackle','growl','move3','move4')" )
print("Table Created!")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
RunConsoleCommand("closequest1")
end
end)
concommand.Add("savesquirtletest", function(ply)
if sql.TableExists( "playerpokemon" ) then
print("You already have a starter!")
else
sql.Query( "CREATE TABLE playerpokemon ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', 'models/rtbmodels/pokemon/squirtle.mdl','5', '11', '11','13', '12','10','20','0', 'tackle','tail whip','move3','move4')" )
print("Table Created!")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
RunConsoleCommand("closequest1")
end
end)

concommand.Add("savechartest", function(ply)
if sql.TableExists( "playerpokemon" ) then
print("You already have a starter!")
else
sql.Query( "CREATE TABLE playerpokemon (steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', 'models/rtbmodels/pokemon/charmander.mdl','5', '12', '10','10', '11','13','20','0', 'scratch','growl','move3','move4')" )
print("Table Created!")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
RunConsoleCommand("closequest1")
end
end)

concommand.Add("dropb", function()

sql.Query("DROP TABLE playerpokemon")
print("table dropped")

end)

concommand.Add("printsqlb", function(ply)

local printb = sql.Query( "SELECT * from playerpokemon" )
PrintTable(printb)

end)

concommand.Add("inventorycheck", function()
if sql.TableExists("playerinventory") then print("table already exists") else
sql.Query( "CREATE TABLE playerinventory (pokeball)" )
sql.Query( "INSERT INTO playerinventory ( pokeball ) VALUES ('0')" )
end
end)

concommand.Add("moneycheck", function()
if sql.TableExists("playermoney") then print("table already exists") else
sql.Query( "CREATE TABLE playermoney(money)" )
sql.Query( "INSERT INTO playermoney ( money ) VALUES ('500')" )
end
end)

concommand.Add("addpballs", function(ply)
printbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
printm = sql.QueryValue("SELECT money from playermoney")
print(printbs)
print(printm)
if tonumber(sql.QueryValue("SELECT money from playermoney")) < 100 then ply:ChatPrint( "You do not have enough money to buy that." ) else
sql.Query("UPDATE playerinventory SET pokeball = '".. printbs + 1 .."'")
sql.Query("UPDATE playermoney SET money = '".. printm - 100 .."'")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
RunConsoleCommand("newhud3")
end
end)

hook.Add( "PlayerUse", "dermat", function( ply, ent )
if ( ent:GetClass() == "prof" ) then
ply:ConCommand("dermapop")
end
if ( ent:GetClass() == "shop" ) then
ply:ConCommand("dermapop2")
end
if ( ent:GetClass() == "healer" ) then
ply:ConCommand("healerpop")
end
end )

concommand.Add("printplayerpokemon", function()
local pkballs = sql.QueryValue("SELECT move1 FROM playerpokemon")
PrintTable(sql.Query("SELECT * FROM playerpokemon"))
print(pkballs)
end)


pkmm = sql.QueryValue("SELECT model FROM playerpokemon")
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 FROM playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 FROM playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 FROM playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 FROM playerpokemon")

concommand.Add("test6", function(ply)
ply:ConCommand("spawnpokemon1")
ply:ConCommand("movesvgui")
ply:ConCommand("sendbhelth")
end)

npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
npclvl = sql.QueryValue( "SELECT level from playerpokemon" )
plpkmn = sql.QueryValue("SELECT model from playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
p1spatk = sql.QueryValue("SELECT spatk FROM playerpokemon")
p1atk = sql.QueryValue("SELECT atk FROM playerpokemon")
p1def = sql.QueryValue("SELECT def FROM playerpokemon")
p1spdef = sql.QueryValue("SELECT spdef FROM playerpokemon")
p1spd = sql.QueryValue("SELECT spd FROM playerpokemon")

npcmodel2 = sql.QueryValue("SELECT model FROM playerpokemon2")
readmove1a = sql.QueryValue("SELECT move1 from playerpokemon2")
readmove2a = sql.QueryValue("SELECT move2 from playerpokemon2")
readmove3a = sql.QueryValue("SELECT move3 from playerpokemon2")
readmove4a = sql.QueryValue("SELECT move4 from playerpokemon2")

npcmodel3 = sql.QueryValue("SELECT model FROM playerpokemon3")
readmove1b = sql.QueryValue("SELECT move1 from playerpokemon3")
readmove2b = sql.QueryValue("SELECT move2 from playerpokemon3")
readmove3b = sql.QueryValue("SELECT move3 from playerpokemon3")
readmove4b = sql.QueryValue("SELECT move4 from playerpokemon3")

npcmodel4 = sql.QueryValue("SELECT model FROM playerpokemon4")
readmove1c = sql.QueryValue("SELECT move1 from playerpokemon4")
readmove2c = sql.QueryValue("SELECT move2 from playerpokemon4")
readmove3c = sql.QueryValue("SELECT move3 from playerpokemon4")
readmove4c = sql.QueryValue("SELECT move4 from playerpokemon4")

npcmodel5 = sql.QueryValue("SELECT model FROM playerpokemon5")
readmove1d = sql.QueryValue("SELECT move1 from playerpokemon5")
readmove2d = sql.QueryValue("SELECT move2 from playerpokemon5")
readmove3d = sql.QueryValue("SELECT move3 from playerpokemon5")
readmove4d = sql.QueryValue("SELECT move4 from playerpokemon5")

npcmodel6 = sql.QueryValue("SELECT model FROM playerpokemon6")
readmove1e = sql.QueryValue("SELECT move1 from playerpokemon6")
readmove2e = sql.QueryValue("SELECT move2 from playerpokemon6")
readmove3e = sql.QueryValue("SELECT move3 from playerpokemon6")
readmove4e = sql.QueryValue("SELECT move4 from playerpokemon6")


npcmodel3 = sql.QueryValue("SELECT model FROM playerpokemon3")

npcmodel4 = sql.QueryValue("SELECT model FROM playerpokemon4")

npcmodel5 = sql.QueryValue("SELECT model FROM playerpokemon5")

npcmodel6 = sql.QueryValue("SELECT model FROM playerpokemon6")

healthtable = {}
dftable = {}
sdftable = {}

concommand.Add("spawnkleiner2", function(ply)
if npcmodel == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("spawnkleiner3")
end
if npcmodel == "models/rtbmodels/pokemon/charmander.mdl" then
RunConsoleCommand("spawnkleiner4")
end
if npcmodel == "models/rtbmodels/pokemon/bulbasaur.mdl" then
RunConsoleCommand("spawnkleiner5")
end

if npcmodel == "models/rtbmodels/pokemon/blastoise.mdl" then
RunConsoleCommand("spawnkleiner7")
end

if npcmodel == "models/rtbmodels/pokemon/charizard.mdl" then
RunConsoleCommand("spawnkleine8")
end

if npcmodel == "models/rtbmodels/pokemon/venusaur.mdl" then
RunConsoleCommand("spawnkleiner9")
end


RunConsoleCommand("thirdperson")
RunConsoleCommand("newhud2")
end)

concommand.Add("spawnkleiner6", function(ply)


if npcmodel2 == "models/rtbmodels/pokemon/arcanine.mdl" then
RunConsoleCommand("cma")
end

if npcmodel2 == "models/rtbmodels/pokemon/flygon.mdl" then
RunConsoleCommand("cma2")
end

if npcmodel2 == "models/rtbmodels/pokemon/jolteon.mdl" then
RunConsoleCommand("cma3")
end

if npcmodel2 == "models/rtbmodels/pokemon/glaceon.mdl" then
RunConsoleCommand("cma4")
end
end)

concommand.Add("spawnkleiner6a", function(ply)


if npcmodel3 == "models/rtbmodels/pokemon/arcanine.mdl" then
RunConsoleCommand("cma")
end

if npcmodel3 == "models/rtbmodels/pokemon/flygon.mdl" then
RunConsoleCommand("cma2")
end

if npcmodel3 == "models/rtbmodels/pokemon/jolteon.mdl" then
RunConsoleCommand("cma3")
end

if npcmodel3 == "models/rtbmodels/pokemon/glaceon.mdl" then
RunConsoleCommand("cma4")
end
end)

concommand.Add("spawnkleiner6b", function(ply)


if npcmodel4 == "models/rtbmodels/pokemon/arcanine.mdl" then
RunConsoleCommand("cma")
end

if npcmodel4 == "models/rtbmodels/pokemon/flygon.mdl" then
RunConsoleCommand("cma2")
end

if npcmodel4 == "models/rtbmodels/pokemon/jolteon.mdl" then
RunConsoleCommand("cma3")
end

if npcmodel4 == "models/rtbmodels/pokemon/glaceon.mdl" then
RunConsoleCommand("cma4")
end
end)

concommand.Add("spawnkleiner6c", function(ply)


if npcmodel5 == "models/rtbmodels/pokemon/arcanine.mdl" then
RunConsoleCommand("cma")
end

if npcmodel5 == "models/rtbmodels/pokemon/flygon.mdl" then
RunConsoleCommand("cma2")
end

if npcmodel5 == "models/rtbmodels/pokemon/jolteon.mdl" then
RunConsoleCommand("cma3")
end

if npcmodel5 == "models/rtbmodels/pokemon/glaceon.mdl" then
RunConsoleCommand("cma4")
end
end)

concommand.Add("spawnkleiner6d", function(ply)


if npcmodel6 == "models/rtbmodels/pokemon/arcanine.mdl" then
RunConsoleCommand("cma")
end

if npcmodel6 == "models/rtbmodels/pokemon/flygon.mdl" then
RunConsoleCommand("cma2")
end

if npcmodel6 == "models/rtbmodels/pokemon/jolteon.mdl" then
RunConsoleCommand("cma3")
end

if npcmodel6 == "models/rtbmodels/pokemon/glaceon.mdl" then
RunConsoleCommand("cma4")
end
end)

concommand.Add("equipball", function(ply)
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
printbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
if tonumber(printbs) < 0 then else
sql.Query("UPDATE playerinventory SET pokeball = '".. printbs - 1 .."'")
RunConsoleCommand("givepball2")
end
end)

concommand.Add("bbl1", function(ply)
ply:ChatPrint("Bulbasaur learned bubble!")
sql.Query("Update playerpokemon SET move1 = 'bubble'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("tkdn1", function(ply)
ply:ChatPrint("Bulbasaur learned Takedown")
sql.Query("Update playerpokemon SET move1 = 'takedown'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("tkdn2", function(ply)
ply:ChatPrint("Bulbasaur learned Takedown")
sql.Query("Update playerpokemon SET move2 = 'takedown'")
readmove2 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("tkdn3", function(ply)
ply:ChatPrint("Bulbasaur learned Takedown")
sql.Query("Update playerpokemon SET move3 = 'takedown'")
readmove1 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("tkdn4", function(ply)
ply:ChatPrint("Bulbasaur learned Takedown")
sql.Query("Update playerpokemon SET move4 = 'takedown'")
readmove4 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)


concommand.Add("bbl2", function(ply)
ply:ChatPrint("Bulbasaur learned bubble!")
sql.Query("Update playerpokemon SET move2 = 'bubble'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("bbl3", function(ply)
ply:ChatPrint("Bulbasaur learned bubble!")
sql.Query("Update playerpokemon SET move3 = 'bubble'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("bbl4", function(ply)
ply:ChatPrint("Bulbasaur learned bubble!")
sql.Query("Update playerpokemon SET move4 = 'bubble'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("emitsoundt", function(ply)
ply:EmitSound( "npc/fast_zombie/claw_miss1.wav" ) -- You can remove the arguments that have default values.
end)


concommand.Add("exp", function(ply)
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
RunConsoleCommand("resendvariables")
printhp = sql.QueryValue("SELECT hp FROM playerpokemon")
p1spatk = sql.QueryValue("SELECT spatk FROM playerpokemon")
p1atk = sql.QueryValue("SELECT atk FROM playerpokemon")
p1def = sql.QueryValue("SELECT def FROM playerpokemon")
p1spdef = sql.QueryValue("SELECT spdef FROM playerpokemon")
p1spd = sql.QueryValue("SELECT spd FROM playerpokemon")
getlvl = sql.QueryValue( "SELECT level from playerpokemon WHERE steamid = '"..ply:SteamID().."'" )
pexp = sql.QueryValue( "SELECT EXP from playerpokemon WHERE steamid = '"..ply:SteamID().."'" )
pexp2 = pexp + 50
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")

sql.Query("Update playerpokemon SET EXP='"..pexp + 50000 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
pexp4 = sql.QueryValue( "SELECT EXP from playerpokemon WHERE steamid = '"..ply:SteamID().."'" )
if tonumber(pexp4) > tonumber(getlvl^3) then
sql.Query("Update playerpokemon SET level = '"..getlvl + 1 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET EXP = '0' WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
ply:PrintMessage( HUD_PRINTTALK, "Level Up" )
if ply:GetModel() == "models/rtbmodels/pokemon/squirtle.mdl" then ply:PrintMessage( HUD_PRINTTALK, "Health + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Attack + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Defence + 4" ) ply:PrintMessage( HUD_PRINTTALK, "Sp. Attack + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Sp. Defence + 4" ) ply:PrintMessage( HUD_PRINTTALK, "Speed + 2" )
sql.Query("Update playerpokemon SET hp='"..printhp + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET atk='"..p1atk + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spatk='"..p1def + 4 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET def='"..p1spatk + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spdef='"..p1spdef + 4 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spd='"..p1spd + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")end
if ply:GetModel() == "models/rtbmodels/pokemon/bulbasaur.mdl" then ply:PrintMessage( HUD_PRINTTALK, "Health + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Attack + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Defence + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Sp. Attack + 4" ) ply:PrintMessage( HUD_PRINTTALK, "Sp. Defence + 4" ) ply:PrintMessage( HUD_PRINTTALK, "Speed + 2" )
sql.Query("Update playerpokemon SET hp='"..printhp + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET atk='"..p1atk + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spatk='"..p1def + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET def='"..p1spatk + 4 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spdef='"..p1spdef + 4 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spd='"..p1spd + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")end
if ply:GetModel() == "models/rtbmodels/pokemon/charmander.mdl" then ply:PrintMessage( HUD_PRINTTALK, "Health + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Attack + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Defence + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Sp. Attack + 4" ) ply:PrintMessage( HUD_PRINTTALK, "Sp. Defence + 2" ) ply:PrintMessage( HUD_PRINTTALK, "Speed + 4" )
sql.Query("Update playerpokemon SET hp='"..printhp + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET atk='"..p1atk + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spatk='"..p1def + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET def='"..p1spatk + 4 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spdef='"..p1spdef + 2 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
sql.Query("Update playerpokemon SET spd='"..p1spd + 4 .."'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")end else end
getlvl2 = sql.QueryValue( "SELECT level from playerpokemon WHERE steamid = '"..ply:SteamID().."'" )
pexp3 = sql.QueryValue( "SELECT EXP from playerpokemon WHERE steamid = '"..ply:SteamID().."'" )
print(getlvl2^3)
print(pexp3)
print(getlvl2)
if (tonumber(getlvl2) == 7 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move3 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move3") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
sql.Query("Update playerpokemon SET move3 = 'vinewipm'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
end

if (tonumber(getlvl2) == 7 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move3 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move3") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
sql.Query("Update playerpokemon SET move3 = 'Water Gun'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 7 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move3 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move3") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
sql.Query("Update playerpokemon SET move3 = 'ember'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 17 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma11")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 19 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma12")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 22 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma13")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 25 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma14")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 28 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma15")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 31 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma16")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 34 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma16")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 40 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/blastoise.mdl" then
RunConsoleCommand("learnmovederma16")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 47 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/blastoise.mdl" then
RunConsoleCommand("learnmovederma16")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 54 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/blastoise.mdl" then
RunConsoleCommand("learnmovederma16")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 60 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/blastoise.mdl" then
RunConsoleCommand("learnmovederma16")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 32 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
RunConsoleCommand("learnmovederma17")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 39 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/venusaur.mdl" then
RunConsoleCommand("learnmovederma17")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 45 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/venusaur.mdl" then
RunConsoleCommand("learnmovederma18")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 50 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/venusaur.mdl" then
RunConsoleCommand("learnmovederma19")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 53 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/venusaur.mdl" then
RunConsoleCommand("learnmovederma120")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 10 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
sql.Query("Update playerpokemon SET move4 = 'Smoke Screen'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 16 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
RunConsoleCommand("learnmovederma6")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 47 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charizard.mdl" then
RunConsoleCommand("learnmovederma10")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 56 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charizard.mdl" then
RunConsoleCommand("learnmovederma10")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 62 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charizard.mdl" then
RunConsoleCommand("learnmovederma10")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 71 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charizard.mdl" then
RunConsoleCommand("learnmovederma10")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 77 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charizard.mdl" then
RunConsoleCommand("learnmovederma10")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 25 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
RunConsoleCommand("learnmovederma8")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 34 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
RunConsoleCommand("learnmovederma10")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 19 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
RunConsoleCommand("learnmovederma7")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 32 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
RunConsoleCommand("learnmovederma9")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 41 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/charmander.mdl" then
RunConsoleCommand("learnmovederma9")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 13 and tonumber(pexp3) == 0) and (sql.QueryValue( "SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."'" ) == "move4") and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
sql.Query("Update playerpokemon SET move4 = 'poisonpowderm'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
end

if (tonumber(getlvl2) == 14 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
sql.Query("Update playerpokemon SET move4 = 'poisonpowderm'WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
end

if (tonumber(getlvl2) == 10 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
sql.Query("Update playerpokemon SET move4 = 'withdraw'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 13 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/squirtle.mdl" then
RunConsoleCommand("learnmovederma")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 15 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
RunConsoleCommand("learnmovederma2")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 19 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
RunConsoleCommand("learnmovederma3")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 23 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
RunConsoleCommand("learnmovederma4")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

if (tonumber(getlvl2) == 29 and tonumber(pexp3) == 0) and sql.QueryValue("SELECT model FROM playerpokemon") == "models/rtbmodels/pokemon/bulbasaur.mdl" then
RunConsoleCommand("learnmovederma5")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

pmdl = sql.QueryValue( "SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'" )

if (pmdl == "models/rtbmodels/pokemon/squirtle.mdl") then
if (tonumber(getlvl2) == 36 and tonumber(pexp3) == 0) then
sql.Query("Update playerpokemon SET model = 'models/rtbmodels/pokemon/blastoise.mdl' WHERE steamid = '"..ply:SteamID().."'")
ply:ChatPrint("Squirtle has evolved!")
RunConsoleCommand("blastit")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
plpkmn = sql.QueryValue("SELECT model from playerpokemon")
end
end

if (pmdl == "models/rtbmodels/pokemon/charmander.mdl") then
if (tonumber(getlvl2) == 36 and tonumber(pexp3) == 0) then
sql.Query("Update playerpokemon SET model = 'models/rtbmodels/pokemon/charizard.mdl' WHERE steamid = '"..ply:SteamID().."'")
ply:SetModel("models/rtbmodels/pokemon/charizard.mdl")
ply:ChatPrint("Charmander has evolved!")
RunConsoleCommand("charit")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
plpkmn = sql.QueryValue("SELECT model from playerpokemon")
end
end

if (pmdl == "models/rtbmodels/pokemon/bulbasaur.mdl") then
if (tonumber(getlvl2) == 32 and tonumber(pexp3) == 0) then
sql.Query("Update playerpokemon SET model = 'models/rtbmodels/pokemon/venusaur.mdl' WHERE steamid = '"..ply:SteamID().."'")
ply:SetModel("models/rtbmodels/pokemon/venusaur.mdl")
ply:ChatPrint("Bulbasaur has evolved!")
RunConsoleCommand("venuit")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
plpkmn = sql.QueryValue("SELECT model from playerpokemon")
end
end
npclvl = sql.QueryValue( "SELECT level from playerpokemon" )
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
end)

function LoopThroughPlayers()
hook.Add("PostDrawOpaqueRenderables", "My3D2DTestHook2", function()
for k, v in pairs(ents.GetAll()) do
if (v:GetModel() == "models/rtbmodels/pokemon/slowpoke.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 50), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Slowpoke LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 0, 255, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/flygon.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Flygon LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 0, 255, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/flygon.mdl") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/caterpie.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 20), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Caterpie LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(155, 255, 155, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 40), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Glaceon LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(0, 144, 255, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 40), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Jolteon LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 255, 0, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 0, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/charmander.mdl") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end
if (v:GetModel() == "models/rtbmodels/pokemon/bulbasaur.mdl") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end
if (v:GetModel() == "models/rtbmodels/pokemon/squirtle.mdl") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/venusaur.mdl") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end
if (v:GetModel() == "models/rtbmodels/pokemon/charizard.mdl") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end
if (v:GetModel() == "models/rtbmodels/pokemon/blastoise.mdl") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

end


for k, v in pairs(ents.GetAll()) do
if (v:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 90), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Arcanine LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 0, 0, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end
end




end)
end

hook.Add("HUDPaint", "LoopThroughPlayers", LoopThroughPlayers)
-------------------------------------------------------------------- Show level and hp above pokemon -------------------------------------------------------------------------------
concommand.Add("hookrunt", function()
for k, v in pairs(ents.GetAll()) do
if (v:GetModel() == "models/rtbmodels/pokemon/flygon.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Flygon LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 0, 255, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/slowpoke.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Flygon LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 0, 255, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/flygon.mdl") then
print(v)
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 100), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 40), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Glaceon LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(0, 144, 255, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end

if (v:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 40), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Jolteon LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 255, 0, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 0, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end
end


for k, v in pairs(ents.GetAll()) do
if (v:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl") and v:GetVar("LVL") then
cam.Start3D2D(Vector(v:GetPos().x - 10, v:GetPos().y, v:GetPos().z + 90), Angle(v:GetAngles().x, v:GetAngles().y + 90, v:GetAngles().z + 90), 1)
draw.DrawText("Arcanine LvL"..v:GetVar("LVL").."", "Default", 10, - 10, Color(255, 0, 0, 255), TEXT_ALIGN_CENTER)
draw.RoundedBox( 2, 0, 0, v:Health() / v:GetMaxHealth() * 100, 10, Color(0, 255, 0) )
draw.DrawText(""..v:Health().."/"..v:GetMaxHealth().."", "Default", - 23, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
cam.End3D2D()
end
end

end)


concommand.Add("damagecalc", function(ply)



for k, v in pairs(ents.FindByClass("prop_outline5")) do
v1 = v
for k, v in pairs(ents.GetAll()) do
v2 = v

if v2:GetModel() == "models/rtbmodels/pokemon/arcanine.mdl" then
if(v2:GetPos():Distance(v1:GetPos() ) < 50) then
damc = atk * lvl / v2:GetVar("LVL")
v2:SetHealth(v2:Health() - damc)
PrintMessage( HUD_PRINTTALK, v2:GetVar("LVL") )
dodamage = 0
end
end
if v2:GetModel() == "models/rtbmodels/pokemon/jolteon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/flygon.mdl" or v2:GetModel() == "models/rtbmodels/pokemon/glaceon.mdl" then
if(v2:GetPos():Distance(v1:GetPos() ) < 50) then
v2:SetHealth(v2:Health() - 50)
dodamage = 0
end
end
end
end
end)

concommand.Add("catch2", function(ply)
if ply:GetEyeTrace().Entity:GetVar("LVL") > 20 then
ply:ChatPrint("This pokemon's level is too high to catch.") else
if math.random(1, 20) == 5 then
ply:ChatPrint("Pokemon captured!")
if not sql.TableExists("playerpokemon2") then sql.Query( "CREATE TABLE playerpokemon2 (steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon2 ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', '"..ply:GetEyeTrace().Entity:GetModel().."', '"..ply:GetEyeTrace().Entity:GetVar("LVL").."','"..ply:GetEyeTrace().Entity:GetVar("ATK").."', '"..ply:GetEyeTrace().Entity:GetVar("SPATK").."', '"..ply:GetEyeTrace().Entity:GetVar("DEF").."','"..ply:GetEyeTrace().Entity:GetVar("SPDEF").."', '"..ply:GetEyeTrace().Entity:GetVar("SPD").."','"..ply:GetEyeTrace().Entity:GetVar("HP").."','0', 'scratch','growl','move3','move4')" ) else print("playerpokemon2 already exists")
if not sql.TableExists("playerpokemon3") then sql.Query( "CREATE TABLE playerpokemon3 (steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon3 ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', '"..ply:GetEyeTrace().Entity:GetModel().."','5', '12', '10','10', '11','13','20','0', 'scratch','growl','move3','move4')" ) else print("playerpokemon3 already exists")
if not sql.TableExists("playerpokemon4") then sql.Query( "CREATE TABLE playerpokemon4 (steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon4 ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', '"..ply:GetEyeTrace().Entity:GetModel().."','5', '12', '10','10', '11','13','20','0', 'scratch','growl','move3','move4')" ) else print("playerpokemon4 already exists")
if not sql.TableExists("playerpokemon5") then sql.Query( "CREATE TABLE playerpokemon5 (steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon5 ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', '"..ply:GetEyeTrace().Entity:GetModel().."','5', '12', '10','10', '11','13','20','0', 'scratch','growl','move3','move4')" ) else print("playerpokemon5 already exists")
if not sql.TableExists("playerpokemon6") then sql.Query( "CREATE TABLE playerpokemon6 (steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4)" )
sql.Query( "INSERT INTO playerpokemon6 ( steamid, model, level, atk, spatk, def, spdef, spd, hp, EXP, move1, move2, move3, move4) VALUES ( '".. ply:SteamID() .."', '"..ply:GetEyeTrace().Entity:GetModel().."','5', '12', '10','10', '11','13','20','0', 'scratch','growl','move3','move4')" ) else print("playerpokemon6 already exists")
end
end
end
end
end
end
npcmodel2 = sql.QueryValue("SELECT model FROM playerpokemon2")
npcmodel3 = sql.QueryValue("SELECT model FROM playerpokemon3")
npcmodel4 = sql.QueryValue("SELECT model FROM playerpokemon4")
npcmodel5 = sql.QueryValue("SELECT model FROM playerpokemon5")
npcmodel6 = sql.QueryValue("SELECT model FROM playerpokemon6")

end
end)

concommand.Add("deletetables", function()
sql.Query("DROP TABLE playerpokemon2")
sql.Query("DROP TABLE playerpokemon3")
sql.Query("DROP TABLE playerpokemon4")
sql.Query("DROP TABLE playerpokemon5")
sql.Query("DROP TABLE playerpokemon6")
end)

concommand.Add("printt2", function()
PrintTable(sql.Query("SELECT * FROM playerpokemon2"))
PrintTable(sql.Query("SELECT * FROM playerpokemon3"))
PrintTable(sql.Query("SELECT * FROM playerpokemon4"))
PrintTable(sql.Query("SELECT * FROM playerpokemon5"))
PrintTable(sql.Query("SELECT * FROM playerpokemon6"))
end)

concommand.Add("asadf", function(ply)
ply:SetNWInt( 'whatpokemon', 2 )
print(ply:GetNWInt('whatpokemon'))
end)

concommand.Add("printmodel", function(ply)
print(ply:GetEyeTrace().Entity:GetModel())
end)

concommand.Add("infinitymoney", function()
sql.Query("UPDATE playerinventory SET pokeball = 50000")
end)

concommand.Add("insertintotable", function(ply)
table.remove(healthtable, 1)
table.insert(healthtable, 1, hpr)
end )

concommand.Add("sethpnow", function(ply)
if table.getn( healthtable ) == 1 then
net.Start( "SendHP" )
net.WriteString( table.concat(healthtable, 1, 1) ) -- You can also use net.WriteInt here. The second argument is 8 since the age will never be above 255. Doing this saves bandwidth and can reduce lag.
net.SendToServer() else
net.Start( "SendHP" )
net.WriteString( hpr) -- You can also use net.WriteInt here. The second argument is 8 since the age will never be above 255. Doing this saves bandwidth and can reduce lag.
net.SendToServer()
end
end)

function GM:HUDDrawTargetID()
local tr = util.GetPlayerTrace( LocalPlayer() )
local trace = util.TraceLine( tr )
if (!trace.Hit) then return end
if (!trace.HitNonWorld) then return end

local text = "ERROR"
local font = "TargetID"

if (trace.Entity:IsPlayer()) then
text = trace.Entity:Nick()
else
return
--text = trace.Entity:GetClass()
end

surface.SetFont( font )
local w, h = surface.GetTextSize( text )

local MouseX, MouseY = gui.MousePos()

if ( MouseX == 0 && MouseY == 0 ) then

MouseX = ScrW() / 2
MouseY = ScrH() / 2

end

local x = MouseX
local y = MouseY

x = x - w / 2
y = y + 30

-- The fonts internal drop shadow looks lousy with AA on
draw.SimpleText( text, font, x + 1, y + 1, Color(0, 0, 0, 120) )
draw.SimpleText( text, font, x + 2, y + 2, Color(0, 0, 0, 50) )
draw.SimpleText( text, font, x, y, self:GetTeamColor( trace.Entity ) )

y = y + h + 5

local text = trace.Entity:Health() .. "%"
local font = "TargetIDSmall"

surface.SetFont( font )
local w, h = surface.GetTextSize( text )
local x = MouseX - w / 2

end

concommand.Add("nwint", function(ply)

print(ply:GetNWInt('money'))
end)

hpr2 = sql.QueryValue("SELECT hp FROM playerpokemon2")

p1spatka = sql.QueryValue("SELECT spatk FROM playerpokemon2")
p1atka = sql.QueryValue("SELECT atk FROM playerpokemon2")
p1defa = sql.QueryValue("SELECT def FROM playerpokemon2")
p1spdefa = sql.QueryValue("SELECT spdef FROM playerpokemon2")
p1spda = sql.QueryValue("SELECT spd FROM playerpokemon2")

p1spatkb = sql.QueryValue("SELECT spatk FROM playerpokemon3")
p1atkb = sql.QueryValue("SELECT atk FROM playerpokemon3")
p1defb = sql.QueryValue("SELECT def FROM playerpokemon3")
p1spdefb = sql.QueryValue("SELECT spdef FROM playerpokemon3")
p1spdb = sql.QueryValue("SELECT spd FROM playerpokemon3")

p1spatkc = sql.QueryValue("SELECT spatk FROM playerpokemon4")
p1atkc = sql.QueryValue("SELECT atk FROM playerpokemon4")
p1defc = sql.QueryValue("SELECT def FROM playerpokemon4")
p1spdefc = sql.QueryValue("SELECT spdef FROM playerpokemon4")
p1spdc = sql.QueryValue("SELECT spd FROM playerpokemon4")

p1spatkd = sql.QueryValue("SELECT spatk FROM playerpokemon5")
p1atkd = sql.QueryValue("SELECT atk FROM playerpokemon5")
p1defd = sql.QueryValue("SELECT def FROM playerpokemon5")
p1spdefd = sql.QueryValue("SELECT spdef FROM playerpokemon5")
p1spdd = sql.QueryValue("SELECT spd FROM playerpokemon5")

p1spatke = sql.QueryValue("SELECT spatk FROM playerpokemon6")
p1atke = sql.QueryValue("SELECT atk FROM playerpokemon6")
p1defe = sql.QueryValue("SELECT def FROM playerpokemon6")
p1spdefe = sql.QueryValue("SELECT spdef FROM playerpokemon6")
p1spde = sql.QueryValue("SELECT spd FROM playerpokemon6")

concommand.Add("resendvariables", function()
print(p1atka)
p1spatka = sql.QueryValue("SELECT spatk FROM playerpokemon2")
p1atka = sql.QueryValue("SELECT atk FROM playerpokemon2")
p1defa = sql.QueryValue("SELECT def FROM playerpokemon2")
p1spdefa = sql.QueryValue("SELECT spdef FROM playerpokemon2")
p1spda = sql.QueryValue("SELECT spd FROM playerpokemon2")

p1spatkb = sql.QueryValue("SELECT spatk FROM playerpokemon3")
p1atkb = sql.QueryValue("SELECT atk FROM playerpokemon3")
p1defb = sql.QueryValue("SELECT def FROM playerpokemon3")
p1spdefb = sql.QueryValue("SELECT spdef FROM playerpokemon3")
p1spdb = sql.QueryValue("SELECT spd FROM playerpokemon3")

p1spatkc = sql.QueryValue("SELECT spatk FROM playerpokemon4")
p1atkc = sql.QueryValue("SELECT atk FROM playerpokemon4")
p1defc = sql.QueryValue("SELECT def FROM playerpokemon4")
p1spdefc = sql.QueryValue("SELECT spdef FROM playerpokemon4")
p1spdc = sql.QueryValue("SELECT spd FROM playerpokemon4")

p1spatkd = sql.QueryValue("SELECT spatk FROM playerpokemon5")
p1atkd = sql.QueryValue("SELECT atk FROM playerpokemon5")
p1defd = sql.QueryValue("SELECT def FROM playerpokemon5")
p1spdefd = sql.QueryValue("SELECT spdef FROM playerpokemon5")
p1spdd = sql.QueryValue("SELECT spd FROM playerpokemon5")

p1spatke = sql.QueryValue("SELECT spatk FROM playerpokemon6")
p1atke = sql.QueryValue("SELECT atk FROM playerpokemon6")
p1defe = sql.QueryValue("SELECT def FROM playerpokemon6")
p1spdefe = sql.QueryValue("SELECT spdef FROM playerpokemon6")
p1spde = sql.QueryValue("SELECT spd FROM playerpokemon6")

npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
npclvl = sql.QueryValue( "SELECT level from playerpokemon" )
plpkmn = sql.QueryValue("SELECT model from playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
p1spatk = sql.QueryValue("SELECT spatk FROM playerpokemon")
p1atk = sql.QueryValue("SELECT atk FROM playerpokemon")
p1def = sql.QueryValue("SELECT def FROM playerpokemon")
p1spdef = sql.QueryValue("SELECT spdef FROM playerpokemon")
p1spd = sql.QueryValue("SELECT spd FROM playerpokemon")

npcmodel2 = sql.QueryValue("SELECT model FROM playerpokemon2")
readmove1a = sql.QueryValue("SELECT move1 from playerpokemon2")
readmove2a = sql.QueryValue("SELECT move2 from playerpokemon2")
readmove3a = sql.QueryValue("SELECT move3 from playerpokemon2")
readmove4a = sql.QueryValue("SELECT move4 from playerpokemon2")

npcmodel3 = sql.QueryValue("SELECT model FROM playerpokemon3")

npcmodel4 = sql.QueryValue("SELECT model FROM playerpokemon4")

npcmodel5 = sql.QueryValue("SELECT model FROM playerpokemon5")

npcmodel6 = sql.QueryValue("SELECT model FROM playerpokemon6")

npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
npclvl = sql.QueryValue( "SELECT level from playerpokemon" )
plpkmn = sql.QueryValue("SELECT model from playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
p1spatk = sql.QueryValue("SELECT spatk FROM playerpokemon")
p1atk = sql.QueryValue("SELECT atk FROM playerpokemon")
p1def = sql.QueryValue("SELECT def FROM playerpokemon")
p1spdef = sql.QueryValue("SELECT spdef FROM playerpokemon")
p1spd = sql.QueryValue("SELECT spd FROM playerpokemon")

npcmodel2 = sql.QueryValue("SELECT model FROM playerpokemon2")
readmove1a = sql.QueryValue("SELECT move1 from playerpokemon2")
readmove2a = sql.QueryValue("SELECT move2 from playerpokemon2")
readmove3a = sql.QueryValue("SELECT move3 from playerpokemon2")
readmove4a = sql.QueryValue("SELECT move4 from playerpokemon2")

npcmodel3 = sql.QueryValue("SELECT model FROM playerpokemon3")
readmove1b = sql.QueryValue("SELECT move1 from playerpokemon3")
readmove2b = sql.QueryValue("SELECT move2 from playerpokemon3")
readmove3b = sql.QueryValue("SELECT move3 from playerpokemon3")
readmove4b = sql.QueryValue("SELECT move4 from playerpokemon3")

npcmodel4 = sql.QueryValue("SELECT model FROM playerpokemon4")
readmove1c = sql.QueryValue("SELECT move1 from playerpokemon4")
readmove2c = sql.QueryValue("SELECT move2 from playerpokemon4")
readmove3c = sql.QueryValue("SELECT move3 from playerpokemon4")
readmove4c = sql.QueryValue("SELECT move4 from playerpokemon4")

npcmodel5 = sql.QueryValue("SELECT model FROM playerpokemon5")
readmove1d = sql.QueryValue("SELECT move1 from playerpokemon5")
readmove2d = sql.QueryValue("SELECT move2 from playerpokemon5")
readmove3d = sql.QueryValue("SELECT move3 from playerpokemon5")
readmove4d = sql.QueryValue("SELECT move4 from playerpokemon5")

npcmodel6 = sql.QueryValue("SELECT model FROM playerpokemon6")
readmove1e = sql.QueryValue("SELECT move1 from playerpokemon6")
readmove2e = sql.QueryValue("SELECT move2 from playerpokemon6")
readmove3e = sql.QueryValue("SELECT move3 from playerpokemon6")
readmove4e = sql.QueryValue("SELECT move4 from playerpokemon6")


npcmodel3 = sql.QueryValue("SELECT model FROM playerpokemon3")

npcmodel4 = sql.QueryValue("SELECT model FROM playerpokemon4")

npcmodel5 = sql.QueryValue("SELECT model FROM playerpokemon5")

npcmodel6 = sql.QueryValue("SELECT model FROM playerpokemon6")

hpr2 = sql.QueryValue("SELECT hp FROM playerpokemon2")

hpr4 = sql.QueryValue("SELECT hp FROM playerpokemon4")

hpr3 = sql.QueryValue("SELECT hp FROM playerpokemon3")

hpr5 = sql.QueryValue("SELECT hp FROM playerpokemon5")

hpr6 = sql.QueryValue("SELECT hp FROM playerpokemon6")
healthtable = {}

end)

hpr4 = sql.QueryValue("SELECT hp FROM playerpokemon4")

hpr3 = sql.QueryValue("SELECT hp FROM playerpokemon3")

hpr5 = sql.QueryValue("SELECT hp FROM playerpokemon5")

hpr6 = sql.QueryValue("SELECT hp FROM playerpokemon6")

concommand.Add("rz1", function(ply)
ply:ChatPrint("Bulbasaur learned Razor Leaf")
sql.Query("Update playerpokemon SET move1 = 'rzl'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("rz2", function(ply)
ply:ChatPrint("Bulbasaur learned Razor Leaf")
sql.Query("Update playerpokemon SET move2 = 'rzl'")
readmove2 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("rz3", function(ply)
ply:ChatPrint("Bulbasaur learned Razor Leaf")
sql.Query("Update playerpokemon SET move3 = 'rzl'")
readmove1 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("rz4", function(ply)
ply:ChatPrint("Bulbasaur learned Razor Leaf")
sql.Query("Update playerpokemon SET move4 = 'rzl'")
readmove4 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("gw1", function(ply)
ply:ChatPrint("Bulbasaur learned Growth")
sql.Query("Update playerpokemon SET move1 = 'growth'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("gw2", function(ply)
ply:ChatPrint("Bulbasaur learned Growth")
sql.Query("Update playerpokemon SET move2 = 'growth'")
readmove2 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("gw3", function(ply)
ply:ChatPrint("Bulbasaur learned Growth")
sql.Query("Update playerpokemon SET move3 = 'gw3'")
readmove1 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("gw4", function(ply)
ply:ChatPrint("Bulbasaur learned Growth")
sql.Query("Update playerpokemon SET move4 = 'growth'")
readmove4 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("dd1", function(ply)
ply:ChatPrint("Bulbasaur learned Double Edge")
sql.Query("Update playerpokemon SET move1 = 'Double Edge'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("dd2", function(ply)
ply:ChatPrint("Bulbasaur learned Double Edge")
sql.Query("Update playerpokemon SET move2 = 'Double Edge'")
readmove2 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("dd3", function(ply)
ply:ChatPrint("Bulbasaur learned Double Edge")
sql.Query("Update playerpokemon SET move3 = 'Double Edge'")
readmove1 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
npcmodel = sql.QueryValue( "SELECT model from playerpokemon" )
hpr = sql.QueryValue("SELECT hp FROM playerpokemon")
printhp = sql.QueryValue("SELECT hp from playerpokemon")
printlvl = sql.QueryValue("SELECT level from playerpokemon")
printexp = sql.QueryValue("SELECT EXP from playerpokemon")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
readpbs = sql.QueryValue("SELECT pokeball FROM playerinventory")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

concommand.Add("dd4", function(ply)
ply:ChatPrint("Bulbasaur learned Double Edge")
sql.Query("Update playerpokemon SET move4 = 'Double Edge'")
readmove4 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end)

concommand.Add("givemoney", function(ply)
readmone = sql.QueryValue("SELECT money FROM playermoney")
sql.Query("Update playermoney SET money='"..readmone + 100 .."'")
ply:ChatPrint("Money + 100")
end)

concommand.Add("fainthook", function(ply)
hook.Add( "Think", "Another unique nameV", function()
if ply:Health() < 0 then
table.remove(healthtable, 1)
table.insert(healthtable, 1, LocalPlayer():Health())
RunConsoleCommand("returnpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("removehud")
RunConsoleCommand("firstperson")
ply:ChatPrint("Your pokemon has fainted.")
hook.Remove( "Think", "Another unique nameV" )end
end )
end)

concommand.Add("printhealthtable", function()
PrintTable(healthtable)
end)

concommand.Add("pt4", function()
pq1 = sql.Query( "SELECT * FROM playerquests" )
PrintTable(pq1)
end)

concommand.Add("deletetables2", function()
sql.Query("DROP TABLE playerquests")
end)

concommand.Add("givemoney2", function(ply)
readmone = sql.QueryValue("SELECT money FROM playermoney")
sql.Query("Update playermoney SET money='"..readmone + 500 .."'")
readmone = sql.QueryValue("SELECT money FROM playermoney")
end)

local mat = Material( "decals/smile" )
concommand.Add("paintdecal", function(ply)
hook.Add( "PostDrawOpaqueRenderables", "example", function()


cam.Start3D2D( Vector(ply:GetPos().x, ply:GetPos().y, ply:GetPos().z + 10), Angle(45, ply:GetAngles().y, ply:GetAngles().z), 1 )

surface.SetDrawColor( color_white )
surface.SetMaterial( mat )

surface.DrawTexturedRect( 0, 0, 50, 25 )


cam.End3D2D()
end )
end)

concommand.Add("paintdecal2", function(ply)
ply:GetEyeTrace().Entity:ConCommand("paintdecal")
end)

concommand.Add("setplyvar", function(ply)
ply:SetVar("10", 10)
print(ply:GetVar("10"))
end)

concommand.Add("learnmovederma6", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Charmander wants to learn Dragon Rage, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move1 = 'Dragon Rage'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma7", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Charmander wants to learn Scary Face, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Scary Face")
sql.Query("Update playerpokemon SET move1 = 'Scary Face'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma8", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Charmander wants to learn Fire Fang, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Scary Face")
sql.Query("Update playerpokemon SET move1 = 'Fire Fang'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma8", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Charmander wants to learn Flame Burst, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Flame Burst")
sql.Query("Update playerpokemon SET move1 = 'Flame Burst'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma9", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Charmander wants to learn Flame Burst, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Flame Burst")
sql.Query("Update playerpokemon SET move1 = 'Flame Burst'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma10", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Charmander wants to learn Slash, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Flame Burst")
sql.Query("Update playerpokemon SET move1 = 'Slash'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma10", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Charmizard wants to learn Flamethrower, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Flame Burst")
sql.Query("Update playerpokemon SET move1 = 'Flame Burst'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma11", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Squirtle wants to learn Bite, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Squirtle learned Bite")
sql.Query("Update playerpokemon SET move1 = 'Bite'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma12", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Squirtle wants to learn Rapid Spin, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Squirtle learned Rapid Spin")
sql.Query("Update playerpokemon SET move1 = 'Rapid Spin'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma13", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Squirtle wants to learn Protect, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Squirtle learned Protect")
sql.Query("Update playerpokemon SET move1 = 'protect'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma14", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Squirtle wants to learn Water Pulse, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Squirtle learned water pulse")
sql.Query("Update playerpokemon SET move1 = 'water pulse'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma15", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Squirtle wants to learn Water tail, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Squirtle learned Water tail")
sql.Query("Update playerpokemon SET move1 = 'Water tail'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma16", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Squirtle wants to learn Water tail, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Squirtle learned Water tail")
sql.Query("Update playerpokemon SET move1 = 'Water tail'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move2 = 'Dragon Rage'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move3 = 'Dragon Rage'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Charmander learned Dragon Rage")
sql.Query("Update playerpokemon SET move4 = 'Dragon Rage'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma17", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Squirtle wants to learn Worry Seed, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Bulbasaur learned Worry Seed")
sql.Query("Update playerpokemon SET move1 = 'Worry Seed'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Bulbasaur learned Worry Seed")
sql.Query("Update playerpokemon SET move2 = 'Worry Seed'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Bulbasaur learned Worry Seed")
sql.Query("Update playerpokemon SET move3 = 'Worry Seed'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("bulbasaur learned DWorry Seed")
sql.Query("Update playerpokemon SET move4 = 'Worry Seed'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma18", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Venusaur wants to learn Synthesis, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Venusaur learned Worry Seed")
sql.Query("Update playerpokemon SET move1 = 'Synthesis'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Venusaur learned Worry Seed")
sql.Query("Update playerpokemon SET move2 = 'Synthesis'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Venusaur learned Worry Seed")
sql.Query("Update playerpokemon SET move3 = 'Synthesis'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Venusaur learned Synthesis")
sql.Query("Update playerpokemon SET move4 = 'Worry Seed'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma19", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Venusaur wants to learn Petal Blizzard, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Venusaur learned Petal Blizzard")
sql.Query("Update playerpokemon SET move1 = 'Synthesis'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Venusaur learned Worry Seed")
sql.Query("Update playerpokemon SET move2 = 'Petal Blizzard'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Venusaur learned Worry Seed")
sql.Query("Update playerpokemon SET move3 = 'Petal Blizzard'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Venusaur learned Synthesis")
sql.Query("Update playerpokemon SET move4 = 'Petal Blizzard'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("learnmovederma20", function(ply)

local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH() / 2, ScrW() / 2 )
Frame:SetSize( 900, 300 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local richtext = vgui.Create( "RichText", Frame )
richtext:Dock( FILL )

richtext:InsertColorChange( 192, 192, 192, 255 )
richtext:AppendText( "Venusaur wants to learn Solar Beam, but can't learn more than four moves. Which move should be deleted?" )

local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton:SetText( readmove1 ) /  / Set the text on the button
DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
DermaButton:SetSize( 150, 90 )
function DermaButton:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Venusaur learned Solar Beam")
sql.Query("Update playerpokemon SET move1 = 'Solar Beam'")
readmove1 = sql.QueryValue("SELECT move1 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton2:SetText( readmove2 ) /  / Set the text on the button
DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
DermaButton2:SetSize( 150, 90 )
function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
ply:ChatPrint("Venusaur learned Solar Beam")
sql.Query("Update playerpokemon SET move2 = 'Solar Beam'")
readmove2 = sql.QueryValue("SELECT move2 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui")
end

local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton3:SetText( readmove3 ) /  / Set the text on the button
DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
DermaButton3:SetSize( 150, 90 )

function DermaButton3:DoClick()
ply:ChatPrint("Venusaur learned Solar Beam")
sql.Query("Update playerpokemon SET move3 = 'Solar Beam'")
readmove3 = sql.QueryValue("SELECT move3 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
DermaButton4:SetText( readmove4 ) /  / Set the text on the button
DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
DermaButton4:SetSize( 150, 90 )

function DermaButton4:DoClick()
ply:ChatPrint("Venusaur learned Solar Beam")
sql.Query("Update playerpokemon SET move4 = 'Solar Beam'")
readmove4 = sql.QueryValue("SELECT move4 from playerpokemon")
RunConsoleCommand("closemovesvgui")
RunConsoleCommand("movesvgui") -- Defines what should happen when the label is clicked
end

end)

concommand.Add("minimap", function()

local frame = vgui.Create( 'DFrame' )
frame:SetSize( 200, 100 )
frame:SetPos(ScrW() / 8, ScrH() / 1.3)
frame:MakePopup()
frame:SetTitle("")

function frame:Paint( w, h )

local x, y = self:GetPos()

render.RenderView( {
origin = Vector( 0, 0, 0 ), -- change to your liking
angles = Angle( 0, 0, 0 ), -- change to your liking
x = x,
y = y,
w = w,
h = h,
} )

end

end)
