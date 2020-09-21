function smer = AINahoda( map,pos, directionIn )
%AITEST Nahodny alg pro urceni smeru hada
%   smer - smer ve kterem had pojede (1 nahoru,2 pravo, 3 dolu,4 levo, 0 - pouze na zacatku hry )
%   map - mapa okoli.0 - volny prostor, 1 - okraj hraciho pole; -1 - neznamo co (had tam
%   nevidi);2 - zradlo; 200,201,202,... - hlavy hadu; 100,101,102,... -
%   tela hadu;
%   pos - pozice hlavy aktualniho hada
%   directionIn - smer ve kterem had aktualne jede (kdyz se da smer opacny, had naboura)
%   
   
    if(directionIn == 0)
        directionIn = randi(4);
    end
    smer = directionIn;
end

