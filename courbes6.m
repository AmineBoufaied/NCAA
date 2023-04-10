%G?n?ration de quatre fonctions cosinus
IPSOMPOXMAX=[1 0.3566;2 0.3295;3 0.2961;4 0.3161;5 0.2752;6 0.2496;7 0.2338;8 0.2408;9 0.2504;10 0.2023];
IPSOMPOXMIN=[1 0.2726;2 0.2275;3 0.2421;4 0.2221;5 0.2192;6 0.1716;7 0.1718;8 0.1648;9 0.1404;10 0.1423];
PSOMAX=[1 0.5313;2 0.5443;3 0.3974;4 0.3625;5 0.3282;6 0.3502;7 0.3051;8 0.277;9 0.285;10 0.2645];
PSOMIN=[1 0.4533;2 0.4403;3 0.3154;4 0.2965;5 0.2702;6 0.2482;7 0.2071;8 0.221;9 0.213;10 0.1885];
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

title({'No. of teams = 9'},...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
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