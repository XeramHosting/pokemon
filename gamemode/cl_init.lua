include( 'shared.lua' )
include('cl_profderma.lua')
include('cl_moves.lua')
include('cl_shopderma.lua')

concommand.Add("savehptest", function()
print(table.concat(healthtable,1,1))
end)

testhook = 1
function DrawName( ply )
if testhook == 1 then
RunConsoleCommand("firstperson")
testhook = 0
end
end


local function MyMenu()
if tonumber(sql.QueryValue("SELECT quest2 FROM playerquests")) == 0 and tonumber(sql.QueryValue("SELECT quest1 FROM playerquests")) == 3 then
sql.Query("UPDATE playerquests SET quest2 = 1")
end
if sql.TableExists("playerpokemon") then
local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH()/2, ScrW()/2 )
Frame:SetSize( 1000, 250 )
Frame:SetTitle( "Pokemon" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()
	
local Panel = vgui.Create( "DPanel", Frame )
Panel:SetPos( 0, 25 )
Panel:SetSize( 164, 150 )

local icon = vgui.Create( "DModelPanel", Panel )
icon:SetSize( 150, 125 )
icon:SetModel( npcmodel )

local Panel2 = vgui.Create( "DPanel", Frame )
Panel2:SetPos( 165, 25 )
Panel2:SetSize( 164, 150 )

if sql.TableExists("playerpokemon2") then
local icon = vgui.Create( "DModelPanel", Panel2 )
icon:SetSize( 150, 125 )
icon:SetModel( npcmodel2 )

local DProgress = vgui.Create( "DProgress", Frame )
DProgress:SetPos( 167, 230 )
DProgress:SetSize( 170, 20 )

DProgress:SetFraction( hpr2/hpr2 ) 
 
local nmb100 = LocalPlayer():Health()
local nmb200 = (""..hpr2.."/"..hpr2 .."" )

local DLabel = vgui.Create( "DLabel", Frame )
DLabel:SetPos( 230, 210 )
DLabel:SetColor(Color(0,255,100,255))
DLabel:SetText( nmb200)

local Button = vgui.Create( "DButton", Frame )
Button:SetText( "Return!" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( 250, 170 )
Button:SetSize(85, 30 )
Button.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
	end
	Button.DoClick = function()
	RunConsoleCommand("returnpokemon")
	RunConsoleCommand("closemovesvgui")
	RunConsoleCommand("removehud")
	RunConsoleCommand("firstperson")
end
	
	local Button2 = vgui.Create( "DButton", Frame )
Button2:SetText( "Go!" )
Button2:SetTextColor( Color( 255, 255, 255 ) )
Button2:SetPos( 165, 170 )
Button2:SetSize(85, 30 )
Button2.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 128, 41, 185, 250 ) )
	end
		Button2.DoClick = function()
		RunConsoleCommand("resendvariables")
		RunConsoleCommand("spawnkleiner")
RunConsoleCommand("spawnkleiner6")
RunConsoleCommand("movesvgui2")
RunConsoleCommand("thirdperson")

end
end

local Panel3 = vgui.Create( "DPanel", Frame )
Panel3:SetPos( 330, 25 )
Panel3:SetSize( 164, 150 )

if sql.TableExists("playerpokemon3") then
local DProgress = vgui.Create( "DProgress", Frame )
DProgress:SetPos( 167*2, 230 )
DProgress:SetSize( 170, 20 )

DProgress:SetFraction( hpr3/hpr3 ) 
 
local nmb100 = LocalPlayer():Health()
local nmb200 = (""..hpr3.."/"..hpr3 .."" )

local DLabel = vgui.Create( "DLabel", Frame )
DLabel:SetPos( 400, 210 )
DLabel:SetColor(Color(0,255,100,255))
DLabel:SetText( nmb200)

local icon = vgui.Create( "DModelPanel", Panel3 )
icon:SetSize( 150, 125 )
icon:SetModel( npcmodel3 )

local Button = vgui.Create( "DButton", Frame )
Button:SetText( "Return!" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( 415, 170 )
Button:SetSize(85, 30 )
Button.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
	end
	
		Button.DoClick = function()
	RunConsoleCommand("resendvariables")
	RunConsoleCommand("returnpokemon")
	RunConsoleCommand("closemovesvgui")
	RunConsoleCommand("removehud")
	RunConsoleCommand("firstperson")
end
	
		local Button2 = vgui.Create( "DButton", Frame )
Button2:SetText( "Go!" )
Button2:SetTextColor( Color( 255, 255, 255 ) )
Button2:SetPos( 330, 170 )
Button2:SetSize(85, 30 )
Button2.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 128, 41, 185, 250 ) )
	end
	
			Button2.DoClick = function()
		RunConsoleCommand("spawnkleiner")
RunConsoleCommand("spawnkleiner6a")
RunConsoleCommand("movesvgui2")
RunConsoleCommand("thirdperson")


end
	
end

local Panel4 = vgui.Create( "DPanel", Frame )
Panel4:SetPos( 495, 25 )
Panel4:SetSize( 164, 150 )

if sql.TableExists("playerpokemon4") then
local icon = vgui.Create( "DModelPanel", Panel4 )
icon:SetSize( 150, 125 )
icon:SetModel( npcmodel4 )
--**
local DProgress = vgui.Create( "DProgress", Frame )
DProgress:SetPos( 167*3, 230 )
DProgress:SetSize( 170, 20 )

DProgress:SetFraction( hpr4/hpr4 ) 
 
local nmb100 = LocalPlayer():Health()
local nmb200 = (""..hpr4.."/"..hpr4 .."" )

local DLabel = vgui.Create( "DLabel", Frame )
DLabel:SetPos( 570, 210 )
DLabel:SetColor(Color(0,255,100,255))
DLabel:SetText( nmb200)
--**
local icon = vgui.Create( "DModelPanel", Panel3 )
icon:SetSize( 150, 125 )
icon:SetModel( npcmodel3 )

		local Button2 = vgui.Create( "DButton", Frame )
