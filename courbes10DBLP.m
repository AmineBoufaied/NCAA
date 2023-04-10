%G?n?ration de quatre fonctions cosinus
IPSOMPOXMAX=[1 0.5279;2 0.4725;3 0.4644;4 0.3618;5 0.3728;6 0.3344;7 0.3099;8 0.3251;9 0.2433;10 0.2183];
IPSOMPOXMIN=[1 0.4619;2 0.4145;3 0.4084;4 0.3158;5 0.3048;6 0.2664;7 0.2639;8 0.2431;9 0.1373;10 0.1623];
PSOMAX=[1 0.5027;2 0.4741;3 0.4075;4 0.4335;5 0.3741;6 0.3396;7 0.3188;8 0.3268;9 0.2415;10 0.2315];
PSOMIN=[1 0.4347;2 0.3701;3 0.3655;4 0.3395;5 0.3061;6 0.2816;7 0.2728;8 0.2648;9 0.1635;10 0.1735];
grid
%axis([50 2.5 -5 13])
hold
plot(IPSOMPOXMAX(:,1),IPSOMPOXMAX(:,2),'r');
plot(IPSOMPOXMIN(:,1),IPSOMPOXMIN(:,2),'r');
plot(PSOMAX(:,1),PSOMAX(:,2),'b','linestyle','--');
plot(PSOMIN(:,1),PSOMIN(:,2),'b','linestyle','--');
% La fonction plot fonctionne par paire: on indique d'abord le vecteur en abscisse puis le vecteur en ordonn?e.
% On peut par la suite rajouter une couleur ou un style en utilisant un code entre les ''. 
%Ces codes sont r?sum?s en fin de tutoriel (menututo.com) 

title({'No. of working groups = 10'},...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
      'FontSize',12,'FontWeight','bold')
% L'option Location indique l'emplacement de la l?gende dans la figure
% L'option FontSize indique la taille de la police
% L'option FontWeight permet de mettre le texte en gras en ?crivant 'bold' ? la suite
legend({'IPSOMPOX','IPSOMPOX','PSO','PSO'},'Location','northeast',...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
      'FontSize',12,'FontWeight','bold')
  
xlabel('Number of iterations','FontSize',15,...              %Nom de l'axe des abscisses du trac?
       'FontWeight','bold','FontName',...
       'Times New Roman','Color','b')
ylabel('Knowledge difference cost','FontSize',15,...      %Nom de l'axe des ordonn?es du trac?
       'FontWeight','bold','FontName',...
       'Times New Roman','Color','b')