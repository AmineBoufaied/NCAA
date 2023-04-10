function ff = standard_deviation(x,groups,z,n,m)

% This cost function allows to return the standard deviation of the
% position of the particule
   
   % Calculating the knowledge index of the groups
   Varpart = [1 n];
   xx = zeros(Varpart);
   
   for j=1:m 
     xx(groups(j).number) = xx(groups(j).number) + z(x(j)).FRI;
   end 
   
   % Calculating the average AV of the different knowledge indexs KIs

   AV = 0;
   for j=1:n 
      AV = AV + xx(j) ;
   end

   AV = AV / n;

   % Calculating the variance

   V = 0;
   for j=1:n 
      V = V + (xx(j) - AV)^2;
   end
   V = V / n;

   % Calculating the the standard deviation
   
   ff = sqrt(V);
  
end
   