Button2:SetText( "Go!" )
Button2:SetTextColor( Color( 255, 255, 255 ) )
Button2:SetPos( 495, 170 )
Button2:SetSize(85, 30 )
Button2.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 128, 41, 185, 250 ) )
	end
	
				Button2.DoClick = function()
				RunConsoleCommand("resendvariables")
		RunConsoleCommand("spawnkleiner")
RunConsoleCommand("spawnkleiner6b")
RunConsoleCommand("movesvgui2")
RunConsoleCommand("thirdperson")

end
	
	local Button = vgui.Create( "DButton", Frame )
Button:SetText( "Return!" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( 575, 170 )
Button:SetSize(85, 30 )
Button.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
	end
	
			Button.DoClick = function()
	RunConsoleCommand("returnpokemon")
	RunConsoleCommand("closemovesvgui")
	RunConsoleCommand("removehud")
	RunConsoleCommand("firstperson")
	--
end
end

local Panel5 = vgui.Create( "DPanel", Frame )
Panel5:SetPos( 660, 25 )
Panel5:SetSize( 164, 150 )

if sql.TableExists("playerpokemon5") then



local DProgress = vgui.Create( "DProgress", Frame )
DProgress:SetPos( 167*4, 230 )
DProgress:SetSize( 170, 20 )

DProgress:SetFraction( hpr5/hpr5 ) 
 
local nmb100 = LocalPlayer():Health()
local nmb200 = (""..hpr5.."/"..hpr5 .."" )

local DLabel = vgui.Create( "DLabel", Frame )
DLabel:SetPos( 700, 210 )
DLabel:SetColor(Color(0,255,100,255))
DLabel:SetText( nmb200)



local icon = vgui.Create( "DModelPanel", Panel5 )
icon:SetSize( 150, 125 )
icon:SetModel( npcmodel5 )

		local Button2 = vgui.Create( "DButton", Frame )
Button2:SetText( "Go!" )
Button2:SetTextColor( Color( 255, 255, 255 ) )
Button2:SetPos( 660, 170 )
Button2:SetSize(85, 30 )
Button2.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 128, 41, 185, 250 ) )
	end

					Button2.DoClick = function()
					RunConsoleCommand("resendvariables")
		RunConsoleCommand("spawnkleiner")
RunConsoleCommand("spawnkleiner6c")
RunConsoleCommand("movesvgui2")
RunConsoleCommand("thirdperson")

end
	
		local Button = vgui.Create( "DButton", Frame )
Button:SetText( "Return!" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( 745, 170 )
Button:SetSize(85, 30 )
Button.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
	end
end

local Panel6 = vgui.Create( "DPanel", Frame )
Panel6:SetPos( 825, 25 )
Panel6:SetSize( 164, 150 )

if sql.TableExists("playerpokemon6") then






local DProgress = vgui.Create( "DProgress", Frame )
DProgress:SetPos( 167*5, 230 )
DProgress:SetSize( 170, 20 )

DProgress:SetFraction( hpr6/hpr6 ) 
 
local nmb100 = LocalPlayer():Health()
local nmb200 = (""..hpr6.."/"..hpr6 .."" )

local DLabel = vgui.Create( "DLabel", Frame )
DLabel:SetPos( 900, 210 )
DLabel:SetColor(Color(0,255,100,255))
DLabel:SetText( nmb200)






local icon = vgui.Create( "DModelPanel", Panel6 )
icon:SetSize( 150, 125 )
icon:SetModel( npcmodel6 )

	local Button = vgui.Create( "DButton", Frame )
Button:SetText( "Return!" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( 910, 170 )
Button:SetSize(85, 30 )
Button.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
	end

		local Button2 = vgui.Create( "DButton", Frame )
Button2:SetText( "Go!" )
Button2:SetTextColor( Color( 255, 255, 255 ) )
Button2:SetPos( 825, 170 )
Button2:SetSize(85, 30 )
Button2.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 128, 41, 185, 250 ) )
	end
	
					Button2.DoClick = function()
					RunConsoleCommand("resendvariables")
		RunConsoleCommand("spawnkleiner")
RunConsoleCommand("spawnkleiner6d")
RunConsoleCommand("movesvgui2")
RunConsoleCommand("thirdperson")
end
end

local Button4 = vgui.Create( "DButton", Frame )
Button4:SetText( "Return!" )
Button4:SetTextColor( Color( 255, 255, 255 ) )
Button4:SetPos( 80, 170 )
Button4:SetSize(85, 30 )
Button4.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
	end
	Button4.DoClick = function()
	table.remove(healthtable,1)
	table.insert(healthtable,1,LocalPlayer():Health())
	RunConsoleCommand("returnpokemon")
	RunConsoleCommand("closemovesvgui")
	RunConsoleCommand("removehud")
	RunConsoleCommand("firstperson")
	
end
	
	local Button3 = vgui.Create( "DButton", Frame )
Button3:SetText( "Go!" )
Button3:SetTextColor( Color( 255, 255, 255 ) )
Button3:SetPos( 0, 170 )
Button3:SetSize(85, 30 )
Button3.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 128, 41, 185, 250 ) )
	end
		Button3.DoClick = function()
		RunConsoleCommand("resendvariables")
		if table.HasValue( healthtable ) then 
		for k,v in pairs(healthtable) do
		if tonumber(v) < 0 then LocalPlayer():ChatPrint("This pokemon has fainted.") else
		RunConsoleCommand("fainthook")
RunConsoleCommand("resendvariables")
RunConsoleCommand("spawnkleiner")
RunConsoleCommand("spawnkleiner2")
RunConsoleCommand("sendage1")
RunConsoleCommand("sethpnow")
RunConsoleCommand("movesvgui")
LocalPlayer():SetNWInt( 'whatpokemon', 1 )
--1

if tonumber(sql.QueryValue("SELECT quest2 FROM playerquests")) == 1 then
sql.Query("UPDATE playerquests SET quest2 = 2")
end
end
end else
		RunConsoleCommand("fainthook")
