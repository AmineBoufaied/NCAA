clc;
clear;
close all;

%% D?finition du probl?me

FunctionCost = @(x,y,z,n,m) standard_deviation(x,y,z,n,m); % Cost function

tic

prompt = 'Number of students  : ';
nStudents = input(prompt);  % Number of decisionnel variables

VarSize = [1 nStudents];    % Size of the matrix of the decisionnel variables

% Model of a student
empty_student.FRI = []; % fuzzy rating index of a student
empty_student.rank = []; % rank of a student

% creating students
students = repmat(empty_student, nStudents, 1);

for i=1:nStudents
    students(i).FRI = rand;
end

for i=1:nStudents
    students(i).rank = i;
end

% Model of a group
empty_group.number = []; %  Group Number

% Creating Empty groups list
prompt = 'Number of groups : ';
nGroups = input(prompt); % Number of groups
groups = repmat(empty_group, nStudents, 1);


% The number of students per group
zz = fix(nStudents/nGroups);
ww = rem(nStudents,nGroups);

if (ww == 0) % the list is divided into nGroups equal segments of zz students
   disp(['Each group ' num2str(zz) ' students']);
   g1 = 0;
else % the list is divided into nGroups segments, the first g1 segments 
     % have a size equal to zz + 1 and the remaining 
     % segments have a size equal to zz
   g1 = nStudents - zz * nGroups;
   for i=1:g1
      disp(['Group ' num2str(i) ' : ' num2str(zz+1) ' students ']);
   end
   for i=g1+1:nGroups
      disp(['Group ' num2str(i) ' : ' num2str(zz) ' students ']);
   end
   
end

% Creating instances of groups in the group structure
for i=1:g1
    for j=1:(zz+1)
        groups(j+(zz+1)*(i-1)).number = i;
    end    
end
for i=g1+1:nGroups
    for j=1:zz
        groups((zz+1)*g1+j+zz*(i-g1-1)).number = i;
    end    
end

% Using PSO to find balanced teams

%% PSO parameters

MaxIt = 100;                            % Maximum iterations number for the BPSO

% The particule model
empty_particule.Position = [];      % Position of the particule in the research space
empty_particule.Cost = [];          % The particule cost in this position
empty_particule.Best.Position = []; % The best position of the particule
empty_particule.Best.Cost = [];     % The cost of the best position of the particule
%% Creating particules
nPop = nStudents; %the number of particules is equal to the number of students

particule = repmat(empty_particule, nPop, 1);

% Initializing of the best global solution
BestGlobal.Cost = inf;

% Initializing of the population members

 for i=1:nPop
   ii = randperm(nStudents);
   B = students(ii,:);
   
   for j=1:nStudents 
    particule(i).Position(j) = B(j).rank; % creates a student's permutation
   end
   
    % Particule evaluation
    particule(i).Cost = FunctionCost(particule(i).Position, groups,students, nGroups, nStudents);
    %disp(['Particule cost ' num2str(i) ' : ' num2str(particule(i).Cost)]);

    % Updating the local best solution
    particule(i).Best.Position = particule(i).Position;
    particule(i).Best.Cost = particule(i).Cost;
    %disp(['Particule  ' num2str(i) ' : ' num2str(particule(i).Position)]);

    % Updating the global best solution
    if (particule(i).Best.Cost) < (BestGlobal.Cost)
       BestGlobal = particule(i).Best;
    end 
    
    %disp(['THE PARTICULE ' num2str(i) ' IS CREATED']);
end

% A table to save the value of the best cost for each iteration initialized to zeros
BestCosts = zeros(MaxIt, 1); 

