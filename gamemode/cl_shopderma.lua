isshotopen = false
concommand.Add("dermapop2", function()
if isshotopen == false then
isshotopen = true
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( ScrW()/2 + -200, ScrH()/2 + -300 )
DermaPanel:SetSize( 500, 500 )
DermaPanel:SetTitle( "Shop" )
DermaPanel:SetDraggable( true )
DermaPanel:MakePopup()

local icon = vgui.Create( "DModelPanel", DermaPanel )
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

local DermaButton = vgui.Create( "DButton", DermaPanel ) 
DermaButton:SetText( "Buy x1" )					DermaButton:SetPos( 5, 110 )				
DermaButton:SetSize( 100, 30 )					
DermaButton.DoClick = function()				
RunConsoleCommand("addpballs")		
end

timer.Create("closetime",1,1,function()
isshotopen = false
end)

end
end)

ishealeropen = false
concommand.Add("healerpop",function()
if ishealeropen == false then
ishealeropen = true
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( ScrW()/2 + -200, ScrH()/2 + -300 )
DermaPanel:SetSize( 500, 200 )
DermaPanel:SetTitle( "Healer" )
DermaPanel:SetDraggable( true )
DermaPanel:MakePopup()

local DermaButton = vgui.Create( "DButton", DermaPanel ) // Create the button and parent it to the frame
DermaButton:SetText( "Heal Pokemon" )					// Set the text on the button
DermaButton:SetPos( 200, 100 )					// Set the position on the frame
DermaButton:SetSize(100, 50 )					// Set the size
DermaButton.DoClick = function()				// A custom function run when clicked ( note the . instead of : )
	RunConsoleCommand( "insertintotable")			// Run the console command "say hi" when you click it ( command, args )
	LocalPlayer():ChatPrint( "Pokemon Healed." )
end

timer.Create("closetime",1,1,function()
ishealeropen = false
end)
end
end)