RunConsoleCommand("resendvariables")
RunConsoleCommand("spawnkleiner")
RunConsoleCommand("spawnkleiner2")
RunConsoleCommand("sendage1")
RunConsoleCommand("sethpnow")
RunConsoleCommand("movesvgui")
LocalPlayer():SetNWInt( 'whatpokemon', 1 )

if tonumber(sql.QueryValue("SELECT quest2 FROM playerquests")) == 1 then
sql.Query("UPDATE playerquests SET quest2 = 2")
RunConsoleCommand("closequest2")
end

end
end

	if table.getn( healthtable ) == 1 then
local DProgress = vgui.Create( "DProgress", Frame )
DProgress:SetPos( 0, 230 )
DProgress:SetSize( 170, 20 )

DProgress:SetFraction( tonumber(table.concat(healthtable,1,1))/hpr ) 
 
local nmb100 = LocalPlayer():Health()
local nmb200 = (""..nmb100.."/"..hpr .."" )

local DLabel = vgui.Create( "DLabel", Frame )
DLabel:SetPos( 70, 210 )
DLabel:SetColor(Color(0,255,100,255))
DLabel:SetText( nmb200) else

local DProgress = vgui.Create( "DProgress", Frame )
DProgress:SetPos( 0, 230 )
DProgress:SetSize( 170, 20 )

DProgress:SetFraction( hpr/hpr ) 
 
local nmb100 = LocalPlayer():Health()
local nmb200 = (""..hpr.."/"..hpr .."" )

local DLabel = vgui.Create( "DLabel", Frame )
DLabel:SetPos( 70, 210 )
DLabel:SetColor(Color(0,255,100,255))
DLabel:SetText( nmb200)
end 
end

	end
	
	net.Receive( "sendinv", function()
readballs = net.ReadString() 
end )
	
local function MyMenu2()
local Frame = vgui.Create( "DFrame" )
Frame:SetPos( ScrH(), ScrW()/2 )
Frame:SetSize( 1000, 500 )
Frame:SetTitle( "Backpack" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local icon = vgui.Create( "DModelPanel", Frame )
icon:SetPos( 0, 20 )
icon:SetSize( 100,100 )
icon:SetModel( "models/rtbmodels/pokemon/items/pokeball_large.mdl" )
function icon:LayoutEntity( Entity ) return end 
local mn, mx = icon.Entity:GetRenderBounds()
local size = 0
size = math.max( size, math.abs( mn.x ) + math.abs( mx.x ) )
size = math.max( size, math.abs( mn.y ) + math.abs( mx.y ) )
size = math.max( size, math.abs( mn.z ) + math.abs( mx.z ) )

icon:SetFOV( 45 )
icon:SetCamPos( Vector( size, size, size ) )
icon:SetLookAt( ( mn + mx ) * 0.5 )

function icon:DoClick()
RunConsoleCommand("equipball")
Frame:Close()
end

local richtext = vgui.Create( "RichText", icon)
richtext:InsertColorChange(0, 0, 0, 255 )
richtext:AppendText( "x"..readpbs.."" )
richtext:SetPos(70,70 )
richtext:SetVerticalScrollbarEnabled( false)
end
	
net.Receive( "sendp1", function()
readp1 = net.ReadString() 
end )	

net.Receive( "sendp2", function()
readp2 = net.ReadString() 
end )	

net.Receive( "sendp3", function()
readp3 = net.ReadString() 
end )	

net.Receive( "sendp4", function()
readp4 = net.ReadString() 
end )	

net.Receive( "sendp5", function()
readp5 = net.ReadString() 
end )	

net.Receive( "sendp6", function()
readp6 = net.ReadString() 
end )	

net.Receive( "sendp7", function()
readp7 = net.ReadString() 
end )	

net.Receive( "sendp8", function()
readp8 = net.ReadString() 
end )

net.Receive( "sendp9", function()
readp9 = net.ReadString() 
end )	

net.Receive( "sendp10", function()
readp10 = net.ReadString() 
end )	

net.Receive( "sendp11", function()
readp11 = net.ReadString() 
end )	

net.Receive( "sendp12", function()
readp12 = net.ReadString() 
end )	

net.Receive( "sendp13", function()
readp13 = net.ReadString() 
end )	
	
local function MyMenu3()
if sql.TableExists("playerpokemon") then
RunConsoleCommand("sendforp1")
local Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, 0 )
Frame:SetSize( ScrW(), ScrH())
Frame:SetTitle( "Pokemon" )
Frame:SetVisible( true )
Frame:SetDraggable( true )
Frame:ShowCloseButton( true )
Frame:Center()
Frame:MakePopup()

local sheet = vgui.Create( "DPropertySheet", Frame )
sheet:Dock( FILL )

local panel1 = vgui.Create( "DPanel", sheet )
panel1.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 155, 155, 155 ) ) end
sheet:AddSheet( "            1          ", panel1 )
--*
if sql.TableExists("playerpokemon2") then
local panel2 = vgui.Create( "DPanel", sheet )
panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 155,155, 155 ) ) end
sheet:AddSheet( "            2           ", panel2 )

local icon = vgui.Create( "DModelPanel", panel2 )
icon:SetPos( 30, 70 )
icon:SetSize( 500,500 )
icon:SetModel(npcmodel2)

surface.CreateFont( "TheDefaultSettings2", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

if readp1 == "models/rtbmodels/pokemon/charizard.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charizard" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/bulbasaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Bulbasaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/venusaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Venusaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/squirtle.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Squirtle" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/blastoise.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Blastoise" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/charmander.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charmander" )
DLabel:SetFont("TheDefaultSettings2")
end

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 250, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( "EXP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 300, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( ""..printexp.."/"..printexp^3 .."" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "HP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( hpr2 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1atka )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1defa )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spatka )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdefa )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SPD" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spda )
DLabel2:SetFont("TheDefaultSettings2")

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 500, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

print(readmove1)

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove1a )
DLabel2:SetFont("TheDefaultSettings2")

