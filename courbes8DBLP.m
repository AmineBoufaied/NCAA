%G?n?ration de quatre fonctions cosinus
IPSOMPOXMAX=[1 0.1741;2 0.1781;3 0.1503;4 0.1523;5 0.1085;6 0.1075;7 0.1025;8 0.1035;9 0.081;10 0.09];
IPSOMPOXMIN=[1 0.0921;2 0.0881;3 0.0883;4 0.0863;5 0.0705;6 0.0395;7 0.0445;8 0.0435;9 0.037;10 0.028];
PSOMAX=[1 0.2676;2 0.2556;3 0.2415;4 0.2395;5 0.1483;6 0.1543;7 0.1513;8 0.1187;9 0.1367;10 0.0858];
PSOMIN=[1 0.1996;2 0.2116;3 0.1555;4 0.1575;5 0.0963;6 0.0903;7 0.0933;8 0.0687;9 0.0507;10 0.0338];
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

title({'No. of working groups = 3'},...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
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