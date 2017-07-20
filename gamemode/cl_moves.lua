k1 = false
k2 = false
k3 = false
K4 = false

concommand.Add("asadf2", function()
  print(LocalPlayer():GetNWInt('whatpokemon'))
end)


local function KeyPress(ply)
if LocalPlayer():GetModel() == "models/player/red.mdl" then
if input.IsKeyDown( KEY_1 ) then
		startWeaponSelection( KEY_1 )
	elseif input.IsKeyDown( KEY_2 ) then
		startWeaponSelection( KEY_2 )
	elseif input.IsKeyDown( KEY_3 ) then
		startWeaponSelection( KEY_3 )
	end
end
  if input.IsKeyDown( KEY_1 ) and not k1 then
    if sql.TableExists( "playerpokemon" ) then
      RunConsoleCommand("sendtheage")
      RunConsoleCommand("sendtheage2")
    end

    if LocalPlayer():GetModel() == npcmodel then
      if readmove1 == "Protect" then
        k1 = true
        RunConsoleCommand("k1f")
        RunConsoleCommand("protect")
        local DermaFrame2m = vgui.Create( "DFrame" )
        DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
        DermaFrame2m:SetSize( 100, 50 )
        DermaFrame2m:SetTitle( "" )
        DermaFrame2m:SetVisible( true )
        DermaFrame2m:SetDraggable(false)
        DermaFrame2m:ShowCloseButton(false)

        DermaFrame2m.Paint = function()
          draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
        end

        timer.Create("move2timer", 1, 1, function()
          DermaFrame2m:Close()
        end)
      end

      if LocalPlayer():GetModel() == npcmodel then
        if readmove1 == "Rapid Spin" then
          k2 = true
          RunConsoleCommand("k2f")
          RunConsoleCommand("tailwhip")
          RunConsoleCommand("shadow")
          local DermaFrame2m = vgui.Create( "DFrame" )
          DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
          DermaFrame2m:SetSize( 100, 50 )
          DermaFrame2m:SetTitle( "" )
          DermaFrame2m:SetVisible( true )
          DermaFrame2m:SetDraggable(false)
          DermaFrame2m:ShowCloseButton(false)

          DermaFrame2m.Paint = function()
            draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
          end

          timer.Create("move2timer", 1, 1, function()
            DermaFrame2m:Close()
          end)
        end
      end
    end

    if readmove1 == "Slash" then

      RunConsoleCommand("createtub4")


      local DermaFramem = vgui.Create( "DFrame" )
      DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
      DermaFramem:SetSize( 100, 50 )
      DermaFramem:SetTitle( "" )
      DermaFramem:SetVisible( true )
      DermaFramem:SetDraggable(false)
      DermaFramem:ShowCloseButton(false)

      DermaFramem.Paint = function()
        draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
      end

      timer.Create("move1timer", 1, 1, function()
        DermaFramem:Close()
      end)

    end

    if LocalPlayer():GetModel() == npcmodel then
      if readmove1 == "Fire Fang" then
        RunConsoleCommand("firefang")
        RunConsoleCommand("tackle")
        RunConsoleCommand("createtub")
        RunConsoleCommand("std2")
        RunConsoleCommand("emitsoundt")

        local DermaFramem = vgui.Create( "DFrame" )
        DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
        DermaFramem:SetSize( 100, 50 )
        DermaFramem:SetTitle( "" )
        DermaFramem:SetVisible( true )
        DermaFramem:SetDraggable(false)
        DermaFramem:ShowCloseButton(false)

        DermaFramem.Paint = function()
          draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
        end

        timer.Create("move1timer", 1, 1, function()
          DermaFramem:Close()
        end)
        k1 = true
        RunConsoleCommand("k1f")
        end else
      end

      if LocalPlayer():GetModel() == npcmodel then
        if readmove1 == "bite" then
          RunConsoleCommand("tackle")
          RunConsoleCommand("createtub")
          RunConsoleCommand("std2")
          RunConsoleCommand("emitsoundt")

          local DermaFramem = vgui.Create( "DFrame" )
          DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
          DermaFramem:SetSize( 100, 50 )
          DermaFramem:SetTitle( "" )
          DermaFramem:SetVisible( true )
          DermaFramem:SetDraggable(false)
          DermaFramem:ShowCloseButton(false)

          DermaFramem.Paint = function()
            draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
          end

          timer.Create("move1timer", 1, 1, function()
            DermaFramem:Close()
          end)
          k1 = true
          RunConsoleCommand("k1f")
          end else
        end

        if LocalPlayer():GetModel() == npcmodel then
          if readmove1 == "Flame Burst" then
            RunConsoleCommand("bigflame")

            local DermaFramem = vgui.Create( "DFrame" )
            DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
            DermaFramem:SetSize( 100, 50 )
            DermaFramem:SetTitle( "" )
            DermaFramem:SetVisible( true )
            DermaFramem:SetDraggable(false)
            DermaFramem:ShowCloseButton(false)

            DermaFramem.Paint = function()
              draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
            end

            timer.Create("move1timer", 1, 1, function()
              DermaFramem:Close()
            end)
            k1 = true
            RunConsoleCommand("k1f")
            end else
          end

          if LocalPlayer():GetModel() == npcmodel then
            if readmove1 == "Scary Face" then
              RunConsoleCommand("scaryf")

              local DermaFramem = vgui.Create( "DFrame" )
              DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
              DermaFramem:SetSize( 100, 50 )
              DermaFramem:SetTitle( "" )
              DermaFramem:SetVisible( true )
              DermaFramem:SetDraggable(false)
              DermaFramem:ShowCloseButton(false)

              DermaFramem.Paint = function()
                draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
              end

              timer.Create("move1timer", 1, 1, function()
                DermaFramem:Close()
              end)
              k1 = true
              RunConsoleCommand("k1f")
              end else
            end

            if LocalPlayer():GetModel() == npcmodel2 then
              if readmove1a == "tackle" or readmove1a == "scratch" then
                RunConsoleCommand("tackle")
                RunConsoleCommand("createtub")
                RunConsoleCommand("std2")
                RunConsoleCommand("emitsoundt")

                local DermaFramem = vgui.Create( "DFrame" )
                DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                DermaFramem:SetSize( 100, 50 )
                DermaFramem:SetTitle( "" )
                DermaFramem:SetVisible( true )
                DermaFramem:SetDraggable(false)
                DermaFramem:ShowCloseButton(false)

                DermaFramem.Paint = function()
                  draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                end

                timer.Create("move1timer", 1, 1, function()
                  DermaFramem:Close()
                end)
                k1 = true
                RunConsoleCommand("k1f")
                end else
              end

              if LocalPlayer():GetModel() == npcmodel3 then
                if readmove1b == "scratch" then
                  RunConsoleCommand("tackle")
                  RunConsoleCommand("createtub")
                  RunConsoleCommand("std2")
                  RunConsoleCommand("emitsoundt")

                  local DermaFramem = vgui.Create( "DFrame" )
                  DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                  DermaFramem:SetSize( 100, 50 )
                  DermaFramem:SetTitle( "" )
                  DermaFramem:SetVisible( true )
                  DermaFramem:SetDraggable(false)
                  DermaFramem:ShowCloseButton(false)

                  DermaFramem.Paint = function()
                    draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                  end

                  timer.Create("move1timer", 1, 1, function()
                    DermaFramem:Close()
                  end)
                  k1 = true
                  RunConsoleCommand("k1f")
                  end else
                end

                if LocalPlayer():GetModel() == npcmodel4 then
                  if readmove1c == "scratch" then
                    RunConsoleCommand("tackle")
                    RunConsoleCommand("createtub")
                    RunConsoleCommand("std2")
                    RunConsoleCommand("emitsoundt")

                    local DermaFramem = vgui.Create( "DFrame" )
                    DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                    DermaFramem:SetSize( 100, 50 )
                    DermaFramem:SetTitle( "" )
                    DermaFramem:SetVisible( true )
                    DermaFramem:SetDraggable(false)
                    DermaFramem:ShowCloseButton(false)

                    DermaFramem.Paint = function()
                      draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                    end

                    timer.Create("move1timer", 1, 1, function()
                      DermaFramem:Close()
                    end)
                    k1 = true
                    RunConsoleCommand("k1f")
                    end else
                  end

                  if LocalPlayer():GetModel() == npcmodel5 then
                    if readmove1d == "scratch" then
                      RunConsoleCommand("tackle")
                      RunConsoleCommand("createtub")
                      RunConsoleCommand("std2")
                      RunConsoleCommand("emitsoundt")

                      local DermaFramem = vgui.Create( "DFrame" )
                      DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                      DermaFramem:SetSize( 100, 50 )
                      DermaFramem:SetTitle( "" )
                      DermaFramem:SetVisible( true )
                      DermaFramem:SetDraggable(false)
                      DermaFramem:ShowCloseButton(false)

                      DermaFramem.Paint = function()
                        draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                      end

                      timer.Create("move1timer", 1, 1, function()
                        DermaFramem:Close()
                      end)
                      k1 = true
                      RunConsoleCommand("k1f")
                      end else
                    end

                    if LocalPlayer():GetModel() == npcmodel6 then
                      if readmove1e == "scratch" then
                        RunConsoleCommand("tackle")
                        RunConsoleCommand("createtub")
                        RunConsoleCommand("std2")
                        RunConsoleCommand("emitsoundt")

                        local DermaFramem = vgui.Create( "DFrame" )
                        DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                        DermaFramem:SetSize( 100, 50 )
                        DermaFramem:SetTitle( "" )
                        DermaFramem:SetVisible( true )
                        DermaFramem:SetDraggable(false)
                        DermaFramem:ShowCloseButton(false)

                        DermaFramem.Paint = function()
                          draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                        end

                        timer.Create("move1timer", 1, 1, function()
                          DermaFramem:Close()
                        end)
                        k1 = true
                        RunConsoleCommand("k1f")
                        end else
                      end

                      if LocalPlayer():GetModel() == npcmodel then

                        if LocalPlayer():GetNWInt('whatpokemon') == 1 then

                          if readmove1 == "Double Edge" then

                            RunConsoleCommand("doubed")
                            RunConsoleCommand("createtub3")
                            RunConsoleCommand("std2b")

                            local DermaFramem = vgui.Create( "DFrame" )
                            DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                            DermaFramem:SetSize( 100, 50 )
                            DermaFramem:SetTitle( "" )
                            DermaFramem:SetVisible( true )
                            DermaFramem:SetDraggable(false)
                            DermaFramem:ShowCloseButton(false)

                            DermaFramem.Paint = function()
                              draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                            end

                            timer.Create("move1timer", 1, 1, function()
                              DermaFramem:Close()
                            end)

                          end

                          if readmove1 == "growth" then

                            RunConsoleCommand("growth")

                            local DermaFramem = vgui.Create( "DFrame" )
                            DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                            DermaFramem:SetSize( 100, 50 )
                            DermaFramem:SetTitle( "" )
                            DermaFramem:SetVisible( true )
                            DermaFramem:SetDraggable(false)
                            DermaFramem:ShowCloseButton(false)

                            DermaFramem.Paint = function()
                              draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                            end

                            timer.Create("move1timer", 1, 1, function()
                              DermaFramem:Close()
                            end)

                          end

                          if readmove1 == "rzl" then

                            RunConsoleCommand("razr")

                            local DermaFramem = vgui.Create( "DFrame" )
                            DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                            DermaFramem:SetSize( 100, 50 )
                            DermaFramem:SetTitle( "" )
                            DermaFramem:SetVisible( true )
                            DermaFramem:SetDraggable(false)
                            DermaFramem:ShowCloseButton(false)

                            DermaFramem.Paint = function()
                              draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                            end

                            timer.Create("move1timer", 1, 1, function()
                              DermaFramem:Close()
                            end)

                          end

                          if readmove1 == "takedown" then

                            RunConsoleCommand("takedown")
                            RunConsoleCommand("createtub2")
                            RunConsoleCommand("std2a")
                            RunConsoleCommand("emitsoundt")

                            local DermaFramem = vgui.Create( "DFrame" )
                            DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                            DermaFramem:SetSize( 100, 50 )
                            DermaFramem:SetTitle( "" )
                            DermaFramem:SetVisible( true )
                            DermaFramem:SetDraggable(false)
                            DermaFramem:ShowCloseButton(false)

                            DermaFramem.Paint = function()
                              draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                            end

                            timer.Create("move1timer", 1, 1, function()
                              DermaFramem:Close()
                            end)

                          end

                          if readmove1 == "scratch" then

                            RunConsoleCommand("createtub4")


                            local DermaFramem = vgui.Create( "DFrame" )
                            DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                            DermaFramem:SetSize( 100, 50 )
                            DermaFramem:SetTitle( "" )
                            DermaFramem:SetVisible( true )
                            DermaFramem:SetDraggable(false)
                            DermaFramem:ShowCloseButton(false)

                            DermaFramem.Paint = function()
                              draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                            end

                            timer.Create("move1timer", 1, 1, function()
                              DermaFramem:Close()
                            end)

                            end else
                            if readmove1 == "tackle" then

                              RunConsoleCommand("tackle")
                              RunConsoleCommand("createtub")
                              RunConsoleCommand("std2")
                              RunConsoleCommand("emitsoundt")

                              local DermaFramem = vgui.Create( "DFrame" )
                              DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                              DermaFramem:SetSize( 100, 50 )
                              DermaFramem:SetTitle( "" )
                              DermaFramem:SetVisible( true )
                              DermaFramem:SetDraggable(false)
                              DermaFramem:ShowCloseButton(false)

                              DermaFramem.Paint = function()
                                draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                              end

                              timer.Create("move1timer", 1, 1, function()
                                DermaFramem:Close()
                              end)

                            end
                          end

                          if readmove1 == "bubble"then
                            RunConsoleCommand("sendtheage")
                            RunConsoleCommand("sendtheage2")
                            RunConsoleCommand("bubble")

                            local DermaFramem = vgui.Create( "DFrame" )
                            DermaFramem:SetPos( ScrW() / 2 - 200, ScrH() / 2 - 1000 )
                            DermaFramem:SetSize( 100, 50 )
                            DermaFramem:SetTitle( "" )
                            DermaFramem:SetVisible( true )
                            DermaFramem:SetDraggable(false)
                            DermaFramem:ShowCloseButton(false)

                            DermaFramem.Paint = function()
                              draw.RoundedBox( 8, 0, 0, DermaFramem:GetWide(), DermaFramem:GetTall(), Color( 0, 0, 0, 150 ) )
                            end

                            timer.Create("move1timer", 1, 1, function()
                              DermaFramem:Close()
                            end)

                          end

                          RunConsoleCommand("k1f")
                          k1 = true
                        end
                      end


                      if input.IsKeyDown( KEY_2 ) and not k2 then

                        if LocalPlayer():GetModel() == npcmodel then
                          if readmove2 == "rzl" then
                            RunConsoleCommand("razr")

                            local DermaFrame2m = vgui.Create( "DFrame" )
                            DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                            DermaFrame2m:SetSize( 100, 50 )
                            DermaFrame2m:SetTitle( "" )
                            DermaFrame2m:SetVisible( true )
                            DermaFrame2m:SetDraggable(false)
                            DermaFrame2m:ShowCloseButton(false)

                            DermaFrame2m.Paint = function()
                              draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                            end


                            timer.Create("move1timer", 1, 1, function()
                              DermaFrame2m:Close()
                            end)
                            k2 = true
                            RunConsoleCommand("k2f")
                            end else
                          end

                          if LocalPlayer():GetModel() == npcmodel2 then
                            if readmove2a == "growl" then
                              RunConsoleCommand("k2f")
                              RunConsoleCommand("playsound2")
                              RunConsoleCommand("growl")
                              RunConsoleCommand("st3")

                              local DermaFrame2m = vgui.Create( "DFrame" )
                              DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                              DermaFrame2m:SetSize( 100, 50 )
                              DermaFrame2m:SetTitle( "" )
                              DermaFrame2m:SetVisible( true )
                              DermaFrame2m:SetDraggable(false)
                              DermaFrame2m:ShowCloseButton(false)

                              DermaFrame2m.Paint = function()
                                draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                              end


                              timer.Create("move1timer", 1, 1, function()
                                DermaFrame2m:Close()
                              end)
                              k2 = true
                              RunConsoleCommand("k2f")
                              end else
                            end

                            if LocalPlayer():GetModel() == npcmodel3 then
                              if readmove2b == "growl" then
                                RunConsoleCommand("k2f")
                                RunConsoleCommand("playsound2")
                                RunConsoleCommand("growl")
                                RunConsoleCommand("st3")

                                local DermaFrame2m = vgui.Create( "DFrame" )
                                DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                DermaFrame2m:SetSize( 100, 50 )
                                DermaFrame2m:SetTitle( "" )
                                DermaFrame2m:SetVisible( true )
                                DermaFrame2m:SetDraggable(false)
                                DermaFrame2m:ShowCloseButton(false)

                                DermaFrame2m.Paint = function()
                                  draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                end


                                timer.Create("move1timer", 1, 1, function()
                                  DermaFrame2m:Close()
                                end)
                                k2 = true
                                RunConsoleCommand("k2f")
                                end else
                              end

                              if LocalPlayer():GetModel() == npcmodel4 then
                                if readmove2c == "growl" then
                                  RunConsoleCommand("k2f")
                                  RunConsoleCommand("playsound2")
                                  RunConsoleCommand("growl")
                                  RunConsoleCommand("st3")

                                  local DermaFrame2m = vgui.Create( "DFrame" )
                                  DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                  DermaFrame2m:SetSize( 100, 50 )
                                  DermaFrame2m:SetTitle( "" )
                                  DermaFrame2m:SetVisible( true )
                                  DermaFrame2m:SetDraggable(false)
                                  DermaFrame2m:ShowCloseButton(false)

                                  DermaFrame2m.Paint = function()
                                    draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                  end


                                  timer.Create("move1timer", 1, 1, function()
                                    DermaFrame2m:Close()
                                  end)
                                  k2 = true
                                  RunConsoleCommand("k2f")
                                  end else
                                end

                                if LocalPlayer():GetModel() == npcmodel5 then
                                  if readmove2d == "growl" then
                                    RunConsoleCommand("k2f")
                                    RunConsoleCommand("playsound2")
                                    RunConsoleCommand("growl")
                                    RunConsoleCommand("st3")

                                    local DermaFrame2m = vgui.Create( "DFrame" )
                                    DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                    DermaFrame2m:SetSize( 100, 50 )
                                    DermaFrame2m:SetTitle( "" )
                                    DermaFrame2m:SetVisible( true )
                                    DermaFrame2m:SetDraggable(false)
                                    DermaFrame2m:ShowCloseButton(false)

                                    DermaFrame2m.Paint = function()
                                      draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                    end


                                    timer.Create("move1timer", 1, 1, function()
                                      DermaFrame2m:Close()
                                    end)
                                    k2 = true
                                    RunConsoleCommand("k2f")
                                    end else
                                  end

                                  if LocalPlayer():GetModel() == npcmodel6 then
                                    if readmove2e == "growl" then
                                      RunConsoleCommand("k2f")
                                      RunConsoleCommand("playsound2")
                                      RunConsoleCommand("growl")
                                      RunConsoleCommand("st3")

                                      local DermaFrame2m = vgui.Create( "DFrame" )
                                      DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                      DermaFrame2m:SetSize( 100, 50 )
                                      DermaFrame2m:SetTitle( "" )
                                      DermaFrame2m:SetVisible( true )
                                      DermaFrame2m:SetDraggable(false)
                                      DermaFrame2m:ShowCloseButton(false)

                                      DermaFrame2m.Paint = function()
                                        draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                      end


                                      timer.Create("move1timer", 1, 1, function()
                                        DermaFrame2m:Close()
                                      end)
                                      k2 = true
                                      RunConsoleCommand("k2f")
                                      end else
                                    end

                                    if LocalPlayer():GetModel() == npcmodel then
                                      if readmove2 == "Double Edge" then
                                        RunConsoleCommand("doubed")
                                        RunConsoleCommand("createtub3")
                                        RunConsoleCommand("std2b")

                                        local DermaFrame2m = vgui.Create( "DFrame" )
                                        DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                        DermaFrame2m:SetSize( 100, 50 )
                                        DermaFrame2m:SetTitle( "" )
                                        DermaFrame2m:SetVisible( true )
                                        DermaFrame2m:SetDraggable(false)
                                        DermaFrame2m:ShowCloseButton(false)

                                        DermaFrame2m.Paint = function()
                                          draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                        end


                                        timer.Create("move1timer", 1, 1, function()
                                          DermaFrame2m:Close()
                                        end)
                                        k2 = true
                                        RunConsoleCommand("k2f")
                                        end else
                                      end

                                      if LocalPlayer():GetModel() == npcmodel then
                                        if readmove2 == "growth" then
                                          RunConsoleCommand("growth")

                                          local DermaFrame2m = vgui.Create( "DFrame" )
                                          DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                          DermaFrame2m:SetSize( 100, 50 )
                                          DermaFrame2m:SetTitle( "" )
                                          DermaFrame2m:SetVisible( true )
                                          DermaFrame2m:SetDraggable(false)
                                          DermaFrame2m:ShowCloseButton(false)

                                          DermaFrame2m.Paint = function()
                                            draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                          end


                                          timer.Create("move1timer", 1, 1, function()
                                            DermaFrame2m:Close()
                                          end)
                                          k2 = true
                                          RunConsoleCommand("k2f")
                                          end else
                                        end

                                        if LocalPlayer():GetModel() == npcmodel then
                                          if readmove2 == "takedown" then
                                            RunConsoleCommand("takedown")
                                            RunConsoleCommand("createtub2")
                                            RunConsoleCommand("std2a")
                                            RunConsoleCommand("emitsoundt")

                                            local DermaFrame2m = vgui.Create( "DFrame" )
                                            DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                            DermaFrame2m:SetSize( 100, 50 )
                                            DermaFrame2m:SetTitle( "" )
                                            DermaFrame2m:SetVisible( true )
                                            DermaFrame2m:SetDraggable(false)
                                            DermaFrame2m:ShowCloseButton(false)

                                            DermaFrame2m.Paint = function()
                                              draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                            end


                                            timer.Create("move1timer", 1, 1, function()
                                              DermaFrame2m:Close()
                                            end)
                                            k2 = true
                                            RunConsoleCommand("k2f")
                                            end else
                                          end

                                          if LocalPlayer():GetModel() == npcmodel then
                                            if readmove2 == "growl" then
                                              RunConsoleCommand("k2f")
                                              RunConsoleCommand("playsound2")
                                              RunConsoleCommand("growl")
                                              RunConsoleCommand("st3")
                                              k2 = true

                                              local DermaFrame2m = vgui.Create( "DFrame" )
                                              DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                              DermaFrame2m:SetSize( 100, 50 )
                                              DermaFrame2m:SetTitle( "" )
                                              DermaFrame2m:SetVisible( true )
                                              DermaFrame2m:SetDraggable(false)
                                              DermaFrame2m:ShowCloseButton(false)

                                              DermaFrame2m.Paint = function()
                                                draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                              end

                                              timer.Create("move2timer", 1, 1, function()
                                                DermaFrame2m:Close()
                                              end)
                                              end else end

                                              if LocalPlayer():GetModel() == npcmodel then
                                                if readmove2 == "tail whip" then
                                                  k2 = true
                                                  RunConsoleCommand("k2f")
                                                  RunConsoleCommand("tailwhip")
                                                  RunConsoleCommand("shadow")
                                                  local DermaFrame2m = vgui.Create( "DFrame" )
                                                  DermaFrame2m:SetPos( ScrW() / 2 - 100, ScrH() / 2 - 1000 )
                                                  DermaFrame2m:SetSize( 100, 50 )
                                                  DermaFrame2m:SetTitle( "" )
                                                  DermaFrame2m:SetVisible( true )
                                                  DermaFrame2m:SetDraggable(false)
                                                  DermaFrame2m:ShowCloseButton(false)

                                                  DermaFrame2m.Paint = function()
                                                    draw.RoundedBox( 8, 0, 0, DermaFrame2m:GetWide(), DermaFrame2m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                  end

                                                  timer.Create("move2timer", 1, 1, function()
                                                    DermaFrame2m:Close()
                                                  end)
                                                end
                                              end
                                            end

                                            if input.IsKeyDown( KEY_3 ) and not k3 then
                                              if LocalPlayer():GetModel() == npcmodel then
                                                if readmove3 == "Dragon Rage" then
                                                  RunConsoleCommand("dragonr")

                                                  local DermaFrame3m = vgui.Create( "DFrame" )
                                                  DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                  DermaFrame3m:SetSize( 100, 50 )
                                                  DermaFrame3m:SetTitle( "" )
                                                  DermaFrame3m:SetVisible( true )
                                                  DermaFrame3m:SetDraggable(false)
                                                  DermaFrame3m:ShowCloseButton(false)

                                                  DermaFrame3m.Paint = function()
                                                    draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                  end
                                                  timer.Create("move1timer", 3 / 4, 1, function()
                                                    DermaFrame3m:Close()
                                                  end)
                                                  k3 = true
                                                  RunConsoleCommand("k3f")
                                                end
                                              end

                                              if LocalPlayer():GetModel() == npcmodel then
                                                if readmove3 == "ember" then
                                                  RunConsoleCommand("ember")

                                                  local DermaFrame3m = vgui.Create( "DFrame" )
                                                  DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                  DermaFrame3m:SetSize( 100, 50 )
                                                  DermaFrame3m:SetTitle( "" )
                                                  DermaFrame3m:SetVisible( true )
                                                  DermaFrame3m:SetDraggable(false)
                                                  DermaFrame3m:ShowCloseButton(false)

                                                  DermaFrame3m.Paint = function()
                                                    draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                  end
                                                  timer.Create("move1timer", 3 / 4, 1, function()
                                                    DermaFrame3m:Close()
                                                  end)
                                                  k3 = true
                                                  RunConsoleCommand("k3f")
                                                end
                                              end
                                              if LocalPlayer():GetModel() == npcmodel then
                                                if readmove3 == "rzl" then
                                                  RunConsoleCommand("razr")

                                                  local DermaFrame3m = vgui.Create( "DFrame" )
                                                  DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                  DermaFrame3m:SetSize( 100, 50 )
                                                  DermaFrame3m:SetTitle( "" )
                                                  DermaFrame3m:SetVisible( true )
                                                  DermaFrame3m:SetDraggable(false)
                                                  DermaFrame3m:ShowCloseButton(false)

                                                  DermaFrame3m.Paint = function()
                                                    draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                  end
                                                  timer.Create("move1timer", 1, 1, function()
                                                    DermaFrame3m:Close()
                                                  end)
                                                  k3 = true
                                                  RunConsoleCommand("k3f")
                                                  end else
                                                end

                                                if LocalPlayer():GetModel() == npcmodel then
                                                  if readmove1 == "Double Edge" then
                                                    RunConsoleCommand("doubed")
                                                    RunConsoleCommand("createtub3")
                                                    RunConsoleCommand("std2b")

                                                    local DermaFrame3m = vgui.Create( "DFrame" )
                                                    DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                    DermaFrame3m:SetSize( 100, 50 )
                                                    DermaFrame3m:SetTitle( "" )
                                                    DermaFrame3m:SetVisible( true )
                                                    DermaFrame3m:SetDraggable(false)
                                                    DermaFrame3m:ShowCloseButton(false)

                                                    DermaFrame3m.Paint = function()
                                                      draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                    end
                                                    timer.Create("move1timer", 1, 1, function()
                                                      DermaFrame3m:Close()
                                                    end)
                                                    k3 = true
                                                    RunConsoleCommand("k3f")
                                                    end else
                                                  end

                                                  if LocalPlayer():GetModel() == npcmodel then
                                                    if readmove1 == "growth" then
                                                      RunConsoleCommand("growth")

                                                      local DermaFrame3m = vgui.Create( "DFrame" )
                                                      DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                      DermaFrame3m:SetSize( 100, 50 )
                                                      DermaFrame3m:SetTitle( "" )
                                                      DermaFrame3m:SetVisible( true )
                                                      DermaFrame3m:SetDraggable(false)
                                                      DermaFrame3m:ShowCloseButton(false)

                                                      DermaFrame3m.Paint = function()
                                                        draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                      end
                                                      timer.Create("move1timer", 1, 1, function()
                                                        DermaFrame3m:Close()
                                                      end)
                                                      k3 = true
                                                      RunConsoleCommand("k3f")
                                                      end else
                                                    end

                                                    if LocalPlayer():GetModel() == npcmodel then
                                                      if readmove1 == "takedown" then
                                                        RunConsoleCommand("takedown")
                                                        RunConsoleCommand("createtub2")
                                                        RunConsoleCommand("std2a")
                                                        RunConsoleCommand("emitsoundt")

                                                        local DermaFrame3m = vgui.Create( "DFrame" )
                                                        DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                        DermaFrame3m:SetSize( 100, 50 )
                                                        DermaFrame3m:SetTitle( "" )
                                                        DermaFrame3m:SetVisible( true )
                                                        DermaFrame3m:SetDraggable(false)
                                                        DermaFrame3m:ShowCloseButton(false)

                                                        DermaFrame3m.Paint = function()
                                                          draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                        end
                                                        timer.Create("move1timer", 1, 1, function()
                                                          DermaFrame3m:Close()
                                                        end)
                                                        k3 = true
                                                        RunConsoleCommand("k3f")
                                                        end else
                                                      end

                                                      if LocalPlayer():GetModel() == npcmodel then
                                                        if readmove3 == "Water Gun" then
                                                          RunConsoleCommand("k3f")
                                                          RunConsoleCommand("watergun")
                                                          k3 = true

                                                          local DermaFrame3m = vgui.Create( "DFrame" )
                                                          DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                          DermaFrame3m:SetSize( 100, 50 )
                                                          DermaFrame3m:SetTitle( "" )
                                                          DermaFrame3m:SetVisible( true )
                                                          DermaFrame3m:SetDraggable(false)
                                                          DermaFrame3m:ShowCloseButton(false)

                                                          DermaFrame3m.Paint = function()
                                                            draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                          end

                                                          timer.Create("move3timer", 3 / 4, 1, function()
                                                            DermaFrame3m:Close()
                                                          end)

                                                        end
                                                      end

                                                      if LocalPlayer():GetModel() == npcmodel then
                                                        if readmove3 == "vinewip" or readmove3 == "vinewipm" then
                                                          print("vw")
                                                          RunConsoleCommand("k3f")
                                                          RunConsoleCommand("playsound3")
                                                          RunConsoleCommand("vinewip")
                                                          RunConsoleCommand("st4")
                                                          k3 = true

                                                          local DermaFrame3m = vgui.Create( "DFrame" )
                                                          DermaFrame3m:SetPos( ScrW() / 2, ScrH() / 2 - 1000 )
                                                          DermaFrame3m:SetSize( 100, 50 )
                                                          DermaFrame3m:SetTitle( "" )
                                                          DermaFrame3m:SetVisible( true )
                                                          DermaFrame3m:SetDraggable(false)
                                                          DermaFrame3m:ShowCloseButton(false)

                                                          DermaFrame3m.Paint = function()
                                                            draw.RoundedBox( 8, 0, 0, DermaFrame3m:GetWide(), DermaFrame3m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                          end

                                                          timer.Create("move3timer", 3 / 4, 1, function()
                                                            DermaFrame3m:Close()
                                                          end)

                                                        end
                                                      end
                                                    end

                                                    if input.IsKeyDown( KEY_4 ) and not k4 then

                                                      if LocalPlayer():GetModel() == npcmodel then
                                                        if readmove4 == "Smoke Screen" then
                                                          RunConsoleCommand("smokescreen")

                                                          local DermaFrame4m = vgui.Create( "DFrame" )
                                                          DermaFrame4m:SetPos( ScrW() / 2 + 100, ScrH() / 2 - 1000 )
                                                          DermaFrame4m:SetSize( 100, 50 )
                                                          DermaFrame4m:SetTitle( "" )
                                                          DermaFrame4m:SetVisible( true )
                                                          DermaFrame4m:SetDraggable(false)
                                                          DermaFrame4m:ShowCloseButton(false)

                                                          DermaFrame4m.Paint = function()
                                                            draw.RoundedBox( 8, 0, 0, DermaFrame4m:GetWide(), DermaFrame4m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                          end

                                                          timer.Create("move1timer", 1, 1, function()
                                                            DermaFrame4m:Close()
                                                          end)
                                                          k4 = true
                                                          RunConsoleCommand("k4f")
                                                          end else
                                                        end

                                                        if LocalPlayer():GetModel() == npcmodel then
                                                          if readmove1 == "rzl" then
                                                            RunConsoleCommand("razr")

                                                            local DermaFrame4m = vgui.Create( "DFrame" )
                                                            DermaFrame4m:SetPos( ScrW() / 2 + 100, ScrH() / 2 - 1000 )
                                                            DermaFrame4m:SetSize( 100, 50 )
                                                            DermaFrame4m:SetTitle( "" )
                                                            DermaFrame4m:SetVisible( true )
                                                            DermaFrame4m:SetDraggable(false)
                                                            DermaFrame4m:ShowCloseButton(false)

                                                            DermaFrame4m.Paint = function()
                                                              draw.RoundedBox( 8, 0, 0, DermaFrame4m:GetWide(), DermaFrame4m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                            end

                                                            timer.Create("move1timer", 1, 1, function()
                                                              DermaFrame4m:Close()
                                                            end)
                                                            k4 = true
                                                            RunConsoleCommand("k4f")
                                                            end else
                                                          end

                                                          if LocalPlayer():GetModel() == npcmodel then
                                                            if readmove1 == "Double Edge" then
                                                              RunConsoleCommand("doubed")
                                                              RunConsoleCommand("createtub3")
                                                              RunConsoleCommand("std2b")

                                                              local DermaFrame4m = vgui.Create( "DFrame" )
                                                              DermaFrame4m:SetPos( ScrW() / 2 + 100, ScrH() / 2 - 1000 )
                                                              DermaFrame4m:SetSize( 100, 50 )
                                                              DermaFrame4m:SetTitle( "" )
                                                              DermaFrame4m:SetVisible( true )
                                                              DermaFrame4m:SetDraggable(false)
                                                              DermaFrame4m:ShowCloseButton(false)

                                                              DermaFrame4m.Paint = function()
                                                                draw.RoundedBox( 8, 0, 0, DermaFrame4m:GetWide(), DermaFrame4m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                              end

                                                              timer.Create("move1timer", 1, 1, function()
                                                                DermaFrame4m:Close()
                                                              end)
                                                              k4 = true
                                                              RunConsoleCommand("k4f")
                                                              end else
                                                            end

                                                            if LocalPlayer():GetModel() == npcmodel then
                                                              if readmove1 == "growth" then
                                                                RunConsoleCommand("growth")

                                                                local DermaFrame4m = vgui.Create( "DFrame" )
                                                                DermaFrame4m:SetPos( ScrW() / 2 + 100, ScrH() / 2 - 1000 )
                                                                DermaFrame4m:SetSize( 100, 50 )
                                                                DermaFrame4m:SetTitle( "" )
                                                                DermaFrame4m:SetVisible( true )
                                                                DermaFrame4m:SetDraggable(false)
                                                                DermaFrame4m:ShowCloseButton(false)

                                                                DermaFrame4m.Paint = function()
                                                                  draw.RoundedBox( 8, 0, 0, DermaFrame4m:GetWide(), DermaFrame4m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                                end

                                                                timer.Create("move1timer", 1, 1, function()
                                                                  DermaFrame4m:Close()
                                                                end)
                                                                k4 = true
                                                                RunConsoleCommand("k4f")
                                                                end else
                                                              end

                                                              if LocalPlayer():GetModel() == npcmodel then
                                                                if readmove1 == "takedown" then
                                                                  RunConsoleCommand("takedown")
                                                                  RunConsoleCommand("createtub2")
                                                                  RunConsoleCommand("std2a")
                                                                  RunConsoleCommand("emitsoundt")

                                                                  local DermaFrame4m = vgui.Create( "DFrame" )
                                                                  DermaFrame4m:SetPos( ScrW() / 2 + 100, ScrH() / 2 - 1000 )
                                                                  DermaFrame4m:SetSize( 100, 50 )
                                                                  DermaFrame4m:SetTitle( "" )
                                                                  DermaFrame4m:SetVisible( true )
                                                                  DermaFrame4m:SetDraggable(false)
                                                                  DermaFrame4m:ShowCloseButton(false)

                                                                  DermaFrame4m.Paint = function()
                                                                    draw.RoundedBox( 8, 0, 0, DermaFrame4m:GetWide(), DermaFrame4m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                                  end

                                                                  timer.Create("move1timer", 1, 1, function()
                                                                    DermaFrame4m:Close()
                                                                  end)
                                                                  k4 = true
                                                                  RunConsoleCommand("k4f")
                                                                  end else
                                                                end

                                                                if LocalPlayer():GetModel() == npcmodel then
                                                                  RunConsoleCommand("resendvariables")
                                                                  if readmove4 == "poisonpowderm" then

                                                                    RunConsoleCommand("k4f")
                                                                    RunConsoleCommand("playsound4")
                                                                    RunConsoleCommand("poisonpowder")
                                                                    RunConsoleCommand("st4")
                                                                    k4 = true
                                                                    local DermaFrame4m = vgui.Create( "DFrame" )
                                                                    DermaFrame4m:SetPos( ScrW() / 2 + 100, ScrH() / 2 - 1000 )
                                                                    DermaFrame4m:SetSize( 100, 50 )
                                                                    DermaFrame4m:SetTitle( "" )
                                                                    DermaFrame4m:SetVisible( true )
                                                                    DermaFrame4m:SetDraggable(false)
                                                                    DermaFrame4m:ShowCloseButton(false)

                                                                    DermaFrame4m.Paint = function()
                                                                      draw.RoundedBox( 8, 0, 0, DermaFrame4m:GetWide(), DermaFrame4m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                                    end

                                                                    timer.Create("move4timer", 1.5, 1, function()
                                                                      DermaFrame4m:Close()
                                                                    end)
                                                                  end
                                                                end

                                                                if readmove4 == "withdraw" then
                                                                  RunConsoleCommand("k4f")
                                                                  RunConsoleCommand("withdrawc")
                                                                  k4 = true
                                                                  local DermaFrame4m = vgui.Create( "DFrame" )
                                                                  DermaFrame4m:SetPos( ScrW() / 2 + 100, ScrH() / 2 - 1000 )
                                                                  DermaFrame4m:SetSize( 100, 50 )
                                                                  DermaFrame4m:SetTitle( "" )
                                                                  DermaFrame4m:SetVisible( true )
                                                                  DermaFrame4m:SetDraggable(false)
                                                                  DermaFrame4m:ShowCloseButton(false)

                                                                  DermaFrame4m.Paint = function()
                                                                    draw.RoundedBox( 8, 0, 0, DermaFrame4m:GetWide(), DermaFrame4m:GetTall(), Color( 0, 0, 0, 150 ) )
                                                                  end

                                                                  timer.Create("move4timer", 1.5, 1, function()
                                                                    DermaFrame4m:Close()
                                                                  end)
                                                                end

                                                              end
                                                            end

                                                            hook.Add("Think", "BM - Clients - Key", KeyPress)

                                                            concommand.Add("k1f", function()
                                                              timer.Create("testtimer1", 1, 1, function()
                                                              k1 = false
                                                            end)
                                                          end)

                                                          concommand.Add("k2f", function()
                                                            timer.Create("testtimer2", 1, 1, function()
                                                            k2 = false
                                                          end)
                                                        end)

                                                        concommand.Add("k3f", function()
                                                          timer.Create("testtimer3", 3 / 4, 1, function()
                                                          k3 = false
                                                        end)
                                                      end)

                                                      concommand.Add("k4f", function()
                                                        timer.Create("testtimer4", 1.5, 1, function()
                                                        k4 = false
                                                      end)
                                                    end)

                                                    concommand.Add("learnmovederma", function()

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
                                                      richtext:AppendText( "Squirtle wants to learn Bubble, but can't learn more than four moves. Which move should be deleted?" )

                                                      local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton:SetText( readmove1 ) /  / Set the text on the button
                                                      DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
                                                      DermaButton:SetSize( 150, 90 )
                                                      function DermaButton:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("bbl1")
                                                      end

                                                      local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton2:SetText( readmove2 ) /  / Set the text on the button
                                                      DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
                                                      DermaButton2:SetSize( 150, 90 )
                                                      function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("bbl2")
                                                      end

                                                      local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton3:SetText( readmove3 ) /  / Set the text on the button
                                                      DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
                                                      DermaButton3:SetSize( 150, 90 )

                                                      function DermaButton3:DoClick()
                                                        RunConsoleCommand("bbl3") -- Defines what should happen when the label is clicked
                                                      end

                                                      local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton4:SetText( readmove4 ) /  / Set the text on the button
                                                      DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
                                                      DermaButton4:SetSize( 150, 90 )

                                                      function DermaButton4:DoClick()
                                                        RunConsoleCommand("bbl4") -- Defines what should happen when the label is clicked
                                                      end

                                                    end)

                                                    concommand.Add("learnmovederma2", function()

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
                                                      richtext:AppendText( "Bulbasaur wants to learn Takedown, but can't learn more than four moves. Which move should be deleted?" )

                                                      local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton:SetText( readmove1 ) /  / Set the text on the button
                                                      DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
                                                      DermaButton:SetSize( 150, 90 )
                                                      function DermaButton:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("tkdn1")
                                                      end

                                                      local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton2:SetText( readmove2 ) /  / Set the text on the button
                                                      DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
                                                      DermaButton2:SetSize( 150, 90 )
                                                      function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("tkdn2")
                                                        RunConsoleCommand("closemovesderma")
                                                        RunConsoleCommand("openmovesderma")
                                                      end

                                                      local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton3:SetText( readmove3 ) /  / Set the text on the button
                                                      DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
                                                      DermaButton3:SetSize( 150, 90 )

                                                      function DermaButton3:DoClick()
                                                        RunConsoleCommand("tkdn3") -- Defines what should happen when the label is clicked
                                                      end

                                                      local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton4:SetText( readmove4 ) /  / Set the text on the button
                                                      DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
                                                      DermaButton4:SetSize( 150, 90 )

                                                      function DermaButton4:DoClick()
                                                        RunConsoleCommand("tkdn4") -- Defines what should happen when the label is clicked
                                                      end

                                                    end)

                                                    concommand.Add("learnmovederma3", function()

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
                                                      richtext:AppendText( "Bulbasaur wants to learn Razor Leaf, but can't learn more than four moves. Which move should be deleted?" )

                                                      local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton:SetText( readmove1 ) /  / Set the text on the button
                                                      DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
                                                      DermaButton:SetSize( 150, 90 )
                                                      function DermaButton:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("rz1")
                                                      end

                                                      local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton2:SetText( readmove2 ) /  / Set the text on the button
                                                      DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
                                                      DermaButton2:SetSize( 150, 90 )
                                                      function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("rz2")
                                                        RunConsoleCommand("closemovesderma")
                                                        RunConsoleCommand("openmovesderma")
                                                      end

                                                      local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton3:SetText( readmove3 ) /  / Set the text on the button
                                                      DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
                                                      DermaButton3:SetSize( 150, 90 )

                                                      function DermaButton3:DoClick()
                                                        RunConsoleCommand("rz3") -- Defines what should happen when the label is clicked
                                                      end

                                                      local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton4:SetText( readmove4 ) /  / Set the text on the button
                                                      DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
                                                      DermaButton4:SetSize( 150, 90 )

                                                      function DermaButton4:DoClick()
                                                        RunConsoleCommand("rz4") -- Defines what should happen when the label is clicked
                                                      end

                                                    end)

                                                    concommand.Add("learnmovederma4", function()

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
                                                      richtext:AppendText( "Bulbasaur wants to learn Growth, but can't learn more than four moves. Which move should be deleted?" )

                                                      local DermaButton = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton:SetText( readmove1 ) /  / Set the text on the button
                                                      DermaButton:SetPos( 50, 180 ) /  / Set the position on the frame
                                                      DermaButton:SetSize( 150, 90 )
                                                      function DermaButton:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("gw1")
                                                      end

                                                      local DermaButton2 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton2:SetText( readmove2 ) /  / Set the text on the button
                                                      DermaButton2:SetPos( 250, 180 ) /  / Set the position on the frame
                                                      DermaButton2:SetSize( 150, 90 )
                                                      function DermaButton2:DoClick() -- Defines what should happen when the label is clicked
                                                        RunConsoleCommand("gw2")
                                                      end

                                                      local DermaButton3 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton3:SetText( readmove3 ) /  / Set the text on the button
                                                      DermaButton3:SetPos( 450, 180 ) /  / Set the position on the frame
                                                      DermaButton3:SetSize( 150, 90 )

                                                      function DermaButton3:DoClick()
                                                        RunConsoleCommand("gw3") -- Defines what should happen when the label is clicked
                                                      end

                                                      local DermaButton4 = vgui.Create( "DButton", Frame ) /  / Create the button and parent it to the frame
                                                      DermaButton4:SetText( readmove4 ) /  / Set the text on the button
                                                      DermaButton4:SetPos( 650, 180 ) /  / Set the position on the frame
                                                      DermaButton4:SetSize( 150, 90 )

                                                      function DermaButton4:DoClick()
                                                        RunConsoleCommand("gw4") -- Defines what should happen when the label is clicked
                                                      end

                                                    end)