if readmove1 == "tackle" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "50" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove1 == "scratch" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 750, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove2a )
DLabel2:SetFont("TheDefaultSettings2")

if readmove2 == "growl" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp9 == "tail whip" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1000, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")
print(readp10)
if readmove3 == "Water Gun" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( readmove3a )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove3a == "vinewipm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,0))
DLabel2:SetText( "Vine Whip" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "45" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1250, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

if readmove4a == "poisonpowderm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,0,155))
DLabel2:SetText( "Poison Powder")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp11 == "withdraw" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,155,155))
DLabel2:SetText( "Withdraw")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end
end

if sql.TableExists("playerpokemon3") then
local panel2 = vgui.Create( "DPanel", sheet )
panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 155,155, 155 ) ) end
sheet:AddSheet( "            3           ", panel2 )

local icon = vgui.Create( "DModelPanel", panel2 )
icon:SetPos( 30, 70 )
icon:SetSize( 500,500 )
icon:SetModel(npcmodel3)

surface.CreateFont( "TheDefaultSettings2", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

if readp1 == "models/rtbmodels/pokemon/charizard.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charizard" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/bulbasaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Bulbasaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/venusaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Venusaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/squirtle.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Squirtle" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/blastoise.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Blastoise" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/charmander.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charmander" )
DLabel:SetFont("TheDefaultSettings2")
end

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 250, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( "EXP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 300, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( ""..printexp.."/"..printexp^3 .."" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "HP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( hpr3 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1atkb )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1defb )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spatkb )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdefb )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SPD" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdb )
DLabel2:SetFont("TheDefaultSettings2")

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 500, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

print(readmove1)

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove1b )
DLabel2:SetFont("TheDefaultSettings2")

if readmove1 == "tackle" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "50" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove1b == "scratch" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 750, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove2b )
DLabel2:SetFont("TheDefaultSettings2")

if readmove2b == "growl" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp9 == "tail whip" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1000, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")
print(readp10)
if readmove3b == "Water Gun" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( readp10 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove3b == "vinewipm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,0))
DLabel2:SetText( "Vine Whip" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "45" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1250, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

if readmove4b == "poisonpowderm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,0,155))
DLabel2:SetText( "Poison Powder")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp11 == "withdraw" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,155,155))
DLabel2:SetText( "Withdraw")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

end

if sql.TableExists("playerpokemon4") then
local panel2 = vgui.Create( "DPanel", sheet )
panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 155,155, 155 ) ) end
sheet:AddSheet( "            4           ", panel2 )

local icon = vgui.Create( "DModelPanel", panel2 )
icon:SetPos( 30, 70 )
icon:SetSize( 500,500 )
icon:SetModel(npcmodel4)

surface.CreateFont( "TheDefaultSettings2", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

if readp1 == "models/rtbmodels/pokemon/charizard.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charizard" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/bulbasaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Bulbasaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/venusaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Venusaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/squirtle.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Squirtle" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/blastoise.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Blastoise" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/charmander.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charmander" )
DLabel:SetFont("TheDefaultSettings2")
end

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 250, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( "EXP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 300, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( ""..printexp.."/"..printexp^3 .."" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "HP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( hpr4 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1atkc )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1defc )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spatkc )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdefc )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SPD" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdc )
DLabel2:SetFont("TheDefaultSettings2")

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 500, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

print(readmove1)

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove1c )
DLabel2:SetFont("TheDefaultSettings2")

if readmove1 == "tackle" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "50" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove1c == "scratch" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 750, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove2c )
DLabel2:SetFont("TheDefaultSettings2")

if readmove2c == "growl" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp9 == "tail whip" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1000, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")
print(readp10)
if readmove3c == "Water Gun" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( readp10 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove3c == "vinewipm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,0))
DLabel2:SetText( "Vine Whip" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "45" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1250, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

if readmove4c == "poisonpowderm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,0,155))
DLabel2:SetText( "Poison Powder")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp11 == "withdraw" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,155,155))
DLabel2:SetText( "Withdraw")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end
end

if sql.TableExists("playerpokemon5") then
local panel2 = vgui.Create( "DPanel", sheet )
panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 155,155, 155 ) ) end
sheet:AddSheet( "            5           ", panel2 )

local icon = vgui.Create( "DModelPanel", panel2 )
icon:SetPos( 30, 70 )
icon:SetSize( 500,500 )
icon:SetModel(npcmodel5)

surface.CreateFont( "TheDefaultSettings2", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

if readp1 == "models/rtbmodels/pokemon/charizard.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charizard" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/bulbasaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Bulbasaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/venusaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Venusaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/squirtle.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Squirtle" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/blastoise.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Blastoise" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/charmander.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charmander" )
DLabel:SetFont("TheDefaultSettings2")
end

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 250, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( "EXP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 300, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( ""..printexp.."/"..printexp^3 .."" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "HP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( hpr5 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1atkd )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1defd )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spatkd )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdefd )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SPD" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdd )
DLabel2:SetFont("TheDefaultSettings2")

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 500, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

print(readmove1)

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove1d )
DLabel2:SetFont("TheDefaultSettings2")

if readmove1d == "tackle" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "50" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove1d == "scratch" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 750, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove2d )
DLabel2:SetFont("TheDefaultSettings2")

if readmove2 == "growl" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp9 == "tail whip" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1000, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")
print(readp10)
if readmove3d == "Water Gun" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( readp10 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove3d == "vinewipm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,0))
DLabel2:SetText( "Vine Whip" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "45" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1250, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

if readmove4d == "poisonpowderm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,0,155))
DLabel2:SetText( "Poison Powder")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp11 == "withdraw" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,155,155))
DLabel2:SetText( "Withdraw")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end
end

if sql.TableExists("playerpokemon5") then
local panel2 = vgui.Create( "DPanel", sheet )
panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 155,155, 155 ) ) end
sheet:AddSheet( "            6           ", panel2 )

