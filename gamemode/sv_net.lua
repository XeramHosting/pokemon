util.AddNetworkString( "sendp1" )
util.AddNetworkString( "sendp2" )
util.AddNetworkString( "sendp3" )
util.AddNetworkString( "sendp4" )
util.AddNetworkString( "sendp5" )
util.AddNetworkString( "sendp6" )
util.AddNetworkString( "sendp7" )
util.AddNetworkString( "sendp8" )
util.AddNetworkString( "sendp9" )
util.AddNetworkString( "sendp10" )
util.AddNetworkString( "sendp11" )
util.AddNetworkString( "sendp12" )
util.AddNetworkString( "sendp13" )
concommand.Add("sendforp1", function(ply)
  local p1 = sql.QueryValue("SELECT model from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp1" )
    net.WriteString(p1)
    net.Send(ply)
  end

  local p2 = sql.QueryValue("SELECT hp from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp2" )
    net.WriteString(p2)
    net.Send(ply)
  end

  local p3 = sql.QueryValue("SELECT atk from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp3" )
    net.WriteString(p3)
    net.Send(ply)
  end

  local p4 = sql.QueryValue("SELECT def from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp4" )
    net.WriteString(p4)
    net.Send(ply)
  end

  local p5 = sql.QueryValue("SELECT spatk from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp5" )
    net.WriteString(p5)
    net.Send(ply)
  end

  local p6 = sql.QueryValue("SELECT spdef from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp6" )
    net.WriteString(p6)
    net.Send(ply)
  end

  local p7 = sql.QueryValue("SELECT spd from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp7" )
    net.WriteString(p7)
    net.Send(ply)
  end

  local p8 = sql.QueryValue("SELECT move1 from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp8" )
    net.WriteString(p8)
    net.Send(ply)
  end

  local p9 = sql.QueryValue("SELECT move2 from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp9" )
    net.WriteString(p9)
    net.Send(ply)
  end

  local p10 = sql.QueryValue("SELECT move3 from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp10" )
    net.WriteString(p10)
    net.Send(ply)
  end

  local p11 = sql.QueryValue("SELECT move4 from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp11" )
    net.WriteString(p11)
    net.Send(ply)
  end

  local p12 = sql.QueryValue("SELECT exp from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp12" )
    net.WriteString(p12)
    net.Send(ply)
  end

  local p13 = sql.QueryValue("SELECT level from playerpokemon")
  if sql.TableExists("playerpokemon") then
    net.Start( "sendp13" )
    net.WriteString(p13)
    net.Send(ply)
  end
end)


util.AddNetworkString( "sendmon" )
concommand.Add("sendmon", function(ply)
  if sql.TableExists("playermoney") then
  local pkdollars = sql.QueryValue("SELECT money from playermoney")
  net.Start( "sendmon" )
  net.WriteString(pkdollars)
  net.Send(ply)
end
end)

util.AddNetworkString( "sendinv" )
concommand.Add("sendinv", function(ply)
if sql.TableExists("playerinventory") then
local pkballs = sql.QueryValue("SELECT pokeball from playerinventory")
net.Start( "sendinv" )
net.WriteString(pkballs)
net.Send(ply)

end
end)

util.AddNetworkString("netsendmove1")
concommand.Add("sendmove1", function(ply)
if sql.TableExists("playerpokemon") then
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
local printm1 = sql.QueryValue("SELECT move1 from playerpokemon WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."' ")
net.Start( "netsendmove1" )
net.WriteString(printm1)
net.Send(ply)
end
end)

util.AddNetworkString("netsendmove2")
concommand.Add("sendmove2", function(ply)
if sql.TableExists("playerpokemon") then
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
local printm2 = sql.QueryValue("SELECT move2 from playerpokemon WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
net.Start( "netsendmove2" )
net.WriteString(printm2)
net.Send(ply)
end
end)

util.AddNetworkString("netsendmove3")
concommand.Add("sendmove3", function(ply)
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
if sql.TableExists("playerpokemon") then
local printm3 = sql.QueryValue("SELECT move3 from playerpokemon WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."' ")
net.Start( "netsendmove3" )
net.WriteString(printm3)
net.Send(ply)
end
end)

util.AddNetworkString("netsendmove4")
concommand.Add("sendmove4", function(ply)
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
if sql.TableExists("playerpokemon") then
local printm4 = sql.QueryValue("SELECT move4 from playerpokemon WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
net.Start( "netsendmove4" )
net.WriteString(printm4)
net.Send(ply)
end
end)

util.AddNetworkString("netbhealth")
concommand.Add("sendbhelth", function(ply)
if sql.TableExists("playerpokemon") then
local printhp = sql.QueryValue("SELECT hp from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
net.Start( "netbhealth" )
net.WriteString(printhp)
net.Send(ply)
ply:ChatPrint(printhp)
end
end)

util.AddNetworkString("netbhealth")
concommand.Add("sendbhelth", function(ply)
if sql.TableExists("playerpokemon") then
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
--local printhp = sql.QueryValue("SELECT hp from playerpokemon WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
net.Start( "netbhealth" )
net.WriteString(printhp)
net.Send(ply)

end
end)

util.AddNetworkString("netsendxp")
concommand.Add("sendxp", function(ply)
if sql.TableExists("playerpokemon") then
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
local printexp = sql.QueryValue("SELECT EXP from playerpokemon WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
net.Start( "netsendxp" )
net.WriteString(printexp)
net.Send(ply)
end
end)

util.AddNetworkString("netsendlvl")
concommand.Add("sendlvl", function(ply)
if sql.TableExists("playerpokemon") then
local plpkmn = sql.QueryValue("SELECT model from playerpokemon WHERE steamid = '"..ply:SteamID().."'")
local printlvl = sql.QueryValue("SELECT level from playerpokemon WHERE steamid = '"..ply:SteamID().."' and model = '"..plpkmn.."'")
net.Start( "netsendlvl" )
net.WriteString(printlvl)
net.Send(ply)
end
end)

util.AddNetworkString( "testnd" )
concommand.Add("sendn", function(ply)
tnet = sql.TableExists("playerpokemon")
net.Start( "testnd" )
net.WriteBool(tnet)
net.Send(ply)
end)
