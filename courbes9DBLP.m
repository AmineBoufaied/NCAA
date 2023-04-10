%G?n?ration de quatre fonctions cosinus
IPSOMPOXMAX=[1 0.3559; 2 0.3172;3 0.2564;4 0.1643;5 0.1713;6 0.1726;7 0.1612;8 0.0775;9 0.0805;10 0.0786];
IPSOMPOXMIN=[1 0.2499;2 0.2332;3 0.1544;4 0.1203;5 0.1133;6 0.0986;7 0.0792;8 0.0335;9 0.0305;10 0.0166];
PSOMAX=[1 0.3254;2 0.3314;3 0.2714;4 0.1734;5 0.1704;6 0.1435;7 0.1535;8 0.0992;9 0.1062;10 0.1192];
PSOMIN=[1 0.2554;2 0.2494;3 0.1854;4 0.0954;5 0.0984;6 0.0815;7 0.0715;8 0.0552;9 0.0482;10 0.0352];
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

title({'No. of working groups = 5'},...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
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