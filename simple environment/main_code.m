 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%% Robot_Environment Code %%%%%
 %%%% Mid-term Assessment %%%%%%%%
 %%%% Avik Das - 33034339 %%%%%%%%
 %%%% Edited from code provided %%
 %%%% by Dr. Lyuba Alboul %%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clf
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Position of obstacles and goals 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% coefficients Ki below are to keep potential functions of objects in the environment within
% certain thresholds. (Consider them as 'weights' of objects). The
% coefficients are determined empirically.
%Obstacle 1
K1=0.4; % 
Obs1=[2 2.5];
 
%Obstacle 2
K2=0.3;
Obs2=[6 2];
 
%Obstacle 3
K3=0.5;
Obs3=[6 4.2];

%Obstacle 4
K4=0.6;
Obs4=[5 8];

%Obstacle 5
K5=0.6;
Obs5=[7.2 6];

%Obstacle 6
K6=0.45;
Obs6=[3.8 3.5];

%Obstacle 7
K7=0.4;
Obs7=[9 3];
 
%Goal
Kg=0.11;
Goal=[8 8];
 
%Robot
Robot=[1 1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Original Robot Environment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
circleBlack(Robot(1)*10,Robot(2)*10,2,100); %robot 1

circleBlue(Goal(1)*10,Goal(2)*10,6,8);%goal

circleGreen(Obs1(1)*10,Obs1(2)*10,5,100);%obstacle 1
circleGreen(Obs2(1)*10,Obs2(2)*10,4,100);%obstacle 2
circleGreen(Obs3(1)*10,Obs3(2)*10,6,100);%obstacle 3
circleGreen(Obs4(1)*10,Obs4(2)*10,9,100);%obstacle 4
circleGreen(Obs5(1)*10,Obs5(2)*10,8,100);%obstacle 5
circleGreen(Obs6(1)*10,Obs6(2)*10,6,100);%obstacle 6
circleGreen(Obs7(1)*10,Obs7(2)*10,6,100);%obstacle 7

figure(1)
title('Environment')
hold on
axis([0 100 0 100]);
rectangle('Position',[0,0,100,100],'Curvature', [0,0],...
    'LineWidth', 2), hold on

grid on;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Create Repulsive and attractive potential field forces
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Matrix X x Y of  100by100
i=1:100;
j=1:100;
[I,J] = meshgrid(i,j);
Z = []; %empty matrix for z-axis plot

for i=1:100 
    for j=1:100 
        pos = [j/10 i/10]; % scaled to fit 100by100 matrix
        z=0;    %accumulator
        
        %Obstacles with exponential curve while goal is by vector  
        z=z+exp(-norm(pos-Obs1)/K1)+...
            exp(-norm(pos-Obs2)/K2)+...
            exp(-norm(pos-Obs3)/K3)+...
            exp(-norm(pos-Obs4)/K4)+...
            exp(-norm(pos-Obs5)/K5)+...
            exp(-norm(pos-Obs6)/K6)+...
            exp(-norm(pos-Obs7)/K7)+...
            Kg*(norm(Goal-pos));
    % The potential functions chosen are similar to the function proposed in
    % the document 'apf.pdf'
        Z(i,j) = z; %store in matrix
            
    end
end
t=(abs(Robot(1)-Goal(1))+abs(Robot(2)-Goal(2))); 
 % The above is one of possibilities to determine the distance between the
 % robot and the goal, which is not strictly Euclidean
 % 
 count=0;
 while t>0.1 %check if the robot had reached the specified target; stop when reach target
   
     dx=[0 0];  %accumulation matrix
          
    %Obstacles Accumulate vector sum  %Goal Accumulate
    dx= dx + (Robot-Obs1)*exp((-norm(Robot-Obs1))/K1)+...
        (Robot-Obs2)*exp((-norm(Robot-Obs2))/K2)+...
        (Robot-Obs3)*exp((-norm(Robot-Obs3))/K3)+...
        (Robot-Obs4)*exp((-norm(Robot-Obs4))/K4)+...
        (Robot-Obs5)*exp((-norm(Robot-Obs5))/K5)+...
        (Robot-Obs6)*exp((-norm(Robot-Obs6))/K6)+...
        (Robot-Obs7)*exp((-norm(Robot-Obs7))/K7)+...
        Kg*(Goal-Robot)/norm(Goal-Robot);
         
    %Change in Robot Position over time (differenttiation)
    Robot=Robot+dx;
    
   %Calculate the value difference between the robot and the goal 
  t=(abs(Robot(1)-Goal(1))+abs(Robot(2)-Goal(2))); 
  % t = norm(Robot - Goal)
   count=count+1; 
   %update display 
   %calculate distance between robot and goal
   plot(Robot(1,1)*10, Robot(1,2)*10, 'K.','MarkerSize',10);
   title(sprintf('Iteration: %d',count));
   refresh;
   drawnow;
   pause(0.05);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plot Figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2)   %Contour figure
title('Contour')
hold on
contour(Z,22) %plot figure with 22 contours 
pause(1)
hold on;

figure(3)   %combine figures
title('Potential Force Field on Contour')
hold on
contour(Z,22) %plot figure with 22 contours 
hold on
[px,py]=gradient(Z); %calculate gradient 
quiver(I,J,-px,-py,'r'), hold on % plot velocity vectors
pause(1)


figure(4)	
title('Potential Function Landscape')
hold on; grid on
surfc(Z)        %plot surface and contour plot
view([100,35,30])       
pause(1)
hold on;


%%%%%%%%%%%%%%%%%%%%%%%%%%
%Path planning for Robot 
%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plot current robot motion
Robot=[1 1];
 t=(abs(Robot(1)-Goal(1))+abs(Robot(2)-Goal(2))); 
 % The above is one of possibilities to determine the distance between the
 % robot and the goal, which is not strictly Euclidean

 count=0;
 while t>0.1 %check if the robot had reached the specified target; stop when reach target
   
     dx=[0 0];  %accumulation matrix
          
    %Obstacles Accumulate vector sum  %Goal Accumulate
    dx= dx + (Robot-Obs1)*exp((-norm(Robot-Obs1))/K1)+...
        (Robot-Obs2)*exp((-norm(Robot-Obs2))/K2)+...
        (Robot-Obs3)*exp((-norm(Robot-Obs3))/K3)+...
        (Robot-Obs4)*exp((-norm(Robot-Obs4))/K4)+...
        (Robot-Obs5)*exp((-norm(Robot-Obs5))/K5)+...
        (Robot-Obs6)*exp((-norm(Robot-Obs6))/K6)+...
        (Robot-Obs7)*exp((-norm(Robot-Obs7))/K7)+...
        Kg*(Goal-Robot)/norm(Goal-Robot);
         
    %Change in Robot Position over time (differenttiation)
    Robot=Robot+dx;
    
   %Calculate the value difference between the robot and the goal 
  % t=(abs(Robot(1)-Goal(1))+abs(Robot(2)-Goal(2))); 
   t = norm(Robot - Goal);
   count=count+1; 
   %update display 
   %calculate distance between robot and goal
   plot3(Robot(1,1)*10, Robot(1,2)*10, Z(round(Robot(1,2)*10), round(Robot(1,1)*10)),'K.','MarkerSize',10);
   title(sprintf('Iteration: %d',count));
   refresh;
   drawnow;
end



