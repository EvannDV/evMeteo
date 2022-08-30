----- Script créé par evann™ et disponible sur le discord : https://discord.gg/5JtgnbKkRe       




----Citizen.CreateThread(function()

    ----while true do

       ---- Citizen.Wait(10)

       ---- if IsControlJustPressed(1,83) then
            ----menu()
        ----end

    ----end

----end)



RegisterCommand("evMeteo", function(source, args, rawCommand)
    Openmenu()
    

end, false)



function menu()

    local menuTest = RageUI.CreateMenu("Meteo","Made by evann™")

    RageUI.Visible(menuTest, not RageUI.Visible(menuTest))

    while menuTest do
        
        Citizen.Wait(0)

        RageUI.IsVisible(menuTest,true,true,true,function()

            RageUI.Separator("~r~↓ METEO ↓") -----------separateur pour que ce soit propre
        
            RageUI.ButtonWithStyle("Neige",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected) ------- la on definis la meteo
                if Selected then    
                    ExecuteCommand('weather xmas')
                end
            end)  

    

            RageUI.ButtonWithStyle("Pluie",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected) ------- la on definis la meteo
                if Selected then    
                    ExecuteCommand('weather rain')
                end
            end)  



            RageUI.ButtonWithStyle("Ensoleillé",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('weather extrasunny')  
                end
            end) 


            RageUI.ButtonWithStyle("Normal",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('weather neutral')  
                end
            end) 

            RageUI.Separator("~g~↓ HORAIRES ↓") --------------- la on va définir l'heure

            RageUI.ButtonWithStyle("8h",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('time 08 00')
                end
            end) 

            RageUI.ButtonWithStyle("12h",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('time 12 00') 
                end
            end)

            RageUI.ButtonWithStyle("17h",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('time 17 00')
                end
            end) 

            RageUI.ButtonWithStyle("20h",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('time 20 00') 
                end
            end) 

            RageUI.ButtonWithStyle("22h",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('time 22 00')
                end
            end)

            RageUI.ButtonWithStyle("Minuit",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('time 00 00')
                end
            end)  

            RageUI.ButtonWithStyle("5h",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    ExecuteCommand('time 05 00') 
                end
            end) 

        
        end, function()
        end)

        if not RageUI.Visible(menuTest) then
            menuTest=RMenu:DeleteType("Meteo", true)
        end

    end

end