%% Principal loop of the PSO
it = 0;
while (it < MaxIt)
    it = it + 1;
    %disp(['iteration : ' num2str(it)]);

    % Defining the three segments in a partiule
    int = rem(nStudents,3);
    lar = fix(nStudents/3); 
    
    % pos : begining index od the first segment in a partiule position
    % pos2 : begining index od the second segment in a partiule position
    % pos3 : begining index od the third segment in a partiule position

    for i=1:nPop
        pos = randi([1 nStudents],1,1);
        %disp(['pos : ' num2str(pos)]);
        if (int == 0) 
           pos2 = mod(lar + pos , nStudents);
           if (pos2 == 0) pos2 = nStudents; end
           pos3 = mod(lar + pos2 , nStudents);
           if (pos3 == 0) pos3 = nStudents; end
        elseif (int == 1) 
           pos2 = mod(lar + pos + 1 , nStudents);
           if (pos2 == 0) pos2 = nStudents; end
           pos3 = mod(lar + pos2 , nStudents);
           if (pos3 == 0) pos3 = nStudents; end
        else
           pos2 = mod(lar + pos + 1 , nStudents);
           if (pos2 == 0) pos2 = nStudents; end
           pos3 = mod(lar + pos2 , nStudents) + 1;
           if (pos3 == 0) pos3 = nStudents; end
        end 
        
        % Updating the position of a particule

        % The first segment is kept unchanged

        % Updating the second segment of the position of a particule from
        % the best local

        j=pos2;
        k=pos2;
        w=0;
        while w < (int + lar)
            h = pos;
            trouve = false;
            while (h ~= pos2) && (trouve == false)
                if (particule(i).Best.Position(k) == particule(i).Position(h))
                    trouve = true;
                else
                    h = h + 1;
                    if (h == (nStudents + 1)) h = 1; end
                end
            end   
            if (trouve == true)
                k = k + 1;
                if (k == (nStudents + 1)) k = 1; end
            else 
                particule(i).Position(j) = particule(i).Best.Position(k);
                j = j + 1;
                k = k + 1;
                if (j == (nStudents + 1)) j = 1; end
                if (k == (nStudents + 1)) k = 1; end
                w = w + 1;
            end
          end
        % Updating the third segment of the position of a particule from
        % the best global

        j=pos3;
        k=pos3;
        w=0;

        while w < lar
            h = pos;
            trouve = false;
            while (h ~= pos3) && (trouve == false)
                if (BestGlobal.Position(k) == particule(i).Position(h))
                    trouve = true;
                else
                    h = h + 1;
                    if (h == (nStudents + 1)) h = 1; end
                end
            end   
            if (trouve == true)
                k = k + 1;
                if (k == (nStudents + 1)) k = 1; end
            else 
                particule(i).Position(j) = BestGlobal.Position(k);
                j = j + 1;
                k = k + 1;
                if (j == (nStudents + 1)) j = 1; end
                if (k == (nStudents + 1)) k = 1; end
                w = w + 1;
            end
        end
                
        % Evaluation of the particule position 
        particule(i).Cost = FunctionCost(particule(i).Position, groups, students, nGroups, nStudents);
        %disp(['cout particule  ' num2str(i) ' : ' num2str(particule(i).Cost)]);

        % Updating the best local (personnel) solution  
        if particule(i).Cost < particule(i).Best.Cost
            
            particule(i).Best.Position = particule(i).Position;
            particule(i).Best.Cost = particule(i).Cost;
            
        % Updating the best global solution 

           if particule(i).Best.Cost < BestGlobal.Cost
             BestGlobal = particule(i).Best;
           end
        
        end
        %disp(['Particule  ' num2str(i) ' : ' num2str(particule(i).Position)]);
    end

% Saving the best cost value
BestCosts(it) = BestGlobal.Cost;

% Showing information related to the iteration
%disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(BestCosts(it))]);
end

% Resulting groups
for i=1:nStudents
    disp(['Student ' num2str(BestGlobal.Position(i)) ' is in group ' num2str(groups(i).number)]);
end

% Calculating the knowledge index of the groups solution

Varpart = [1 nGroups];
xx = zeros(Varpart);
   
for j=1:nStudents 
  xx(groups(j).number) = xx(groups(j).number) + students(BestGlobal.Position(j)).FRI;
end 

for i=1:nGroups
    disp(['Knowledge index of group ' num2str(i) ' is : ' num2str(xx(i))]);
end

timeElapsed = toc;
disp(['Execution time:  ' num2str(timeElapsed)]);

% Figure
figure;
plot(BestCosts, 'LineWidth', 2);
semilogy(BestCosts, 'LineWidth', 2);
xlabel('Iterations');
ylabel('Best costs');
grid on;