local icon = vgui.Create( "DModelPanel", panel2 )
icon:SetPos( 30, 70 )
icon:SetSize( 500,500 )
icon:SetModel(npcmodel6)

surface.CreateFont( "TheDefaultSettings2", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

if readp1 == "models/rtbmodels/pokemon/charizard.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charizard" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/bulbasaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Bulbasaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/venusaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Venusaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/squirtle.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Squirtle" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/blastoise.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Blastoise" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/charmander.mdl" then
local DLabel = vgui.Create( "DLabel", panel2 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charmander" )
DLabel:SetFont("TheDefaultSettings2")
end

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 250, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( "EXP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 300, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( ""..printexp.."/"..printexp^3 .."" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "HP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( hpr6 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1atke )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 700, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 750, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1defe)
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spatke )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdefe )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1000, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SPD" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel2 )
DLabel2:SetPos( 1080, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spde )
DLabel2:SetFont("TheDefaultSettings2")

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 500, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

print(readmove1)

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove1e )
DLabel2:SetFont("TheDefaultSettings2")

if readmove1 == "tackle" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "50" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove1e == "scratch" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 750, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove2e )
DLabel2:SetFont("TheDefaultSettings2")

if readmove2 == "growl" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp9 == "tail whip" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1000, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")
print(readp10)
if readmove3e == "Water Gun" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( readp10 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove3e == "vinewipm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,0))
DLabel2:SetText( "Vine Whip" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "45" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel2 )
DPanel:SetPos( 1250, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

if readmove4e == "poisonpowderm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,0,155))
DLabel2:SetText( "Poison Powder")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp11 == "withdraw" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,155,155))
DLabel2:SetText( "Withdraw")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end
end
--*

local icon = vgui.Create( "DModelPanel", panel1 )
icon:SetPos( 30, 70 )
icon:SetSize( 500,500 )
icon:SetModel(npcmodel)

surface.CreateFont( "TheDefaultSettings2", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
	weight = 1000,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

if readp1 == "models/rtbmodels/pokemon/charizard.mdl" then
local DLabel = vgui.Create( "DLabel", panel1 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charizard" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/bulbasaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel1 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Bulbasaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/venusaur.mdl" then
local DLabel = vgui.Create( "DLabel", panel1 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,0))
DLabel:SetText( "Venusaur" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/squirtle.mdl" then
local DLabel = vgui.Create( "DLabel", panel1 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Squirtle" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/blastoise.mdl" then
local DLabel = vgui.Create( "DLabel", panel1 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(0,144,255))
DLabel:SetText( "Blastoise" )
DLabel:SetFont("TheDefaultSettings2")
end

if readp1 == "models/rtbmodels/pokemon/charmander.mdl" then
local DLabel = vgui.Create( "DLabel", panel1 )
DLabel:SetPos( 250, 550 )
DLabel:SetSize(100,100)
DLabel:SetColor(Color(255,144,0))
DLabel:SetText( "Charmander" )
DLabel:SetFont("TheDefaultSettings2")
end

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 250, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( "EXP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 300, 600 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( ""..printexp.."/"..printexp^3 .."" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 700, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "HP" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 750, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( printhp )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 700, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 750, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1atk )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 700, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 750, 380 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1def )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 1000, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP ATK" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 1080, 120 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spatk )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 1000, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SP DEF" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 1080, 250 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spdef )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 1000, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "SPD" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", panel1 )
DLabel2:SetPos( 1080, 380)
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(50,50,50))
DLabel2:SetText( p1spd )
DLabel2:SetFont("TheDefaultSettings2")

local DPanel = vgui.Create( "DPanel", panel1 )
DPanel:SetPos( 500, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

print(readmove1)

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove1 )
DLabel2:SetFont("TheDefaultSettings2")

if readmove1 == "tackle" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "50" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove1 == "scratch" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel1 )
DPanel:SetPos( 750, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( readmove2 )
DLabel2:SetFont("TheDefaultSettings2")

if readmove2 == "growl" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp9 == "tail whip" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel1 )
DPanel:SetPos( 1000, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")
print(readp10)
if readmove3 == "Water Gun" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,255))
DLabel2:SetText( readp10 )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "40" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readmove3 == "vinewipm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,144,0))
DLabel2:SetText( "Vine Whip" )
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "45" )
DLabel2:SetFont("TheDefaultSettings2")
end

local DPanel = vgui.Create( "DPanel", panel1 )
DPanel:SetPos( 1250, 600 ) -- Set the position of the panel
DPanel:SetSize( 200, 100 )

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 0, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "Power:" )
DLabel2:SetFont("TheDefaultSettings2")

if readmove4 == "poisonpowderm" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,0,155))
DLabel2:SetText( "Poison Powder")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end

if readp11 == "withdraw" then
local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, -10 )
DLabel2:SetSize(200,100)
DLabel2:SetColor(Color(155,155,155))
DLabel2:SetText( "Withdraw")
DLabel2:SetFont("TheDefaultSettings2")

local DLabel2 = vgui.Create( "DLabel", DPanel )
DLabel2:SetPos( 60, 40 )
DLabel2:SetSize(100,100)
DLabel2:SetColor(Color(0,0,0))
DLabel2:SetText( "--" )
DLabel2:SetFont("TheDefaultSettings2")
end
end
end
	
usermessage.Hook("MyMenu", MyMenu)
usermessage.Hook("MyMenu2", MyMenu2)
usermessage.Hook("MyMenu3", MyMenu3)

