%G?n?ration de quatre fonctions cosinus
IPSOMPOXMAX=[1 0.3525;2 0.2903;3 0.194;4 0.187;5 0.1409;6 0.1649;7 0.1125;8 0.1245;9 0.1155;10 0.1075];
IPSOMPOXMIN=[1 0.2945;2 0.2003;3 0.128;4 0.135;5 0.1069;6 0.0829;7 0.0765;8 0.0645;9 0.0735;10 0.0715];
PSOMAX=[1 0.5343;2 0.4053;3 0.3903;4 0.2947;5 0.2757;6 0.2039;7 0.1789;8 0.1514;9 0.1477;10 0.1281];
PSOMIN=[1 0.4503;2 0.3333;3 0.3483;4 0.2167;5 0.2357;6 0.1199;7 0.1449;8 0.0934;9 0.0657;10 0.0781];
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

title({'No. of teams = 7'},...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
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