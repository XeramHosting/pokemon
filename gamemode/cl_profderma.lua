hook.Add("PostDrawOpaqueRenderables", "My3D2DTestHook", function()
	cam.Start3D2D(Vector(-2.489894, 2965.192627, - 100.634911), Angle(0, 180, 90), 1)
	draw.DrawText("Pokemon Professor", "ChatFont", 0, 0, Color(0, 0, 255, 255), TEXT_ALIGN_CENTER)

	cam.End3D2D()

	for k, v in pairs(hook.GetTable()) do
		for k, v in pairs(v) do
			if k == "HUDPaint_DrawABox3" then
				cam.Start3D2D(Vector(-2.489894, 2965.192627, - 100.634911), Angle(0, 180, 90), 1)
				draw.DrawText("!", "ChatFont", 0, 10, Color(255, 255, 0, 255), TEXT_ALIGN_CENTER)
				cam.End3D2D() else end
			end
		end



	end)

	concommand.Add("testnet4", function()
		RunConsoleCommand("testnet3")
		RunConsoleCommand("testnet2")
	end)

	usermessage.Hook("MyMenu", MyMenu)

	concommand.Add("testnet4", function()
		RunConsoleCommand("testnet3")
		RunConsoleCommand("testnet2")
	end)
	concommand.Add("dermapop", function()
		if tonumber(sql.QueryValue("SELECT quest1 FROM playerquests")) == 0 then
		sql.Query("UPDATE playerquests SET quest1 = 1") end
		if IsValid(tFrame) then end
		if not IsValid(tFrame) then
			tFrame = vgui.Create( "DFrame" )
			tFrame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
			tFrame:SetSize( 700, 350 )
			tFrame:SetTitle( "Professor" )
			tFrame:SetVisible( true )
			tFrame:SetDraggable( false )
			tFrame:ShowCloseButton( true )
			tFrame:MakePopup()

			local richtext = vgui.Create( "RichText", tFrame )
			richtext:Dock( FILL )

			richtext:InsertColorChange( 192, 192, 192, 255 )
			richtext:AppendText( "Hello, how may I help you?" )

			local tButton = vgui.Create( "DButton", tFrame )
			tButton:SetText( "What is this place?" )
			tButton:SetPos( 0, 100 )
			tButton:SetSize( 700, 30 )

			tButton.DoClick = function()
				tFrame:Close()
				t2Frame = vgui.Create( "DFrame" )
				t2Frame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
				t2Frame:SetSize( 700, 350 )
				t2Frame:SetTitle( "Professor" )
				t2Frame:SetVisible( true )
				t2Frame:SetDraggable( false )
				t2Frame:ShowCloseButton( true )
				t2Frame:MakePopup()

				local richtext2 = vgui.Create( "RichText", t2Frame )
				richtext2:InsertColorChange( 192, 192, 192, 255 )
				richtext2:SetPos(120, 120)
				richtext2:SetSize(500, 150)
				function richtext2:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
				richtext2:SetVerticalScrollbarEnabled(false )
				richtext2:SetText("This is gm_pokemon_arenas, a large arena map where you can catch and battle pokemon!")

				local nextButton = vgui.Create( "DButton", t2Frame )
				nextButton:SetText( ">>" )
				nextButton:SetPos( 350, 310 )
				nextButton:SetSize( 30, 30 )

				nextButton.DoClick = function()
					t2Frame:Close()
					t3Frame = vgui.Create( "DFrame" )
					t3Frame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
					t3Frame:SetSize( 700, 350 )
					t3Frame:SetTitle( "Professor" )
					t3Frame:SetVisible( true )
					t3Frame:SetDraggable( false )
					t3Frame:ShowCloseButton( true )
					t3Frame:MakePopup()

					local richtext3 = vgui.Create( "RichText", t3Frame )
					richtext3:InsertColorChange( 192, 192, 192, 255 )
					richtext3:SetPos(120, 120)
					richtext3:SetSize(500, 150)
					function richtext3:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
					richtext3:SetVerticalScrollbarEnabled(false )
					richtext3:SetText("Would you like to know anything else?")

					next2Button = vgui.Create( "DButton", t3Frame )
					next2Button:SetText( "Home" )
					next2Button:SetPos( 350, 310 )
					next2Button:SetSize( 34, 30)

					next2Button.DoClick = function()
						t3Frame:Close()
						RunConsoleCommand("dermapop")
					end
					local t2Button = vgui.Create( "DButton", tFrame )
					t2Button:SetText( "How do I play?" )
					t2Button:SetPos( 0, 130 )
					t2Button:SetSize( 700, 30 )


					local t3Button = vgui.Create( "DButton", tFrame )
					t3Button:SetText( "Shut up and give me my pokemon!" )
					t3Button:SetPos( 0, 160 )
					t3Button:SetSize( 700, 30 )

					t44Button = vgui.Create( "DButton", tFrame )
					t44Button:SetText( "Who are you?" )
					t44Button:SetPos( 0, 220 )
					t44Button:SetSize( 700, 30 )

					local t5Button = vgui.Create( "DButton", tFrame )
					t5Button:SetText( "Why... Why are you standing like that?" )
					t5Button:SetPos( 0, 190 )
					t5Button:SetSize( 700, 30 )
				end
			end
		end
		local t2aButton = vgui.Create( "DButton", tFrame )
		t2aButton:SetText( "How do I play?" )
		t2aButton:SetPos( 0, 130 )
		t2aButton:SetSize( 700, 30 )

		t2aButton.DoClick = function()
			tFrame:Close()
			t4Frame = vgui.Create( "DFrame" )
			t4Frame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
			t4Frame:SetSize( 700, 350 )
			t4Frame:SetTitle( "Professor" )
			t4Frame:SetVisible( true )
			t4Frame:SetDraggable( false )
			t4Frame:ShowCloseButton( true )
			t4Frame:MakePopup()

			local richtext3a = vgui.Create( "RichText", t4Frame )
			richtext3a:InsertColorChange( 192, 192, 192, 255 )
			richtext3a:SetPos(120, 120)
			richtext3a:SetSize(500, 150)
			function richtext3a:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
			richtext3a:SetVerticalScrollbarEnabled(false )
			richtext3a:SetText("Well, you throw a pokeball at a pokemon after it's weakened to catch it if you're lucky. And you use the same pokemon to battle other people's pokemon. After your pokemon wins enough battles its experience(EXP) points will increase and it will level up. Then after enough levels it will evolve. You pokemon will grow stronger each time it levels up and it will learn new moves. If your pokemon is weak, take it to the pokemon center to heal. Don't ask me where it is though because not even I know.")

			next2aButton = vgui.Create( "DButton", t4Frame )
			next2aButton:SetText( "Home" )
			next2aButton:SetPos( 350, 310 )
			next2aButton:SetSize( 34, 30 )

			next2aButton.DoClick = function()
				t4Frame:Close()
				RunConsoleCommand("dermapop")
			end
		end

		local t3Button = vgui.Create( "DButton", tFrame )
		t3Button:SetText( "Shut up and give me my pokemon!" )
		t3Button:SetPos( 0, 160 )
		t3Button:SetSize( 700, 30 )


		t3Button.DoClick = function()
			RunConsoleCommand("sendn")
			net.Receive( "testnd", function()
				reads3 = net.ReadBool(tnet)
				if tonumber(sql.QueryValue("SELECT quest1 FROM playerquests")) == 1 then
					sql.Query("UPDATE playerquests SET quest1 = 2")
				end
			end )
			if reads3 == true then
				print("You already have a starter!")

			else

				tFrame:Close()
				pFrame = vgui.Create( "DFrame" )
				pFrame:SetPos( 160, 100 ) --pokemon selection
				pFrame:SetSize( 1300, 700)
				pFrame:SetTitle( "Professor" )
				pFrame:SetVisible( true )
				pFrame:SetDraggable( false )
				pFrame:ShowCloseButton( true )
				pFrame:MakePopup()

				local richtext2p = vgui.Create( "RichText", pFrame )
				richtext2p:InsertColorChange( 192, 192, 192, 255 )
				richtext2p:SetPos(400, 50)
				richtext2p:SetSize(500, 50)
				function richtext2p:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
				richtext2p:SetVerticalScrollbarEnabled(false )
				richtext2p:SetText("PROF: Fine. You may choose one of three pokemon for your starter.")

				BGPanel = vgui.Create( "DPanel", pFrame )
				BGPanel:SetPos( 100, 200 )
				BGPanel:SetSize( 200, 200 )
				BGPanel:SetBackgroundColor( Color( 0, 0, 0, 255 ) )

				local icon1 = vgui.Create( "DModelPanel", BGPanel )
				icon1:SetSize( 200, 200 )
				icon1:SetModel( "models/rtbmodels/pokemon/bulbasaur.mdl" ) -- you can only change colors on playermodels
				function icon1:LayoutEntity( Entity ) return end -- disables default rotation
				function icon1.Entity:GetPlayerColor() return Vector ( 1, 0, 0 ) end

				icon1.DoClick = function()

					local Framei = vgui.Create( "DFrame" )
					Framei:SetTitle( " " )
					Framei:SetSize( ScrW(), ScrH() )
					Framei:MakePopup()
					Framei:ShowCloseButton(false)
					Framei.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
						draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 250 ) ) -- Draw a red box instead of the frame
					end

					local richtext3p = vgui.Create( "RichText", Framei )
					richtext3p:InsertColorChange( 192, 192, 192, 255 )
					richtext3p:SetPos(ScrW() / 2 - 225, ScrH() - 255)
					richtext3p:SetSize(500, 50)
					function richtext3p:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
					richtext3p:SetVerticalScrollbarEnabled(false )
					richtext3p:SetText("Do you want the grass-type pokemon bulbasaur?")

					local pButton = vgui.Create( "DButton", Framei )
					pButton:SetText( "Yes" ) -- selecting bulbasaur
					pButton:SetPos( ScrW() / 2 - 50, ScrH() - 50 )
					pButton:SetSize( 50, 30 )

					pButton.DoClick = function()
						Framei:Close()
						pFrame:Close()
						RunConsoleCommand("savebulbasaurtest")
						RunConsoleCommand("sendn")
						RunConsoleCommand("sendmove1")
						RunConsoleCommand("sendmove2")
						RunConsoleCommand("sendmove3")
						RunConsoleCommand("sendmove4")
						RunConsoleCommand("resendvariables")

						sql.Query("UPDATE playerquests SET quest1 = 3")

					end

					local p2nButton = vgui.Create( "DButton", Framei )
					p2nButton:SetText( "No" )
					p2nButton:SetPos( ScrW() / 2 + 50, ScrH() - 50 )
					p2nButton:SetSize( 50, 30 )

					p2nButton.DoClick = function()
						Framei:Close()
					end

					local icon4 = vgui.Create( "DModelPanel", Framei )
					icon4:SetSize( 500, 500 )
					icon4:SetPos(550, 0)
					icon4:SetModel( "models/rtbmodels/pokemon/bulbasaur.mdl" ) -- you can only change colors on playermodels
					function icon4:LayoutEntity( Entity ) return end -- disables default rotation
					function icon4.Entity:GetPlayerColor() return Vector ( 1, 0, 0 ) end

					function icon4:LayoutEntity( ent )
						if self:IsDown() then
							local curposx, curposy = self:CursorPos()
							if self.prevx == nil or self.prevy == nil then self.prevx, self.prevy = curposx, curposy end
							ent:SetAngles( Angle( 0, - (self.prevx - curposx), 0 ) )
						else
							self.prevx, self.prevy = nil, nil
						end
					end

				end

				BGPanel2 = vgui.Create( "DPanel", pFrame )
				BGPanel2:SetPos( 550, 200 )
				BGPanel2:SetSize( 200, 200 )
				BGPanel2:SetBackgroundColor( Color( 0, 0, 0, 255 ) )

				local icon2 = vgui.Create( "DModelPanel", BGPanel2 )
				icon2:SetSize( 200, 200 )
				icon2:SetModel( "models/rtbmodels/pokemon/squirtle.mdl" ) -- you can only change colors on playermodels
				function icon2:LayoutEntity( Entity ) return end -- disables default rotation
				function icon2.Entity:GetPlayerColor() return Vector ( 1, 0, 0 ) end

				icon2.DoClick = function()

					local Framei = vgui.Create( "DFrame" )
					Framei:SetTitle( " " )
					Framei:SetSize( ScrW(), ScrH() )
					Framei:MakePopup()
					Framei:ShowCloseButton(false)
					Framei.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
						draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 250 ) ) -- Draw a red box instead of the frame
					end

					local richtext3p = vgui.Create( "RichText", Framei )
					richtext3p:InsertColorChange( 192, 192, 192, 255 )
					richtext3p:SetPos(ScrW() / 2 - 225, ScrH() - 200)
					richtext3p:SetSize(500, 50)
					function richtext3p:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
					richtext3p:SetVerticalScrollbarEnabled(false )
					richtext3p:SetText("Do you want the water-type pokemon squirtle?")

					local pButton = vgui.Create( "DButton", Framei )
					pButton:SetText( "Yes" ) -- selecting bulbasaur
					pButton:SetPos( ScrW() / 2 - 50, ScrH() - 50)
					pButton:SetSize( 50, 30 )

					pButton.DoClick = function()

						sql.Query("UPDATE playerquests SET quest1 = 3")

						Framei:Close()
						pFrame:Close()
						RunConsoleCommand("savesquirtletest")
						RunConsoleCommand("sendn")

					end

					local p2nButton = vgui.Create( "DButton", Framei )
					p2nButton:SetText( "No" )
					p2nButton:SetPos( ScrW() / 2 + 50, ScrH() - 50 )
					p2nButton:SetSize( 50, 30 )

					p2nButton.DoClick = function()
						Framei:Close()
					end

					local icon4 = vgui.Create( "DModelPanel", Framei )
					icon4:SetSize( 500, 500 )
					icon4:SetPos(550, 0)
					icon4:SetModel( "models/rtbmodels/pokemon/squirtle.mdl" ) -- you can only change colors on playermodels
					function icon4:LayoutEntity( ent )
						if self:IsDown() then
							local curposx, curposy = self:CursorPos()
							if self.prevx == nil or self.prevy == nil then self.prevx, self.prevy = curposx, curposy end
							ent:SetAngles( Angle( 0, - (self.prevx - curposx), 0 ) )
						else
							self.prevx, self.prevy = nil, nil
						end
					end
					function icon4.Entity:GetPlayerColor() return Vector ( 1, 0, 0 ) end



				end

				BGPanel3 = vgui.Create( "DPanel", pFrame )
				BGPanel3:SetPos( 1000, 200 )
				BGPanel3:SetSize( 200, 200 )
				BGPanel3:SetBackgroundColor( Color( 0, 0, 0, 255 ) )

				local icon3 = vgui.Create( "DModelPanel", BGPanel3 )
				icon3:SetSize( 200, 200 )
				icon3:SetModel( "models/rtbmodels/pokemon/charmander.mdl" ) -- you can only change colors on playermodels
				function icon3:LayoutEntity( Entity ) return end -- disables default rotation
				function icon3.Entity:GetPlayerColor() return Vector ( 1, 0, 0 ) end

				icon3.DoClick = function()

					local Framei = vgui.Create( "DFrame" )
					Framei:SetTitle( " " )
					Framei:SetSize( ScrW(), ScrH() )
					Framei:MakePopup()
					Framei:ShowCloseButton(false)
					Framei.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
						draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 250 ) ) -- Draw a red box instead of the frame
					end

					local richtext3p = vgui.Create( "RichText", Framei )
					richtext3p:InsertColorChange( 192, 192, 192, 255 )
					richtext3p:SetPos(ScrW() / 2 - 225, ScrH() - 200)
					richtext3p:SetSize(500, 50)
					function richtext3p:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
					richtext3p:SetVerticalScrollbarEnabled(false )
					richtext3p:SetText("Do you want the fire-type pokemon charmander?")

					local pButton = vgui.Create( "DButton", Framei )
					pButton:SetText( "Yes" ) -- selecting bulbasaur
					pButton:SetPos( ScrW() / 2 - 50, ScrH() - 50)
					pButton:SetSize( 50, 30 )

					pButton.DoClick = function()
						Framei:Close()
						pFrame:Close()
						RunConsoleCommand("savechartest")
						RunConsoleCommand("sendn")

						sql.Query("UPDATE playerquests SET quest1 = 3")


					end

					local p2nButton = vgui.Create( "DButton", Framei )
					p2nButton:SetText( "No" )
					p2nButton:SetPos( ScrW() / 2 + 50, ScrH() - 50 )
					p2nButton:SetSize( 50, 30 )

					p2nButton.DoClick = function()
						Framei:Close()
					end

					local icon4 = vgui.Create( "DModelPanel", Framei )
					icon4:SetSize( 500, 500 )
					icon4:SetPos(550, 0)
					icon4:SetModel( "models/rtbmodels/pokemon/charmander.mdl" ) -- you can only change colors on playermodels
					function icon4:LayoutEntity( Entity ) return end -- disables default rotation
					function icon4.Entity:GetPlayerColor() return Vector ( 1, 0, 0 ) end

					function icon4:LayoutEntity( ent )
						if self:IsDown() then
							local curposx, curposy = self:CursorPos()
							if self.prevx == nil or self.prevy == nil then self.prevx, self.prevy = curposx, curposy end
							ent:SetAngles( Angle( 0, - (self.prevx - curposx), 0 ) )
						else
							self.prevx, self.prevy = nil, nil
						end
					end
				end

			end

		end

		local t4Button = vgui.Create( "DButton", tFrame )
		t4Button:SetText( "Who are you?" )
		t4Button:SetPos( 0, 220 )
		t4Button:SetSize( 700, 30 )

		t4Button.DoClick = function()

			tFrame:Close()
			t4bFrame = vgui.Create( "DFrame" )
			t4bFrame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
			t4bFrame:SetSize( 700, 350 )
			t4bFrame:SetTitle( "Professor" )
			t4bFrame:SetVisible( true )
			t4bFrame:SetDraggable( false )
			t4bFrame:ShowCloseButton( true )
			t4bFrame:MakePopup()

			local richtext3ac = vgui.Create( "RichText", t4bFrame )
			richtext3ac:InsertColorChange( 192, 192, 192, 255 )
			richtext3ac:SetPos(120, 120)
			richtext3ac:SetSize(500, 150)
			function richtext3ac:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
			richtext3ac:SetVerticalScrollbarEnabled(false )
			richtext3ac:SetText("I am Professor Sycamore. I am the expert of pokemon.")

			next2aButtonb = vgui.Create( "DButton", t4bFrame )
			next2aButtonb:SetText( "Home" )
			next2aButtonb:SetPos( 350, 310 )
			next2aButtonb:SetSize( 34, 30 )

			next2aButtonb.DoClick = function()
				t4bFrame:Close()
				RunConsoleCommand("dermapop")
			end
		end

		local t5Button = vgui.Create( "DButton", tFrame )
		t5Button:SetText( "Why... Why are you standing like that?" )
		t5Button:SetPos( 0, 190 )
		t5Button:SetSize( 700, 30 )

		t5Button.DoClick = function()

			tFrame:Close()
			t5Frame = vgui.Create( "DFrame" )
			t5Frame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
			t5Frame:SetSize( 700, 350 )
			t5Frame:SetTitle( "Professor" )
			t5Frame:SetVisible( true )
			t5Frame:SetDraggable( false )
			t5Frame:ShowCloseButton( true )
			t5Frame:MakePopup()

			local richtext3a = vgui.Create( "RichText", t5Frame )
			richtext3a:InsertColorChange( 192, 192, 192, 255 )
			richtext3a:SetPos(120, 120)
			richtext3a:SetSize(500, 150)
			function richtext3a:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
			richtext3a:SetVerticalScrollbarEnabled(false )
			richtext3a:SetText("Prof: ...")

			next2abdButton = vgui.Create( "DButton", t5Frame )
			next2abdButton:SetText( ">>" )
			next2abdButton:SetPos( 350, 310 )
			next2abdButton:SetSize( 34, 30 )

			next2abdButton.DoClick = function()
				t5Frame:Close()
				t5aFrame = vgui.Create( "DFrame" )
				t5aFrame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
				t5aFrame:SetSize( 700, 350 )
				t5aFrame:SetTitle( "Professor" )
				t5aFrame:SetVisible( true )
				t5aFrame:SetDraggable( false )
				t5aFrame:ShowCloseButton( true )
				t5aFrame:MakePopup()

				local richtext3b = vgui.Create( "RichText", t5aFrame )
				richtext3b:InsertColorChange( 192, 192, 192, 255 )
				richtext3b:SetPos(120, 120)
				richtext3b:SetSize(500, 150)
				function richtext3b:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
				richtext3b:SetVerticalScrollbarEnabled(false )
				richtext3b:SetText(LocalPlayer():Name() .. ": ...")

				next2abeButton = vgui.Create( "DButton", t5aFrame )
				next2abeButton:SetText( ">>" )
				next2abeButton:SetPos( 350, 310 )
				next2abeButton:SetSize( 34, 30 )

				next2abeButton.DoClick = function()
					t5aFrame:Close()
					t5a2Frame = vgui.Create( "DFrame" )
					t5a2Frame:SetPos( ScrW() / 2 - 350, ScrH() / 2 - 50 )
					t5a2Frame:SetSize( 700, 350 )
					t5a2Frame:SetTitle( "Professor" )
					t5a2Frame:SetVisible( true )
					t5a2Frame:SetDraggable( false )
					t5a2Frame:ShowCloseButton( true )
					t5a2Frame:MakePopup()

					local richtext3b = vgui.Create( "RichText", t5a2Frame )
					richtext3b:InsertColorChange( 192, 192, 192, 255 )
					richtext3b:SetPos(120, 120)
					richtext3b:SetSize(500, 150)
					function richtext3b:PerformLayout() self:SetBGColor( Color( 0, 0, 255 ) ) end
					richtext3b:SetVerticalScrollbarEnabled(false )
					richtext3b:SetText("Prof: We don't talk about that.")

					next2abfButton = vgui.Create( "DButton", t5a2Frame )
					next2abfButton:SetText( "Home" )
					next2abfButton:SetPos( 350, 310 )
					next2abfButton:SetSize( 34, 30 )

					next2abfButton.DoClick = function()
						t5a2Frame:Close()
						RunConsoleCommand("dermapop")
					end
				end
			end
		end



		for k, v in pairs(hook.GetTable()) do
			for k, v in pairs(v) do
				if k == "HUDPaint_DrawABox3" then
					local DLabel = vgui.Create( "DLabel", tFrame )
					DLabel:SetPos( 440, 163 )
					DLabel:SetFont( "CloseCaption_Bold" )
					DLabel:SetText( "!" )
					DLabel:SetColor(Color(255, 255, 0))
				end
			end
		end

	end)