concommand.Add("movesvgui", function()

if readmove3 == "move3" then
readmove3 = "" end

if readmove4 == "move4" then
readmove4 = "" end

if readmove3 == "vinewipm" then
readmove3 = "vinewip" end

if readmove4 == "poisonpowderm" then
readmove4 = "poison powder" end

if ( IsValid( DermaFrame ) ) then else
if ( IsValid( DermaFrame2 ) ) then else
if ( IsValid( DermaFrame3 ) ) then else
if ( IsValid( DermaFrame4 ) ) then else
 DermaFrame = vgui.Create( "DFrame" )
DermaFrame:SetPos( ScrW()/2-200, ScrH()/2-1000 )
DermaFrame:SetSize( 100, 50 )
DermaFrame:SetTitle( "" )
DermaFrame:SetVisible( true )
DermaFrame:SetDraggable(false)
DermaFrame:ShowCloseButton(false)


local richtext = vgui.Create( "RichText", DermaFrame )
richtext:SetText( readmove1 )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()

 DermaFrame2 = vgui.Create( "DFrame" )
DermaFrame2:SetPos( ScrW()/2-100, ScrH()/2-1000 )
DermaFrame2:SetSize( 100, 50 )
DermaFrame2:SetTitle( "" )
DermaFrame2:SetVisible( true )
DermaFrame2:SetDraggable(false)
DermaFrame2:ShowCloseButton(false)

local richtext = vgui.Create( "RichText", DermaFrame2 )
richtext:SetText( readmove2 )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()

 DermaFrame3 = vgui.Create( "DFrame" )
DermaFrame3:SetPos( ScrW()/2, ScrH()/2-1000 )
DermaFrame3:SetSize( 100, 50 )
DermaFrame3:SetTitle( "" )
DermaFrame3:SetVisible( true )
DermaFrame3:SetDraggable(false)
DermaFrame3:ShowCloseButton(false)

local richtext = vgui.Create( "RichText", DermaFrame3 )
richtext:SetText( readmove3 )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()

 DermaFrame4 = vgui.Create( "DFrame" )
DermaFrame4:SetPos( ScrW()/2 + 100, ScrH()/2-1000 )
DermaFrame4:SetSize( 100, 50 )
DermaFrame4:SetTitle( "" )
DermaFrame4:SetVisible( true )
DermaFrame4:SetDraggable(false)
DermaFrame4:ShowCloseButton(false)

local richtext = vgui.Create( "RichText", DermaFrame4 )
richtext:SetText( readmove4 )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()


DermaFrame.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame:GetWide(), DermaFrame:GetTall(), Color( 0, 0, 0, 150 ) )
end

DermaFrame2.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame2:GetWide(), DermaFrame2:GetTall(), Color( 0, 0, 0, 150 ) )
end

DermaFrame3.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame3:GetWide(), DermaFrame3:GetTall(), Color( 0, 0, 0, 150 ) )
end

DermaFrame4.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame4:GetWide(), DermaFrame4:GetTall(), Color( 0, 0, 0, 150 ) )

end
end
end
end
end
concommand.Add("closemovesvgui",function()
if DermaFrame:IsValid() then 
DermaFrame:Close()
end
if DermaFrame2:IsValid() then 
DermaFrame2:Close()
end
if DermaFrame3:IsValid() then 
DermaFrame3:Close()
end
if DermaFrame4:IsValid() then 
DermaFrame4:Close()
end
end)
end)

concommand.Add("movesvgui2", function()

if readmove3a == "move3" then
readmove3a = "" end

if readmove4a == "move4" then
readmove4a = "" end

if ( IsValid( DermaFrame ) ) then else
if ( IsValid( DermaFrame2 ) ) then else
if ( IsValid( DermaFrame3 ) ) then else
if ( IsValid( DermaFrame4 ) ) then else
 DermaFrame = vgui.Create( "DFrame" )
DermaFrame:SetPos( ScrW()/2-200, ScrH()/2-1000 )
DermaFrame:SetSize( 100, 50 )
DermaFrame:SetTitle( "" )
DermaFrame:SetVisible( true )
DermaFrame:SetDraggable(false)
DermaFrame:ShowCloseButton(false)


local richtext = vgui.Create( "RichText", DermaFrame )
richtext:SetText( readmove1a )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()

 DermaFrame2 = vgui.Create( "DFrame" )
DermaFrame2:SetPos( ScrW()/2-100, ScrH()/2-1000 )
DermaFrame2:SetSize( 100, 50 )
DermaFrame2:SetTitle( "" )
DermaFrame2:SetVisible( true )
DermaFrame2:SetDraggable(false)
DermaFrame2:ShowCloseButton(false)

local richtext = vgui.Create( "RichText", DermaFrame2 )
richtext:SetText( readmove2a )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()

 DermaFrame3 = vgui.Create( "DFrame" )
DermaFrame3:SetPos( ScrW()/2, ScrH()/2-1000 )
DermaFrame3:SetSize( 100, 50 )
DermaFrame3:SetTitle( "" )
DermaFrame3:SetVisible( true )
DermaFrame3:SetDraggable(false)
DermaFrame3:ShowCloseButton(false)

local richtext = vgui.Create( "RichText", DermaFrame3 )
richtext:SetText( readmove3a )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()

 DermaFrame4 = vgui.Create( "DFrame" )
DermaFrame4:SetPos( ScrW()/2 + 100, ScrH()/2-1000 )
DermaFrame4:SetSize( 100, 50 )
DermaFrame4:SetTitle( "" )
DermaFrame4:SetVisible( true )
DermaFrame4:SetDraggable(false)
DermaFrame4:ShowCloseButton(false)

local richtext = vgui.Create( "RichText", DermaFrame4 )
richtext:SetText( readmove4a )
richtext:SetVerticalScrollbarEnabled( false )
richtext:Center()


DermaFrame.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame:GetWide(), DermaFrame:GetTall(), Color( 0, 0, 0, 150 ) )
end

DermaFrame2.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame2:GetWide(), DermaFrame2:GetTall(), Color( 0, 0, 0, 150 ) )
end

DermaFrame3.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame3:GetWide(), DermaFrame3:GetTall(), Color( 0, 0, 0, 150 ) )
end

DermaFrame4.Paint = function()
	draw.RoundedBox( 8, 0, 0, DermaFrame4:GetWide(), DermaFrame4:GetTall(), Color( 0, 0, 0, 150 ) )

