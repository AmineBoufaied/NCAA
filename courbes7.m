%G?n?ration de quatre fonctions cosinus
IPSOMPOXMAX=[1 0.3788;2 0.356;3 0.3445;4 0.3375;5 0.2741;6 0.2611;7 0.2175;8 0.2355;9 0.2225;10 0.1955;11 0.1955;12 0.1759;13 0.1737;14 0.1797;15 0.1627];
IPSOMPOXMIN=[1 0.3008;2 0.272;3 0.240;4 0.2475;5 0.2021;6 0.2151;7 0.1615;8 0.1435;9 0.1565;10 0.1315;11 0.1315;12 0.1199;13 0.1077;14 0.1017;15 0.1187];
PSOMAX=[1 0.5237;2 0.4941;3 0.4215;4 0.4355;5 0.3791;6 0.3585;7 0.3073;8 0.3093;9 0.2563;10 0.2283;11 0.2383;12 0.2363;13 0.2104;14 0.1893;15 0.1923];
PSOMIN=[1 0.4097;2 0.3921;3 0.3635;4 0.3495;5 0.3371;6 0.2625;7 0.2473;8 0.2453;9 0.1443;10 0.1703;11 0.1603;12 0.1623;13 0.1464;14 0.1253;15 0.1223];
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

title({'No. of teams = 10'},...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
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