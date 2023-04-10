%G?n?ration de quatre fonctions cosinus
IPSOMPOXMAX=[1 0.1786;2 0.1786;3 0.1162;4 0.1162;5 0.1162;];
IPSOMPOXMIN=[1 0.1146;2 0.1146;3 0.0624;4 0.0624;5 0.0624;];
PSOMAX=[1 0.1786;2 0.1786;3 0.1571;4 0.1318;5 0.1224;];
PSOMIN=[1 0.1146;2 0.1146;3 0.1031;4 0.0768;5 0.0722;];
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

title({'No. of teams = 3'},...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
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