end
end
end
end
end
concommand.Add("closemovesvgui",function()
if DermaFrame:IsValid() then 
DermaFrame:Close()
end
if DermaFrame2:IsValid() then 
DermaFrame2:Close()
end
if DermaFrame3:IsValid() then 
DermaFrame3:Close()
end
if DermaFrame4:IsValid() then 
DermaFrame4:Close()
end
end)
end)

concommand.Add("newhud",function()

function hidehud(name)
 for k, v in pairs{"CHudHealth", "CHudBattery", "HUDPaint"} do
  if name == v  then return false end
 end
end
hook.Add("HUDShouldDraw", "hidehud", hidehud)
end)

net.Receive( "netbhealth", function()
hpr = net.ReadString() 
end )

net.Receive( "netsendxp", function()
expr = net.ReadString() 
end )

net.Receive( "netsendlvl", function()
lvlr = net.ReadString() 
end )

concommand.Add("newhud2",function()
hook.Add( "HUDPaint", "HUDPaint_DrawABox", function()
RunConsoleCommand("sendbhelth")
net.Receive( "netbhealth", function()
hpr = net.ReadString() 
end )

	local health = LocalPlayer():Health()
	draw.RoundedBox(4, ScrW() - 180, ScrH()/75, 150, 15, Color(255,255,255,255))
draw.RoundedBox(4, ScrW() - 180, ScrH()/75, LocalPlayer():Health()/hpr * 150, 15, Color(0,255,0,255))
draw.SimpleText(""..health.."/"..hpr.."", "default", ScrW() - 180, ScrH()/75, Color(255,255,255,255))
draw.SimpleText("EXP", "default", ScrW() - 180 + 20, ScrH()/30, Color(255,255,0,255))
draw.SimpleText("Lv ".. printlvl.."", "default", ScrW() - 180 - 40, ScrH()/45, Color(255,255,255,255))
draw.RoundedBox(0, ScrW() - 180 + 44, ScrH()/25, 100, 2, Color(255,255,255,255))
draw.RoundedBox(0, ScrW() - 180 + 44, ScrH()/25, printexp/printlvl^3 * 100, 2, Color(0,155,255,255))

end )
end)

concommand.Add("removehud", function()
hook.Remove( "HUDPaint", "HUDPaint_DrawABox" )
RunConsoleCommand("newhud3")
end)

function GM:PlayerBindPress( ply, bind, pressed )
	if ( string.find( bind, "slot1" ) ) then return true end
	if ( string.find( bind, "slot2" ) ) then return true end
	if ( string.find( bind, "slot3" ) ) then return true end
	if ( string.find( bind, "slot4" ) ) then return true end
end


concommand.Add("newhud3",function()
surface.CreateFont( "TheDefaultSettings", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 30,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
hook.Add( "HUDPaint", "HUDPaint_DrawABox", function()
 draw.SimpleText(readmone, "TheDefaultSettings", ScrW() - 150 , ScrH() - 50, Color(0,0,0,255))
local alert_img = Material("download/materials/spawnicons/models/alfredo01/7P9csm0.png") -- use a local variable designated somewhere else above in the same file

surface.SetDrawColor(0,0,0)
surface.SetMaterial( alert_img ) 
surface.DrawTexturedRect(ScrW() - 200 , ScrH() - 50,32,32)




end)
end)

concommand.Add("sendtheage", function()
	net.Start( "SendAge" )
	net.WriteString( p1atk) -- You can also use net.WriteInt here. The second argument is 8 since the age will never be above 255. Doing this saves bandwidth and can reduce lag.
	net.SendToServer()
	
end)

concommand.Add("sendtheage2", function()

	net.Start( "SendAge2" )
	net.WriteString( npclvl) -- You can also use net.WriteInt here. The second argument is 8 since the age will never be above 255. Doing this saves bandwidth and can reduce lag.
	net.SendToServer()
	
end)

think1 = 1
local function onThink4()
	RunConsoleCommand("firstperson")
hook.Remove( "Think", "Some unique name4")
end

hook.Add( "Think", "Some unique name4", onThink4 )

concommand.Add("quest1", function()
RunConsoleCommand("drawarrow")
hook.Add( "HUDPaint", "HUDPaint_DrawABox3", function()
		draw.DrawText( "Current Quest", "CloseCaption_BoldItalic", ScrW() * .95, ScrH() * .05, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
		draw.DrawText( "Pick Your Starter", "Trebuchet24", ScrW() * .95, ScrH() * .08, Color( 155, 155, 255, 255 ), TEXT_ALIGN_CENTER )
		draw.DrawText( "Talk To The Pokemon Professor", "Trebuchet18", ScrW() * .94, ScrH() * .11, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
		draw.DrawText( "Demand your pokemon!", "Trebuchet18", ScrW() * .94, ScrH() * .125, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
		draw.DrawText( "Choose your starter", "Trebuchet18", ScrW() * .94, ScrH() * .14												, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
		local HeartImage = Material("icon16/bullet_green.png")
		 surface.SetMaterial(HeartImage)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .115, 10, 10)
		 
		  surface.SetMaterial(HeartImage)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .13, 10, 10)
		 
		 		  surface.SetMaterial(HeartImage)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .145, 10, 10)

		 
		 surface.SetDrawColor(155, 155, 255)
		 surface.DrawLine( 1430, 95,1700,95)

		 	local HeartImage2 = Material("icon16/tick.png")
		if tonumber(sql.QueryValue("SELECT quest1 FROM playerquests")) > 0 then  
	
         surface.SetMaterial(HeartImage2)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .115, 10, 10)
		end
		
		if tonumber(sql.QueryValue("SELECT quest1 FROM playerquests")) > 1 then  
	
         surface.SetMaterial(HeartImage2)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .13, 10, 10)
		end
		 
		 if tonumber(sql.QueryValue("SELECT quest1 FROM playerquests")) > 2 then  
	
         surface.SetMaterial(HeartImage2)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .145, 10, 10)
		  
		end
 
end )

print(sql.QueryValue("SELECT quest1 FROM playerquests"))
end)

