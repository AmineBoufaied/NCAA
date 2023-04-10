%G?n?ration de quatre fonctions cosinus
Cent=[10 5.630721300000000;20 5.567379500000000;30 7.497968300000000;40 9.805852600000000;50 15.269263600000000;60 20.188015700000000;70 28.084572900000000;80 40.345086200000000;90 52.236825000000000;100 67.808553900000000];
grid
%axis([50 2.5 -5 13])
hold
plot(Cent(:,1),Cent(:,2),'r','linewidth',4);
% La fonction plot fonctionne par paire: on indique d'abord le vecteur en abscisse puis le vecteur en ordonn?e.
% On peut par la suite rajouter une couleur ou un style en utilisant un code entre les ''. 
%Ces codes sont r?sum?s en fin de tutoriel (menututo.com) 

legend({'5 groups'},'Location','northeast',...    %L?gende du trac? avec le texte ? afficher se trouvant entre {}
      'FontSize',12,'FontWeight','bold')
% L'option Location indique l'emplacement de la l?gende dans la figure
% L'option FontSize indique la taille de la police
% L'option FontWeight permet de mettre le texte en gras en ?crivant 'bold' ? la suite
  
xlabel('Number of students','FontSize',15,...              %Nom de l'axe des abscisses du trac?
       'FontWeight','bold','FontName',...
       'Times New Roman','Color','b')
ylabel('Execution time','FontSize',15,...      %Nom de l'axe des ordonn?es du trac?
       'FontWeight','bold','FontName',...
       'Times New Roman','Color','b')