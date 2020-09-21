clear

snakes = [snake([1 0 0],'Radim',@AIRadim),... 
           snake([0 1 0],'Nahoda',@AINahoda),...  
          
          ];
      

for k = 1:10 %vice opakovani
gb = GameBoard([60 60]);
gb.Init(snakes,80); %hadi pocet jidla
allLive = true;
while allLive
    gb.Step();
    
    gb.Draw();
    pause(0.00001);
    
    allLive = false;
    for had = snakes
        if had.Active == true
           allLive = true; 
        end
    end
end
disp('=============================');
for had = snakes  
    disp(strcat('Had: ',had.Name,' Skore: ',int2str(had.Score),' Smrt:',had.DeathReport))
end
end
%Vyhlaseni vysledku

%end    
disp('Konec');