concommand.Add("drawarrow", function()
lasttimer = CurTime()
hook.Add( "PostDrawOpaqueRenderables", "example", function()
	local trace = LocalPlayer():GetPos()
	local angle = LocalPlayer():GetAngles()
	local triangle = {
	{ x = 125, y = 25 },
	{ x = 125, y = -25 },
	{ x = 170, y = 0 }
}
 for k,v in pairs(ents.FindByClass("prof")) do
local vec = ( v:GetPos()- LocalPlayer():GetPos() )
vec:Normalize()
vc = vec:Angle()
dist = trace:Distance( v:GetPos() )
profpos = v:GetPos()
   end
dist2 =  trace:Distance( profpos )
if dist > 180 then
	cam.Start3D2D( trace, Angle(0,vc.y,angle.z), 1 )
		surface.SetDrawColor( Color( 155, 155, 255, 255 ) )
		surface.DrawPoly( triangle )
		surface.SetDrawColor( Color( 155, 155, 255, 200 ) )
		surface.DrawRect( 95, -15, 30, 30 )
	cam.End3D2D()
	
	cam.Start3D2D( trace, Angle(0,vc.y-90,angle.z), 1 )
		surface.SetFont( "Trebuchet18" )
	surface.SetTextColor( 0,0,0, 255 )
	surface.SetTextPos( -10,-90 )
	surface.DrawText( ""..math.Round(dist2/50).."m")
	cam.End3D2D()
	
end
end)

end)
questtimer2 = 1
concommand.Add("closequest1", function()
if questtimer2 == 1 then
local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
	
end
hook.Remove( "PostDrawOpaqueRenderables", "example" )
local main = vgui.Create( "DFrame" )
main:SetTitle( " " )
main:SetSize( 300, 150 )
main:Center()
main:ShowCloseButton(false)



local DLabel = vgui.Create( "DLabel", main )
DLabel:SetPos( 40, 40 )
DLabel:SetText( "Money + 500" )

main.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 255 ) ) -- Draw a red box instead of the frame
	draw.DrawText( "Quest Complete!", "TargetID", 100, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end


local anim = Derma_Anim( "EaseInQuad", main, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW() * .95, -200 ), ScrH()*.08 ) -- Change the X coordinate from 200 to 200+600
end )
anim:Start( 2 ) -- Animate for two seconds
main.Think = function( self )
	if anim:Active() then
		anim:Run()
		timer.Create( "animtimer", 3, 1, function() main:Close() 
		hook.Remove("HUDPaint", "HUDPaint_DrawABox3")
		RunConsoleCommand("givemoney2")
		RunConsoleCommand("quest2")
		
		end )
	end
end
questtimer2 = 0
timer.Create("qtr", 5,1, function()
questtimer2 = 1
end)
end
end)


concommand.Add("defaultquest",function()
hook.Add( "HUDPaint", "HUDPaint_DrawABox4", function()
		draw.DrawText( "Current Quest", "CloseCaption_BoldItalic", ScrW() * .95, ScrH() * .05, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
		end)
end)

concommand.Add("quest2", function()
hook.Add( "HUDPaint", "HUDPaint_DrawABox3", function()
		draw.DrawText( "Current Quest", "CloseCaption_BoldItalic", ScrW() * .95, ScrH() * .05, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
		draw.DrawText( "Send Out Your Pokemon", "Trebuchet24", ScrW() * .93, ScrH() * .08, Color( 155, 155, 255, 255 ), TEXT_ALIGN_CENTER )
		draw.DrawText( "Press F1", "Trebuchet18", ScrW() * .94, ScrH() * .11, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
		draw.DrawText( "Send out your pokemon", "Trebuchet18", ScrW() * .94, ScrH() * .125, Color( 0, 0, 0, 255 ), TEXT_ALIGN_CENTER )
		local HeartImage = Material("icon16/bullet_green.png")
		 surface.SetMaterial(HeartImage)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .115, 10, 10)
		 
		  surface.SetMaterial(HeartImage)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .13, 10, 10)
		 
		 surface.SetDrawColor(155, 155, 255)
		 surface.DrawLine( 1430, 95,1700,95)

		 	local HeartImage2 = Material("icon16/tick.png")
		if tonumber(sql.QueryValue("SELECT quest2 FROM playerquests")) > 0 then  
	
         surface.SetMaterial(HeartImage2)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .115, 10, 10)
		end
		
		if tonumber(sql.QueryValue("SELECT quest2 FROM playerquests")) > 1 then  
	
         surface.SetMaterial(HeartImage2)
		  surface.SetDrawColor(255,255,255)
         surface.DrawTexturedRect(ScrW() * .875, ScrH() * .13, 10, 10)
		 
		end
		 
 
end )
end)

concommand.Add("closequest2", function()
if questtimer2 == 1 then
local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
	
end
hook.Remove( "PostDrawOpaqueRenderables", "example" )
local main2 = vgui.Create( "DFrame" )
main2:SetTitle( " " )
main2:SetSize( 300, 150 )
main2:Center()
main2:ShowCloseButton(false)

local DLabel = vgui.Create( "DLabel", main2 )
DLabel:SetPos( 40, 40 )
DLabel:SetText( "Money + 500" )

main2.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 255 ) ) -- Draw a red box instead of the frame
	draw.DrawText( "Quest Complete!", "TargetID", 100, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end


local anim = Derma_Anim( "EaseInQuad", main2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW() * .95, -200 ), ScrH()*.08 ) -- Change the X coordinate from 200 to 200+600
end )
anim:Start( 2 ) -- Animate for two seconds
main2.Think = function( self )
	if anim:Active() then
		anim:Run()
		timer.Create( "animtimer", 3, 1, function() main2:Close() 
		hook.Remove("HUDPaint", "HUDPaint_DrawABox3")
		RunConsoleCommand("givemoney2")
		
		end )
	end
end
timer.Create("qtr", 5,1, function()
questtimer2 = 1
end)
end
end)