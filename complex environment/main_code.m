 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%% Robot - Library %%%%%%%%%%%%
 %%%% Environment Code %%%%%%%%%%%
 %%%% Avik Das - 33034339 %%%%%%%%
 %%%% Edited from code provided %%
 %%%% by Dr. Lyuba Alboul 2023 %%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

 close all; %close everything
 clf; %clears current figure window

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Position of obstacles, goals and robots %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 %Obstacle cluster - Standard Desktop PC 1 - Silent study area
 Obs11_PF = 0.4; %force of potential field for obstacle 11
 Obs11 = [0.65 16.4]; %centre of obstacle 11
 Obs12_PF = 0.4; %force of potential field for obstacle 12
 Obs12 = [0.65 14.9]; %centre of obstacle 12

 %Obstacle cluster - Apple Mac - Silent study area
 Obs21_PF = 0.6; %force of potential field for obstacle 21
 Obs21 = [4.45 13.75]; %centre of obstacle 21

 %Obstacle cluster - Standard Desktop PC 2 - Silent study area
 Obs31_PF = 0.4; %force of potential field for obstacle 31
 Obs31 = [8.15 16.4]; %centre of obstacle 31
 Obs32_PF = 0.4; %force of potential field for obstacle 32
 Obs32 = [8.15 14.9]; %centre of obstacle 32

 %Obstacle cluster - Standard Desktop PC 1 - Quiet study area
 Obs41_PF = 0.5; %force of potential field for obstacle 41
 Obs41 = [10.15 16.4]; %centre of obstacle 41
 Obs42_PF = 0.5; %force of potential field for obstacle 42
 Obs42 = [10.15 14.9]; %centre of obstacle 42
 
 %Obstacle cluster - Apple Mac - Quiet study area
 Obs51_PF = 0.6; %force of potential field for obstacle 51
 Obs51 = [14 13.75]; %centre of obstacle 51

 %Obstacle cluster - Standard Desktop PC 2 - Quiet study area
 Obs61_PF = 0.5; %force of potential field for obstacle 61
 Obs61 = [17.85 16.4]; %centre of obstacle 61
 Obs62_PF = 0.5; %force of potential field for obstacle 62
 Obs62 = [17.85 14.9]; %centre of obstacle 62

 %Obstacle cluster - Standup PC(s) - Quiet study area
 Obs101_PF = 0.5; %force of potential field for obstacle 101
 Obs101 = [16.5 11.5]; %centre of obstacle 101
 Obs102_PF = 0.5; %force of potential field for obstacle 102
 Obs102 = [16.5 10.35]; %centre of obstacle 102

 %Obstacle cluster - Water Dispenser
 Obs100_PF = 0.4; %force of potential field for obstacle 100
 Obs100 = [20.1 15]; %centre of obstacle 100

 %Obstacle cluster - Standard Desktop PC 1 - Collaborative study area
 Obs71_PF = 0.5; %force of potential field for obstacle 71
 Obs71 = [22.35 16.4]; %centre of obstacle 71
 Obs72_PF = 0.5; %force of potential field for obstacle 72
 Obs72 = [22.35 14.9]; %centre of obstacle 72
 
 %Obstacle cluster - Apple Mac - Collaborative study area
 Obs81_PF = 0.6; %force of potential field for obstacle 81
 Obs81 = [25.95 13.75]; %centre of obstacle 81
 
 %Obstacle cluster - Standard Desktop PC 2 - Collaborative study area
 Obs91_PF = 0.5; %force of potential field for obstacle 91
 Obs91 = [29.35 16.4]; %centre of obstacle 91
 Obs92_PF = 0.5; %force of potential field for obstacle 92
 Obs92 = [29.35 14.9]; %centre of obstacle 92

 %Obstacle cluster - Desk Only - Collaborative study area
 Obs1_PF = 0.5; %force of potential field for obstacle 1
 Obs1 = [29 11.5]; %centre of obstacle 1
 Obs2_PF = 0.5; %force of potential field for obstacle 2
 Obs2 = [29 10.35]; %centre of obstacle 2

 %Obstacle cluster - Seating Area 1
 Obs4_PF = 0.45; %force of potential field for obstacle 4
 Obs4 = [20.5 8.5]; %centre of obstacle 4
 Obs5_PF = 0.5; %force of potential field for obstacle 5
 Obs5 = [21.75 9.75]; %centre of obstacle 5
 Obs6_PF = 0.5; %force of potential field for obstacle 6
 Obs6 = [23 11]; %centre of obstacle 6

 %Obstacle cluster - Seating Area 2
 Obs7_PF = 0.5; %force of potential field for obstacle 7
 Obs7 = [13 7.5]; %centre of obstacle 7
 Obs8_PF = 0.5; %force of potential field for obstacle 8
 Obs8 = [11.75 8.75]; %centre of obstacle 8
 Obs9_PF = 0.5; %force of potential field for obstacle 9
 Obs9 = [10.5 10]; %centre of obstacle 9

 %Obstacle cluster - Group Booth
 Obs23_PF = 0.5; %force of potential field for obstacle 23
 Obs23 = [3 10]; %centre of obstacle 23
 Obs24_PF = 0.5; %force of potential field for obstacle 24
 Obs24 = [3.5 6.7]; %centre of obstacle 24
 Obs25_PF = 0.5; %force of potential field for obstacle 25
 Obs25 = [6.3 8.75]; %centre of obstacle 25

 %Obstacle cluster - Bookshelf 1
 Obs13_PF = 0.43; %force of potential field for obstacle 13
 Obs13 = [1.5 3.5]; %centre of obstacle 13
 Obs14_PF = 0.4; %force of potential field for obstacle 14
 Obs14 = [1.5 2.25]; %centre of obstacle 14
 Obs15_PF = 0.4; %force of potential field for obstacle 15
 Obs15 = [1.5 1]; %centre of obstacle 15

 %Obstacle cluster - Bookshelf 2
 Obs33_PF = 0.43; %force of potential field for obstacle 33
 Obs33 = [7.15 3.5]; %centre of obstacle 33
 Obs34_PF = 0.4; %force of potential field for obstacle 34
 Obs34 = [7.15 2.25]; %centre of obstacle 34
 Obs35_PF = 0.4; %force of potential field for obstacle 35
 Obs35 = [7.15 1]; %centre of obstacle 35

 %Obstacle cluster - Bookshelf 3
 Obs53_PF = 0.43; %force of potential field for obstacle 53
 Obs53 = [12.5 3.5]; %centre of obstacle 53
 Obs54_PF = 0.4; %force of potential field for obstacle 54
 Obs54 = [12.5 2.25]; %centre of obstacle 54
 Obs55_PF = 0.4; %force of potential field for obstacle 55
 Obs55 = [12.5 1]; %centre of obstacle 55

 %Obstacle cluster - Bookshelf 4
 Obs63_PF = 0.43; %force of potential field for obstacle 63
 Obs63 = [17.5 3.5]; %centre of obstacle 63
 Obs64_PF = 0.4; %force of potential field for obstacle 64
 Obs64 = [17.5 2.25]; %centre of obstacle 64
 Obs65_PF = 0.4; %force of potential field for obstacle 65
 Obs65 = [17.5 1]; %centre of obstacle 65

 %Obstacle cluster - Bookshelf 5
 Obs73_PF = 0.43; %force of potential field for obstacle 73
 Obs73 = [23 3.5]; %centre of obstacle 73
 Obs74_PF = 0.5; %force of potential field for obstacle 74
 Obs74 = [23 2.25]; %centre of obstacle 74
 Obs75_PF = 0.5; %force of potential field for obstacle 75
 Obs75 = [23 1]; %centre of obstacle 75

 %Obstacle cluster - Bookshelf 6
 Obs83_PF = 0.43; %force of potential field for obstacle 83
 Obs83 = [27 6]; %centre of obstacle 83
 Obs84_PF = 0.4; %force of potential field for obstacle 84
 Obs84 = [27 4.75]; %centre of obstacle 84
 Obs85_PF = 0.43; %force of potential field for obstacle 85
 Obs85 = [27 3.5]; %centre of obstacle 85

%------------------------------------------%

 squareDBlue(Obs11(1)*10,Obs11(2)*10,8,5);   %plot obstacle 11 - Standard Desktop PC 1 - Silent study area
 squareDBlue(Obs12(1)*10,Obs12(2)*10,8,5);   %plot obstacle 12 - Standard Desktop PC 1 - Silent study area
 squareDBlue(Obs21(1)*10,Obs21(2)*10,10,5);   %plot obstacle 21 - Apple Mac - Silent study area
 squareDBlue(Obs31(1)*10,Obs31(2)*10,8,5);   %plot obstacle 31 - Standard Desktop PC 2 - Silent study area
 squareDBlue(Obs32(1)*10,Obs32(2)*10,8,5);   %plot obstacle 32 - Standard Desktop PC 2 - Silent study area

 squareYellow(Obs41(1)*10,Obs41(2)*10,8,5);   %plot obstacle 41 - Standard Desktop PC 1 - Quiet study area
 squareYellow(Obs42(1)*10,Obs42(2)*10,8,5);   %plot obstacle 42 - Standard Desktop PC 1 - Quiet study area
 squareYellow(Obs51(1)*10,Obs51(2)*10,10,5);   %plot obstacle 51 - Apple Mac - Quiet study area
 squareYellow(Obs61(1)*10,Obs61(2)*10,8,5);   %plot obstacle 61 - Standard Desktop PC 2 - Quiet study area
 squareYellow(Obs62(1)*10,Obs62(2)*10,8,5);   %plot obstacle 62 - Standard Desktop PC 2 - Quiet study area
 squareYellow(Obs101(1)*10,Obs101(2)*10,8,5);   %plot obstacle 101 - Standup PC(s) - Quiet study area
 squareYellow(Obs102(1)*10,Obs102(2)*10,8,5);   %plot obstacle 102 - Standup PC(s) - Quiet study area

 squareGreen(Obs71(1)*10,Obs71(2)*10,8,5);   %plot obstacle 71 - Standard Desktop PC 1 - Collaborative study area
 squareGreen(Obs72(1)*10,Obs72(2)*10,8,5);   %plot obstacle 72 - Standard Desktop PC 1 - Collaborative study area
 squareGreen(Obs81(1)*10,Obs81(2)*10,10,5);   %plot obstacle 81 - Apple Mac - Collaborative study area
 squareGreen(Obs91(1)*10,Obs91(2)*10,8,5);   %plot obstacle 91 - Standard Desktop PC 2 - Collaborative study area
 squareGreen(Obs92(1)*10,Obs92(2)*10,8,5);   %plot obstacle 92 - Standard Desktop PC 2 - Collaborative study area
 squareGreen(Obs1(1)*10,Obs1(2)*10,8,5);   %plot obstacle 1 - Desk Only - Collaborative study area
 squareGreen(Obs2(1)*10,Obs2(2)*10,8,5);   %plot obstacle 2 - Desk Only - Collaborative study area
 
 squareLC3(Obs13(1)*10,Obs13(2)*10,8,5);   %plot obstacle 13 - Bookshelf 1
 squareLC3(Obs14(1)*10,Obs14(2)*10,8,5);   %plot obstacle 14 - Bookshelf 1
 squareLC3(Obs15(1)*10,Obs15(2)*10,8,5);   %plot obstacle 15 - Bookshelf 1
 squareLC3(Obs33(1)*10,Obs33(2)*10,8,5);   %plot obstacle 33 - Bookshelf 2
 squareLC3(Obs34(1)*10,Obs34(2)*10,8,5);   %plot obstacle 34 - Bookshelf 2
 squareLC3(Obs35(1)*10,Obs35(2)*10,8,5);   %plot obstacle 35 - Bookshelf 2
 squareLC3(Obs53(1)*10,Obs53(2)*10,8,5);   %plot obstacle 53 - Bookshelf 3
 squareLC3(Obs54(1)*10,Obs54(2)*10,8,5);   %plot obstacle 54 - Bookshelf 3
 squareLC3(Obs55(1)*10,Obs55(2)*10,8,5);   %plot obstacle 55 - Bookshelf 3
 squareLC3(Obs63(1)*10,Obs63(2)*10,8,5);   %plot obstacle 63 - Bookshelf 4
 squareLC3(Obs64(1)*10,Obs64(2)*10,8,5);   %plot obstacle 64 - Bookshelf 4
 squareLC3(Obs65(1)*10,Obs65(2)*10,8,5);   %plot obstacle 65 - Bookshelf 4
 squareLC3(Obs73(1)*10,Obs73(2)*10,8,5);   %plot obstacle 73 - Bookshelf 5
 squareLC3(Obs74(1)*10,Obs74(2)*10,8,5);   %plot obstacle 74 - Bookshelf 5
 squareLC3(Obs75(1)*10,Obs75(2)*10,8,5);   %plot obstacle 75 - Bookshelf 5
 squareLC3(Obs83(1)*10,Obs83(2)*10,8,5);   %plot obstacle 83 - Bookshelf 6
 squareLC3(Obs84(1)*10,Obs84(2)*10,8,5);   %plot obstacle 84 - Bookshelf 6
 squareLC3(Obs85(1)*10,Obs85(2)*10,8,5);   %plot obstacle 85 - Bookshelf 6
 
 circleThrs(Obs4(1)*10,Obs4(2)*10,9,5);   %plot obstacle 4 - Seating Area 1
 circleThrs(Obs5(1)*10,Obs5(2)*10,9,5);   %plot obstacle 5 - Seating Area 1
 circleThrs(Obs6(1)*10,Obs6(2)*10,9,5);   %plot obstacle 6 - Seating Area 1
 circleThrs(Obs7(1)*10,Obs7(2)*10,9,5);   %plot obstacle 7 - Seating Area 2
 circleThrs(Obs8(1)*10,Obs8(2)*10,9,5);   %plot obstacle 8 - Seating Area 2
 circleThrs(Obs9(1)*10,Obs9(2)*10,9,5);   %plot obstacle 9 - Seating Area 2

 circleGreen(Obs23(1)*10,Obs23(2)*10,7,9);   %plot obstacle 23 - Group Booth
 circleDBlue(Obs24(1)*10,Obs24(2)*10,7,9);   %plot obstacle 24 - Group Booth
 circleRed(Obs25(1)*10,Obs25(2)*10,7,9);   %plot obstacle 25 - Group Booth

 circleGrey(Obs100(1)*10,Obs100(2)*10,5,100);   %plot obstacle 100 - Water Dispenser

 %--------------------------------------------------------%

 %Moving Obstacle (Obstacle 10)
 Obs10_PF=0.6; %force of potential field for obstacle 10
 Obs10=[7.25 12]; %centre of obstacle nine

 %Moving Obstacle (Obstacle 20)
 Obs20_PF=0.5; %force of potential field for obstacle 20
 Obs20=[21 13.25]; %centre of obstacle ten

 %Moving Obstacle (Obstacle 30)
 Obs30_PF=0.5; %force of potential field for obstacle 30
 Obs30=[23 8]; %centre of obstacle twelve

 %Moving Obstacle (Obstacle 40)
 Obs40_PF=0.45; %force of potential field for obstacle 40
 Obs40=[12 5.2]; %centre of obstacle thirteen

%-----------------------------------------------------------%

 %Robot 1 near to Standard Desktop PC 2 - Silent study area
 R1_PF=0.1; %force of potential field
 Robot1=[6.5 15.5];

 %Robot 2 near to Bookshelf 1
 R2_PF=0.1; %force of potential field
 Robot2=[3.5 0.75];

 %Robot 3 at left of the Robot self-charging station
 R3_PF=0.1; %force of potential field
 Robot3=[27.5 1.25];

 circle(Robot1(1)*10,Robot1(2)*10,2,100,'B','B-');  %plot robot 1 blue
 circle(Robot2(1)*10,Robot2(2)*10,2,100,'R','R-'); %plot robot 2 red
 circle(Robot3(1)*10,Robot3(2)*10,1,5,'K','K-');  %plot robot 3 black

 %----------------------------------------------------------%

 %Goal 1 near to BookShelf 4
 G1_PF=0.1;
 Goal1=[16 1]; %centre of goal 1 

 %Goal 2 near to Apple Mac - Collaborative study area
 G2_PF=0.1;
 Goal2=[26 15.5]; %centre of goal 2

 %Goal 3 near to Printer or, Group Booth
 G3_PF=0.1;
 Goal3=[1.4 8]; %centre of goal 3

 %Goal 4 at right of the Robot Self-charging station
 G4_PF=0.1;
 Goal4=[29 1.25]; %centre of goal 4

 %Goal 5 near to Standard Desktop PC 1 - Quiet study area
 G5_PF=0.1;
 Goal5=[11.75 15]; %centre of goal 5 

 %Goal 6 at middle of the Robot Self-charging station
 G6_PF=0.1;
 Goal6=[28.25 1.35]; %centre of goal 6 

 %Goal 7 near to Standard Desktop PC 2 - Quiet study area
 G7_PF=0.1;
 Goal7=[16 15.5]; %centre of goal 7 

 %Goal 8 at left of the Robot Self-charging station
 G8_PF=0.1;
 Goal8=[27.5 1.25]; %centre of goal 8 

 square(Goal1(1)*10,Goal1(2)*10,3,5,'C','C-'); %plot goal 1 cyan
 circle(Goal2(1)*10,Goal2(2)*10,3,5,'C','C-'); %plot goal 2 cyan
 square(Goal3(1)*10,Goal3(2)*10,2.5,5,'C','C-'); %plot goal 3 cyan
 circle(Goal4(1)*10,Goal4(2)*10,1.5,5,'C','C-'); %plot goal 4 cyan
 square(Goal5(1)*10,Goal5(2)*10,3,5,'C','C-'); %plot goal 5 cyan
 circle(Goal6(1)*10,Goal6(2)*10,1.5,5,'C','C-'); %plot goal 6 cyan
 circle(Goal7(1)*10,Goal7(2)*10,3,5,'C','C-'); %plot goal 7 cyan
 circle(Goal8(1)*10,Goal8(2)*10,1.5,5,'C','C-'); %plot goal 8 cyan

%------------------------------------------------------------------%

rectangle ('Position',[0,143,13,27],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#0072BD'), hold on %Silent study area
rectangle ('Position',[75,143,13,27],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#0072BD'), hold on %Silent study area

rectangle ('Position',[95,143,13,27],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#EDB120'), hold on %Quiet study area
rectangle ('Position',[172,143,13,27],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#EDB120'), hold on %Quiet study area
rectangle ('Position',[159,97,13,25],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#EDB120'), hold on %Quiet study area

rectangle ('Position',[217,143,13,27],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#77AC30'), hold on %Collaborative study area
rectangle ('Position',[287,143,13,27],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#77AC30'), hold on %Collaborative study area
rectangle ('Position',[283,97,13,25],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#77AC30'), hold on %Collaborative study area

rectangle ('Position',[8.5,3.8,13,37],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#CDC9A5'), hold on % Bookshelf 1
rectangle ('Position',[65,3.8,13,37],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#CDC9A5'), hold on % Bookshelf 2
rectangle ('Position',[118,3.8,13,37],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#CDC9A5'), hold on % Bookshelf 3
rectangle ('Position',[168,3.8,13,37],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#CDC9A5'), hold on % Bookshelf 4
rectangle ('Position',[223.5,3.8,13,37],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#CDC9A5'), hold on % Bookshelf 5
rectangle ('Position',[263.5,29,13,37],'Curvature', 0.2, 'LineWidth', 1, 'FaceColor', '#CDC9A5'), hold on % Bookshelf 6

rectangle ('Position',[20,58,53,52],'Curvature', 0.45, 'LineWidth', 1, 'EdgeColor', '#CCCCCC', LineStyle='--'), hold on %Group Booth
rectangle ('Position',[268,1,30,15],'Curvature', 0.5, 'LineWidth', 1, 'FaceColor',[1, 1, 0, 0.6], 'EdgeColor',...
    '#707070', LineStyle='--'), hold on %Robot Self-charging station
rectangle ('Position',[1,111,10,17],'Curvature', 0.5, 'LineWidth', 1, 'FaceColor',[0, 1, 0, 0.4], 'EdgeColor',...
    '#999999'), hold on %Entry --- Exit point
rectangle ('Position',[0.5,75,11,19.5],'Curvature', 0.5, 'LineWidth', 1, 'FaceColor',[0.9297, 0.0703, 0.5352, 0.6],...
    'EdgeColor', '#3B3B3B'), hold on %Printer area

polyrectangle(139,151,-44.5,2,45); %Seating area
polyrectangle(79.5,90.5,199.7,245.7,-45); %Seating area

%------------------------------------------------------------------%

str0 = {'Standard','Desktop','PC 1'};
str1 = {'Standard','Desktop','PC 2'};
str2 = {'Water','Dispenser'};
str3 = {'Apple','Mac'};
str4 = {'Desk','Only'};
str5 = {'Stand-Up','PC(s)'};
str6 = {'Group','Booth'};
str7 = 'Seating Area';
str8 = {'Entry','------','Exit'};
str9 = {'Robot self','charging station'};
str10 = {'Book -','shelf 1'};
str11 = {'Book -','shelf 2'};
str12 = {'Book -','shelf 3'};
str13 = {'Book -','shelf 4'};
str14 = {'Book -','shelf 5'};
str15 = {'Book -','shelf 6'};
str16 = 'Silent study area';
str17 = 'Quiet study area';
str18 = 'Collaborative study area';
str19 = 'Printer';

text(6.4,157,str0,"FontSize",7,FontWeight="bold",HorizontalAlignment="center",Color='w');
text(81.3,157,str1,"FontSize",7,FontWeight="bold",HorizontalAlignment="center",Color='w');
text(101.4,157,str0,"FontSize",7,FontWeight="bold",HorizontalAlignment="center");
text(178.5,157,str1,"FontSize",7,FontWeight="bold",HorizontalAlignment="center");
text(223.4,157,str0,"FontSize",7,FontWeight="bold",HorizontalAlignment="center");
text(293.5,157,str1,"FontSize",7,FontWeight="bold",HorizontalAlignment="center");
text(201,162,str2,"FontSize",8,FontWeight="bold",HorizontalAlignment="center");
text(44.5,138,str3,"FontSize",8,FontWeight="bold",HorizontalAlignment="center",Color='w');
text(140,138,str3,"FontSize",8,FontWeight="bold",HorizontalAlignment="center");
text(260,138,str3,"FontSize",8,FontWeight="bold",HorizontalAlignment="center");
text(289.5,110,str4,"FontSize",8,FontWeight="bold",HorizontalAlignment="center");
text(165.5,110,str5,"FontSize",7,FontWeight="bold",HorizontalAlignment="center");
text(47,105,str6,"FontSize",9,FontWeight="bold",HorizontalAlignment="center");
text(118,88,str7,"FontSize",9,FontWeight="bold",Rotation=-45,HorizontalAlignment="center");
text(216,97,str7,"FontSize",9,FontWeight="bold",Rotation=45,HorizontalAlignment="center");
text(6,120,str8,"FontSize",8,FontWeight="bold",HorizontalAlignment="center");
text(283,5.8,str9,"FontSize",8,FontWeight="bold",HorizontalAlignment="center");
text(10,22,str10,"FontSize",8,FontWeight="bold");
text(66.4,22,str11,"FontSize",8,FontWeight="bold");
text(119.4,22,str12,"FontSize",8,FontWeight="bold");
text(169.4,22,str13,"FontSize",8,FontWeight="bold");
text(224.7,22,str14,"FontSize",8,FontWeight="bold");
text(265,47,str15,"FontSize",8,FontWeight="bold");
text(25,165,str16,"FontSize",10,FontWeight="bold");
text(123,165,str17,"FontSize",10,FontWeight="bold");
text(236,165,str18,"FontSize",10,FontWeight="bold");
text(1,85,str19,"FontSize",7.5,FontWeight="bold");

%------------------------------------------------------------------%

%maximise figure 1 
set(figure(1),'units','normalized','outerposition',[0 0 1 1]);
figure(1) %Initialise figure 1
title('Robot Environment - Library')
hold on
axis([0 300 0 170]);
rectangle ('Position',[0,0,300,170], 'LineWidth', 1), hold on
axis manual
% grid on
% grid minor
set(gca,'XTickLabel','') %remove x label
set(gca,'YTickLabel','') %remove y label

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create Repulsive and attractive potential field forces %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Matrix X x Y of 300 by 170
i=1:170;
j=1:300;
[J,I] = meshgrid(j,i);
Z = []; %empty matrix for z-axis plot

for i=1:170 
    for j=1:300 
        pos = [j/10 i/10]; % scaled to fit 300by170 matrix
        z=0;    %accumulator

        %Obstacles with exponential curve while goal is by vector  
        z=z+exp(-norm(pos-Obs1)/Obs1_PF)+exp(-norm(pos-Obs2)/Obs2_PF)+exp(-norm(pos-Obs4)/Obs4_PF)+exp(-norm(pos-Obs5)/Obs5_PF)+...
            exp(-norm(pos-Obs6)/Obs6_PF)+exp(-norm(pos-Obs7)/Obs7_PF)+exp(-norm(pos-Obs8)/Obs8_PF)+exp(-norm(pos-Obs9)/Obs9_PF)+...
            exp(-norm(pos-Obs10)/Obs10_PF)+exp(-norm(pos-Obs11)/Obs11_PF)+exp(-norm(pos-Obs12)/Obs12_PF)+...
            exp(-norm(pos-Obs13)/Obs13_PF)+exp(-norm(pos-Obs14)/Obs14_PF)+exp(-norm(pos-Obs15)/Obs15_PF)+...
            exp(-norm(pos-Obs20)/Obs20_PF)+exp(-norm(pos-Obs21)/Obs21_PF)+exp(-norm(pos-Obs23)/Obs23_PF)+...
            exp(-norm(pos-Obs24)/Obs24_PF)+exp(-norm(pos-Obs25)/Obs25_PF)+...
            exp(-norm(pos-Obs30)/Obs30_PF)+exp(-norm(pos-Obs31)/Obs31_PF)+exp(-norm(pos-Obs32)/Obs32_PF)+...
            exp(-norm(pos-Obs33)/Obs33_PF)+exp(-norm(pos-Obs34)/Obs34_PF)+exp(-norm(pos-Obs35)/Obs35_PF)+...
            exp(-norm(pos-Obs40)/Obs40_PF)+exp(-norm(pos-Obs41)/Obs41_PF)+exp(-norm(pos-Obs42)/Obs42_PF)+...
            exp(-norm(pos-Obs51)/Obs51_PF)+exp(-norm(pos-Obs53)/Obs53_PF)+exp(-norm(pos-Obs54)/Obs54_PF)+exp(-norm(pos-Obs55)/Obs55_PF)+...
            exp(-norm(pos-Obs61)/Obs61_PF)+exp(-norm(pos-Obs62)/Obs62_PF)+...
            exp(-norm(pos-Obs63)/Obs63_PF)+exp(-norm(pos-Obs64)/Obs64_PF)+exp(-norm(pos-Obs65)/Obs65_PF)+...
            exp(-norm(pos-Obs71)/Obs71_PF)+exp(-norm(pos-Obs72)/Obs72_PF)+...
            exp(-norm(pos-Obs73)/Obs73_PF)+exp(-norm(pos-Obs74)/Obs74_PF)+exp(-norm(pos-Obs75)/Obs75_PF)+...
            exp(-norm(pos-Obs81)/Obs81_PF)+exp(-norm(pos-Obs83)/Obs83_PF)+exp(-norm(pos-Obs84)/Obs84_PF)+exp(-norm(pos-Obs85)/Obs85_PF)+...
            exp(-norm(pos-Obs91)/Obs91_PF)+exp(-norm(pos-Obs92)/Obs92_PF)+...
            exp(-norm(pos-Obs100)/Obs100_PF)+exp(-norm(pos-Obs101)/Obs101_PF)+exp(-norm(pos-Obs102)/Obs102_PF)+...
            G1_PF*(norm(Goal1-pos))+G2_PF*(norm(Goal2-pos))+G3_PF*(norm(Goal3-pos))+G4_PF*(norm(Goal4-pos))+...
            G5_PF*(norm(Goal5-pos))+G6_PF*(norm(Goal6-pos))+G7_PF*(norm(Goal7-pos))+G8_PF*(norm(Goal8-pos));
        % The potential functions chosen are similar to the function proposed in the document 'apf.pdf'
        Z(i,j) = z; %store in matrix
    end
end

 %%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Path planning for Robot % 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%

 %Plot current robot motion
 t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
 t2=(abs(Robot2(1)-Goal2(1))+abs(Robot2(2)-Goal2(2))); 
 t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2))); 
 % The above is one of possibilities to determine the distance between the
 % robot and the goal, which is not strictly Euclidean

 %Plots the moving obstacles and assigns them to "old_obs_i"
 old_obs_1 = plot3(Obs10(1,1)*10, Obs10(1,2)*10, Z(round(Obs40(1,2)*10), round(Obs40(1,1)*10)),'o',...
     'MarkerSize',20, 'MarkerFaceColor','r','MarkerEdgeColor', 'k');
 old_obs_2 = plot3(Obs20(1,1)*10, Obs20(1,2)*10, Z(round(Obs40(1,2)*10), round(Obs40(1,1)*10)),'o',...
     'MarkerSize',20, 'MarkerFaceColor','r','MarkerEdgeColor', 'k');
 old_obs_3 = plot3(Obs30(1,1)*10, Obs30(1,2)*10, Z(round(Obs40(1,2)*10), round(Obs40(1,1)*10)),'o',...
     'MarkerSize',20, 'MarkerFaceColor','r','MarkerEdgeColor', 'k');
 old_obs_4 = plot3(Obs40(1,1)*10, Obs40(1,2)*10, Z(round(Obs40(1,2)*10), round(Obs40(1,1)*10)),'o',...
     'MarkerSize',20, 'MarkerFaceColor','r','MarkerEdgeColor', 'k');

 count=0; %initialises the count for all the robots
 c1=0; %initialises the count for only robot 1
 c2=0; %initialises the count for only robot 2
 c3=0; %initialises the count for only robot 3

 dx101=1; %initialises the direction for the 1st moving obstacle (1=left)
 dx10=Obs10; 

 dx201=1; %initialises the direction for the 2nd moving obstacle (1=downleft)
 dx20=Obs20;

 dx301=1; %initialises the direction for the 3rd moving obstacle (1=down)
 dx30=Obs30;

 dx401=1; %initialises the direction for the 4th moving obstacle (1=left)
 dx40=Obs40;

 while c1<20 || c2<20 || c3<20 %check if the robot had reached the specified target;  
                               %stop when reach target  

   dx1=[0 0];  %accumulation matrix robot1
   dx2=[0 0];  %accumulation matrix robot2
   dx3=[0 0];  %accumulation matrix robot3

   %Obstacles Accumulate vector sum  %Goal Accumulate - Robot 1
   dx1= dx1 + (Robot1-Robot2)*exp((-norm(Robot1-Robot2))/R2_PF)+(Robot1-Robot3)*exp((-norm(Robot1-Robot3))/R3_PF)+...
        (Robot1-Obs1)*exp((-norm(Robot1-Obs1))/Obs1_PF)+(Robot1-Obs2)*exp((-norm(Robot1-Obs2))/Obs2_PF)+...
        (Robot1-Obs4)*exp((-norm(Robot1-Obs4))/Obs4_PF)+(Robot1-Obs5)*exp((-norm(Robot1-Obs5))/Obs5_PF)+...
        (Robot1-Obs6)*exp((-norm(Robot1-Obs6))/Obs6_PF)+(Robot1-Obs7)*exp((-norm(Robot1-Obs7))/Obs7_PF)+...
        (Robot1-Obs8)*exp((-norm(Robot1-Obs8))/Obs8_PF)+(Robot1-Obs9)*exp((-norm(Robot1-Obs9))/Obs9_PF)+...
        (Robot1-Obs11)*exp((-norm(Robot1-Obs11))/Obs11_PF)+(Robot1-Obs12)*exp((-norm(Robot1-Obs12))/Obs12_PF)+...
        (Robot1-Obs13)*exp((-norm(Robot1-Obs13))/Obs13_PF)+(Robot1-Obs14)*exp((-norm(Robot1-Obs14))/Obs14_PF)+...
        (Robot1-Obs15)*exp((-norm(Robot1-Obs15))/Obs15_PF)+(Robot1-Obs21)*exp((-norm(Robot1-Obs21))/Obs21_PF)+...
        (Robot1-Obs23)*exp((-norm(Robot1-Obs23))/Obs23_PF)+(Robot1-Obs24)*exp((-norm(Robot1-Obs24))/Obs24_PF)+...
        (Robot1-Obs25)*exp((-norm(Robot1-Obs25))/Obs25_PF)+(Robot1-Obs31)*exp((-norm(Robot1-Obs31))/Obs31_PF)+...
        (Robot1-Obs32)*exp((-norm(Robot1-Obs32))/Obs32_PF)+(Robot1-Obs33)*exp((-norm(Robot1-Obs33))/Obs33_PF)+...
        (Robot1-Obs34)*exp((-norm(Robot1-Obs34))/Obs34_PF)+(Robot1-Obs35)*exp((-norm(Robot1-Obs35))/Obs35_PF)+...
        (Robot1-Obs41)*exp((-norm(Robot1-Obs41))/Obs41_PF)+(Robot1-Obs42)*exp((-norm(Robot1-Obs42))/Obs42_PF)+...
        (Robot1-Obs51)*exp((-norm(Robot1-Obs51))/Obs51_PF)+(Robot1-Obs53)*exp((-norm(Robot1-Obs53))/Obs53_PF)+...
        (Robot1-Obs54)*exp((-norm(Robot1-Obs54))/Obs54_PF)+(Robot1-Obs55)*exp((-norm(Robot1-Obs55))/Obs55_PF)+...
        (Robot1-Obs61)*exp((-norm(Robot1-Obs61))/Obs61_PF)+(Robot1-Obs62)*exp((-norm(Robot1-Obs62))/Obs62_PF)+...
        (Robot1-Obs63)*exp((-norm(Robot1-Obs63))/Obs63_PF)+(Robot1-Obs64)*exp((-norm(Robot1-Obs64))/Obs64_PF)+...
        (Robot1-Obs65)*exp((-norm(Robot1-Obs65))/Obs65_PF)+(Robot1-Obs71)*exp((-norm(Robot1-Obs71))/Obs71_PF)+...
        (Robot1-Obs72)*exp((-norm(Robot1-Obs72))/Obs72_PF)+(Robot1-Obs73)*exp((-norm(Robot1-Obs73))/Obs73_PF)+...
        (Robot1-Obs74)*exp((-norm(Robot1-Obs74))/Obs74_PF)+(Robot1-Obs75)*exp((-norm(Robot1-Obs75))/Obs75_PF)+...
        (Robot1-Obs81)*exp((-norm(Robot1-Obs81))/Obs81_PF)+(Robot1-Obs83)*exp((-norm(Robot1-Obs83))/Obs83_PF)+...
        (Robot1-Obs84)*exp((-norm(Robot1-Obs84))/Obs84_PF)+(Robot1-Obs85)*exp((-norm(Robot1-Obs85))/Obs85_PF)+...
        (Robot1-Obs91)*exp((-norm(Robot1-Obs91))/Obs91_PF)+(Robot1-Obs92)*exp((-norm(Robot1-Obs92))/Obs92_PF)+...
        (Robot1-Obs100)*exp((-norm(Robot1-Obs100))/Obs100_PF)+(Robot1-Obs101)*exp((-norm(Robot1-Obs101))/Obs101_PF)+...
        (Robot1-Obs102)*exp((-norm(Robot1-Obs102))/Obs102_PF)+(Robot1-Obs10)*exp((-norm(Robot1-Obs10))/Obs10_PF)+...
        (Robot1-Obs20)*exp((-norm(Robot1-Obs20))/Obs20_PF)+(Robot1-Obs30)*exp((-norm(Robot1-Obs30))/Obs30_PF)+...
        (Robot1-Obs40)*exp((-norm(Robot1-Obs40))/Obs40_PF)+G1_PF*(Goal1-Robot1)/norm(Goal1-Robot1);

   %Obstacles Accumulate vector sum  %Goal Accumulate - Robot 2
   dx2= dx2 + (Robot2-Robot1)*exp((-norm(Robot2-Robot1))/R1_PF)+(Robot2-Robot3)*exp((-norm(Robot2-Robot3))/R3_PF)+ ...
        (Robot2-Obs1)*exp((-norm(Robot2-Obs1))/Obs1_PF)+(Robot2-Obs2)*exp((-norm(Robot2-Obs2))/Obs2_PF)+...
        (Robot2-Obs4)*exp((-norm(Robot2-Obs4))/Obs4_PF)+(Robot2-Obs5)*exp((-norm(Robot2-Obs5))/Obs5_PF)+...
        (Robot2-Obs6)*exp((-norm(Robot2-Obs6))/Obs6_PF)+(Robot2-Obs7)*exp((-norm(Robot2-Obs7))/Obs7_PF)+...
        (Robot2-Obs8)*exp((-norm(Robot2-Obs8))/Obs8_PF)+(Robot2-Obs9)*exp((-norm(Robot2-Obs9))/Obs9_PF)+...
        (Robot2-Obs11)*exp((-norm(Robot2-Obs11))/Obs11_PF)+(Robot2-Obs12)*exp((-norm(Robot2-Obs12))/Obs12_PF)+...
        (Robot2-Obs13)*exp((-norm(Robot2-Obs13))/Obs13_PF)+(Robot2-Obs14)*exp((-norm(Robot2-Obs14))/Obs14_PF)+...
        (Robot2-Obs15)*exp((-norm(Robot2-Obs15))/Obs15_PF)+(Robot2-Obs21)*exp((-norm(Robot2-Obs21))/Obs21_PF)+...
        (Robot2-Obs23)*exp((-norm(Robot2-Obs23))/Obs23_PF)+(Robot2-Obs24)*exp((-norm(Robot2-Obs24))/Obs24_PF)+...
        (Robot2-Obs25)*exp((-norm(Robot2-Obs25))/Obs25_PF)+(Robot2-Obs31)*exp((-norm(Robot2-Obs31))/Obs31_PF)+...
        (Robot2-Obs32)*exp((-norm(Robot2-Obs32))/Obs32_PF)+(Robot2-Obs33)*exp((-norm(Robot2-Obs33))/Obs33_PF)+...
        (Robot2-Obs34)*exp((-norm(Robot2-Obs34))/Obs34_PF)+(Robot2-Obs35)*exp((-norm(Robot2-Obs35))/Obs35_PF)+...
        (Robot2-Obs41)*exp((-norm(Robot2-Obs41))/Obs41_PF)+(Robot2-Obs42)*exp((-norm(Robot2-Obs42))/Obs42_PF)+...
        (Robot2-Obs51)*exp((-norm(Robot2-Obs51))/Obs51_PF)+(Robot2-Obs53)*exp((-norm(Robot2-Obs53))/Obs53_PF)+...
        (Robot2-Obs54)*exp((-norm(Robot2-Obs54))/Obs54_PF)+(Robot2-Obs55)*exp((-norm(Robot2-Obs55))/Obs55_PF)+...
        (Robot2-Obs61)*exp((-norm(Robot2-Obs61))/Obs61_PF)+(Robot2-Obs62)*exp((-norm(Robot2-Obs62))/Obs62_PF)+...
        (Robot2-Obs63)*exp((-norm(Robot2-Obs63))/Obs63_PF)+(Robot2-Obs64)*exp((-norm(Robot2-Obs64))/Obs64_PF)+...
        (Robot2-Obs65)*exp((-norm(Robot2-Obs65))/Obs65_PF)+(Robot2-Obs71)*exp((-norm(Robot2-Obs71))/Obs71_PF)+...
        (Robot2-Obs72)*exp((-norm(Robot2-Obs72))/Obs72_PF)+(Robot2-Obs73)*exp((-norm(Robot2-Obs73))/Obs73_PF)+...
        (Robot2-Obs74)*exp((-norm(Robot2-Obs74))/Obs74_PF)+(Robot2-Obs75)*exp((-norm(Robot2-Obs75))/Obs75_PF)+...
        (Robot2-Obs81)*exp((-norm(Robot2-Obs81))/Obs81_PF)+(Robot2-Obs83)*exp((-norm(Robot2-Obs83))/Obs83_PF)+...
        (Robot2-Obs84)*exp((-norm(Robot2-Obs84))/Obs84_PF)+(Robot2-Obs85)*exp((-norm(Robot2-Obs85))/Obs85_PF)+...
        (Robot2-Obs91)*exp((-norm(Robot2-Obs91))/Obs91_PF)+(Robot2-Obs92)*exp((-norm(Robot2-Obs92))/Obs92_PF)+...
        (Robot2-Obs100)*exp((-norm(Robot2-Obs100))/Obs100_PF)+(Robot2-Obs101)*exp((-norm(Robot2-Obs101))/Obs101_PF)+...
        (Robot2-Obs102)*exp((-norm(Robot2-Obs102))/Obs102_PF)+(Robot2-Obs10)*exp((-norm(Robot2-Obs10))/Obs10_PF)+...
        (Robot2-Obs20)*exp((-norm(Robot2-Obs20))/Obs20_PF)+(Robot2-Obs30)*exp((-norm(Robot2-Obs30))/Obs30_PF)+...
        (Robot2-Obs40)*exp((-norm(Robot2-Obs40))/Obs40_PF)+G2_PF*(Goal2-Robot2)/norm(Goal2-Robot2);

   %Obstacles Accumulate vector sum  %Goal Accumulate - Robot 3
   dx3= dx3 + (Robot3-Robot1)*exp((-norm(Robot3-Robot1))/R1_PF)+(Robot3-Robot2)*exp((-norm(Robot3-Robot2))/R2_PF)+...
        (Robot3-Obs1)*exp((-norm(Robot3-Obs1))/Obs1_PF)+(Robot3-Obs2)*exp((-norm(Robot3-Obs2))/Obs2_PF)+...
        (Robot3-Obs4)*exp((-norm(Robot3-Obs4))/Obs4_PF)+(Robot3-Obs5)*exp((-norm(Robot3-Obs5))/Obs5_PF)+...
        (Robot3-Obs6)*exp((-norm(Robot3-Obs6))/Obs6_PF)+(Robot3-Obs7)*exp((-norm(Robot3-Obs7))/Obs7_PF)+...
        (Robot3-Obs8)*exp((-norm(Robot3-Obs8))/Obs8_PF)+(Robot3-Obs9)*exp((-norm(Robot3-Obs9))/Obs9_PF)+...
        (Robot3-Obs11)*exp((-norm(Robot3-Obs11))/Obs11_PF)+(Robot3-Obs12)*exp((-norm(Robot3-Obs12))/Obs12_PF)+...
        (Robot3-Obs13)*exp((-norm(Robot3-Obs13))/Obs13_PF)+(Robot3-Obs14)*exp((-norm(Robot3-Obs14))/Obs14_PF)+...
        (Robot3-Obs15)*exp((-norm(Robot3-Obs15))/Obs15_PF)+(Robot3-Obs21)*exp((-norm(Robot3-Obs21))/Obs21_PF)+...
        (Robot3-Obs23)*exp((-norm(Robot3-Obs23))/Obs23_PF)+(Robot3-Obs24)*exp((-norm(Robot3-Obs24))/Obs24_PF)+...
        (Robot3-Obs25)*exp((-norm(Robot3-Obs25))/Obs25_PF)+(Robot3-Obs31)*exp((-norm(Robot3-Obs31))/Obs31_PF)+...
        (Robot3-Obs32)*exp((-norm(Robot3-Obs32))/Obs32_PF)+(Robot3-Obs33)*exp((-norm(Robot3-Obs33))/Obs33_PF)+...
        (Robot3-Obs34)*exp((-norm(Robot3-Obs34))/Obs34_PF)+(Robot3-Obs35)*exp((-norm(Robot3-Obs35))/Obs35_PF)+...
        (Robot3-Obs41)*exp((-norm(Robot3-Obs41))/Obs41_PF)+(Robot3-Obs42)*exp((-norm(Robot3-Obs42))/Obs42_PF)+...
        (Robot3-Obs51)*exp((-norm(Robot3-Obs51))/Obs51_PF)+(Robot3-Obs53)*exp((-norm(Robot3-Obs53))/Obs53_PF)+...
        (Robot3-Obs54)*exp((-norm(Robot3-Obs54))/Obs54_PF)+(Robot3-Obs55)*exp((-norm(Robot3-Obs55))/Obs55_PF)+...
        (Robot3-Obs61)*exp((-norm(Robot3-Obs61))/Obs61_PF)+(Robot3-Obs62)*exp((-norm(Robot3-Obs62))/Obs62_PF)+...
        (Robot3-Obs63)*exp((-norm(Robot3-Obs63))/Obs63_PF)+(Robot3-Obs64)*exp((-norm(Robot3-Obs64))/Obs64_PF)+...
        (Robot3-Obs65)*exp((-norm(Robot3-Obs65))/Obs65_PF)+(Robot3-Obs71)*exp((-norm(Robot3-Obs71))/Obs71_PF)+...
        (Robot3-Obs72)*exp((-norm(Robot3-Obs72))/Obs72_PF)+(Robot3-Obs73)*exp((-norm(Robot3-Obs73))/Obs73_PF)+...
        (Robot3-Obs74)*exp((-norm(Robot3-Obs74))/Obs74_PF)+(Robot3-Obs75)*exp((-norm(Robot3-Obs75))/Obs75_PF)+...
        (Robot3-Obs81)*exp((-norm(Robot3-Obs81))/Obs81_PF)+(Robot3-Obs83)*exp((-norm(Robot3-Obs83))/Obs83_PF)+...
        (Robot3-Obs84)*exp((-norm(Robot3-Obs84))/Obs84_PF)+(Robot3-Obs85)*exp((-norm(Robot3-Obs85))/Obs85_PF)+...
        (Robot3-Obs91)*exp((-norm(Robot3-Obs91))/Obs91_PF)+(Robot3-Obs92)*exp((-norm(Robot3-Obs92))/Obs92_PF)+...
        (Robot3-Obs100)*exp((-norm(Robot3-Obs100))/Obs100_PF)+(Robot3-Obs101)*exp((-norm(Robot3-Obs101))/Obs101_PF)+...
        (Robot3-Obs102)*exp((-norm(Robot3-Obs102))/Obs102_PF)+(Robot3-Obs10)*exp((-norm(Robot3-Obs10))/Obs10_PF)+...
        (Robot3-Obs20)*exp((-norm(Robot3-Obs20))/Obs20_PF)+(Robot3-Obs30)*exp((-norm(Robot3-Obs30))/Obs30_PF)+...
        (Robot3-Obs40)*exp((-norm(Robot3-Obs40))/Obs40_PF)+G3_PF*(Goal3-Robot3)/norm(Goal3-Robot3);

   t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
   t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2))); 
   % to check difference between robot and goal as the robot 1 & 3 change
   % their goals

   if t1<0.1
      Goal1=Goal5;
      c1 = c1+1;
   end

   if t2<0.1
      c2 = c2+1;
      if c2==20
         Goal2=Goal4;
      end
   end

   if t3<0.1
      Goal3=Goal7;
      c3 = c3+1;
   end

   t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
   t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2))); 
   % to check difference between robot and goal as the robot 1 & 3 change
   % their goals

   if t1<0.1
      Goal5=Goal6;
   end

   if t3<0.1
       Goal7=Goal8;
   end

   if dx101==1
     %looks to see if the x coordinate of moving obstacle 1 
     %has moved too far left
        if dx10(1) < 2.6
            %if so tells to move right
            dx101=2;
        else
            %if not, carries on moving left
            dx10(1)=dx10(1)-0.35; 
        end
   else
     %looks to see if the x coordinate of moving obstacle 1
     %has moved too far right
        if dx10(1) > 12.4
            %if so tells to move left
            dx101=1;
        else
            %if not, carries on moving right
            dx10(1)=dx10(1)+0.35;  
        end
   end

   if dx201==1
        %looks to see if the y coordinate of moving obstacle 2
        %has moved too far down
        if dx20(1) < 16.8
            %if so tells to move up
            dx201=2;
        else
            %if not tells to move down
            dx20(1)=dx20(1)-0.3;
        end
   else
        %looks to see if the y coordinate of moving obstacle 2
        %has moved too far up
        if dx20(1) > 24
            %if so tells to move down
            dx201=1;
        else
            %if not tells to move up
            dx20(1)=dx20(1)+0.3;
        end
   end

   if dx301==1
     %looks to see if the x coordinate of moving obstacle 3 
     %has moved too far left
        if dx30(1) < 19.8
            %if so tells to move right
            dx301=2;
        else
            %if not tells to move down and left
            dx30(1)=dx30(1)-0.38; 
            dx30(2)=dx30(2)-0.38;
        end
   else
        %looks to see if the x coordinate of moving obstacle 3
        %has moved too far right
        if dx30(1) > 26 
            %if so tells to move left
            dx301=1;
        else
            %if not tells to move up and right
            dx30(1)=dx30(1)+0.38;  
            dx30(2)=dx30(2)+0.38;
        end
   end

   if dx401==1
        %looks to see if the x coordinate of moving obstacle 4
        %has moved too far left
        if dx40(1) < 5.5
            %if so tells to move right
            dx401=2;
        else
            %if not tells to move left
            dx40(1)=dx40(1)-0.25;
        end
   else
        %looks to see if the x coordinate of moving obstacle 4
        %has moved too far right
        if dx40(1) > 17.5
            %if so tells to move left
            dx401=1;
        else
            %if not tells to move right
            dx40(1)=dx40(1)+0.25;
        end
   end

   %Change in Robot Position over time (differenttiation)
   Robot1=Robot1+dx1;
   Robot2=Robot2+dx2;
   Robot3=Robot3+dx3;

   %Change in Obs Position over time (differentiation)
   Obs10=dx10;
   Obs20=dx20;
   Obs30=dx30;
   Obs40=dx40;

   %Calculate the value difference between the robot and the goal 
   t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
   t2=(abs(Robot2(1)-Goal2(1))+abs(Robot2(2)-Goal2(2))); 
   t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2))); 

   count=count+1; 

   %update display 
   plot(Robot1(1,1)*10, Robot1(1,2)*10, 'B.','MarkerSize',7);
   plot(Robot2(1,1)*10, Robot2(1,2)*10, 'R.','MarkerSize',7);
   plot(Robot3(1,1)*10, Robot3(1,2)*10, 'K.','MarkerSize',7);

   %Assigns the new position of the moving obstacle 
   %to the variable "new_obs_i"
   new_obs_1 = plot(Obs10(1,1)*10, Obs10(1,2)*10,'o','MarkerSize',20, 'MarkerFaceColor','#A2142F', 'MarkerEdgeColor','k');
   new_obs_2 = plot(Obs20(1,1)*10, Obs20(1,2)*10,'o','MarkerSize',20, 'MarkerFaceColor','#A2142F', 'MarkerEdgeColor','k');
   new_obs_3 = plot(Obs30(1,1)*10, Obs30(1,2)*10,'o','MarkerSize',20, 'MarkerFaceColor','#A2142F', 'MarkerEdgeColor','k');
   new_obs_4 = plot(Obs40(1,1)*10, Obs40(1,2)*10,'o','MarkerSize',20, 'MarkerFaceColor','#A2142F', 'MarkerEdgeColor','k');

   %Removes the previous position of the obstacle to avoid trail 
   %being left behind
   delete(old_obs_1);
   delete(old_obs_2);
   delete(old_obs_3);
   delete(old_obs_4);

   %Assigns the "old_obs_i" with the "new_obs_i" variable
   old_obs_1 = new_obs_1;
   old_obs_2 = new_obs_2;
   old_obs_3 = new_obs_3;
   old_obs_4 = new_obs_4;

   %Alters title to Iteration and its respectively count
   title(sprintf('Iteration: %d',count)); 
   refresh;
   drawnow;
   % pause(0.008);
 end

 %%%%%%%%%%%%%%%%
 % Plot Figures %
 %%%%%%%%%%%%%%%%

 set(figure(2),'units','normalized','outerposition',[0 0 1 1]); %maximise figure 2
 figure(2)   %Contour figure
 set(gca,'XTickLabel','') %remove x label
 set(gca,'YTickLabel','') %remove y label
 title('Contour')
 hold on
 contour(Z,22) %plot figure with 22 contours 
 pause(1.5)
 hold on;

 set(figure(3),'units','normalized','outerposition',[0 0 1 1]); %maximise figure 3
 figure(3)   %combine figures
 set(gca,'XTickLabel','') %remove x label
 set(gca,'YTickLabel','') %remove y label
 title('Potential Force Field on Contour')
 hold on
 contour(Z,22) %plot figure with 22 contours 
 hold on
 [px,py]=gradient(Z); %calculate gradient 
 quiver(J,I,-px,-py,'r'), hold on % plot velocity vectors
 pause(1.5)

 set(figure(4),'units','normalized','outerposition',[0 0 1 1]); %maximise figure 4
 figure(4) 
 set(gca,'XTickLabel','') %remove x label
 set(gca,'YTickLabel','') %remove y label
 set(gca,'ZTickLabel','') %remove z label
 title('Potential Function Landscape')
 hold on;
 surfc(Z)        %plot surface and contour plot
 view(5,55)
 % view([100,35,30]) 
 hold on
 pause(1.5)

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Path planning for Robot %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

 %Robot 1 near to Standard Desktop PC 2 - Silent study area
 R1_PF=0.1; %force of potential field
 Robot1=[6.5 15.5];

 %Robot 2 near to Bookshelf 1
 R2_PF=0.1; %force of potential field
 Robot2=[3.5 0.75];

 %Robot 3 at left of the Robot self-charging station
 R3_PF=0.1; %force of potential field
 Robot3=[27.5 1.25];

 %----------------------------------------------------------%

 %Goal 1 near to BookShelf 4
 G1_PF=0.1;
 Goal1=[16 1]; %centre of goal 1 

 %Goal 2 near to Apple Mac - Collaborative study area
 G2_PF=0.1;
 Goal2=[26 15.5]; %centre of goal 2

 %Goal 3 near to Printer or, Group Booth
 G3_PF=0.1;
 Goal3=[1.4 8]; %centre of goal 3

 %Goal 4 at right of the Robot Self-charging station
 G4_PF=0.1;
 Goal4=[29 1.25]; %centre of goal 4

 %Goal 5 near to Standard Desktop PC 1 - Quiet study area
 G5_PF=0.1;
 Goal5=[11.75 15]; %centre of goal 5 

 %Goal 6 at middle of the Robot Self-charging station
 G6_PF=0.1;
 Goal6=[28.25 1.35]; %centre of goal 6 

 %Goal 7 near to Standard Desktop PC 2 - Quiet study area
 G7_PF=0.1;
 Goal7=[16 15.5]; %centre of goal 7 

 %Goal 8 at left of the Robot Self-charging station
 G8_PF=0.1;
 Goal8=[27.5 1.25]; %centre of goal 8 

 %Plot current robot motion
 t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
 t2=(abs(Robot2(1)-Goal2(1))+abs(Robot2(2)-Goal2(2)));
 t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2)));
 % The above is one of possibilities to determine the distance between the
 % robot and the goal, which is not strictly Euclidean

 count=0; %initialises the count for all the robots
 c1=0; %initialises the count for only robot 1
 c2=0; %initialises the count for only robot 2
 c3=0; %initialises the count for only robot 3

 dx101=1; %initialises the direction for the 1st moving obstacle (1=left)
 dx10=Obs10; 

 dx201=1; %initialises the direction for the 2nd moving obstacle (1=downleft)
 dx20=Obs20;

 dx301=1; %initialises the direction for the 3rd moving obstacle (1=down)
 dx30=Obs30;

 dx401=1; %initialises the direction for the 4th moving obstacle (1=left)
 dx40=Obs40;

 while c1<20 || c2<20 || c3<20 %check if the robot had reached the specified target;  
                               %stop when reach target  

   dx1=[0 0];  %accumulation matrix robot1
   dx2=[0 0];  %accumulation matrix robot2
   dx3=[0 0];  %accumulation matrix robot3

   %Obstacles Accumulate vector sum  %Goal Accumulate - Robot 1
   dx1= dx1 + (Robot1-Robot2)*exp((-norm(Robot1-Robot2))/R2_PF)+(Robot1-Robot3)*exp((-norm(Robot1-Robot3))/R3_PF)+...
        (Robot1-Obs1)*exp((-norm(Robot1-Obs1))/Obs1_PF)+(Robot1-Obs2)*exp((-norm(Robot1-Obs2))/Obs2_PF)+...
        (Robot1-Obs4)*exp((-norm(Robot1-Obs4))/Obs4_PF)+(Robot1-Obs5)*exp((-norm(Robot1-Obs5))/Obs5_PF)+...
        (Robot1-Obs6)*exp((-norm(Robot1-Obs6))/Obs6_PF)+(Robot1-Obs7)*exp((-norm(Robot1-Obs7))/Obs7_PF)+...
        (Robot1-Obs8)*exp((-norm(Robot1-Obs8))/Obs8_PF)+(Robot1-Obs9)*exp((-norm(Robot1-Obs9))/Obs9_PF)+...
        (Robot1-Obs11)*exp((-norm(Robot1-Obs11))/Obs11_PF)+(Robot1-Obs12)*exp((-norm(Robot1-Obs12))/Obs12_PF)+...
        (Robot1-Obs13)*exp((-norm(Robot1-Obs13))/Obs13_PF)+(Robot1-Obs14)*exp((-norm(Robot1-Obs14))/Obs14_PF)+...
        (Robot1-Obs15)*exp((-norm(Robot1-Obs15))/Obs15_PF)+(Robot1-Obs21)*exp((-norm(Robot1-Obs21))/Obs21_PF)+...
        (Robot1-Obs23)*exp((-norm(Robot1-Obs23))/Obs23_PF)+(Robot1-Obs24)*exp((-norm(Robot1-Obs24))/Obs24_PF)+...
        (Robot1-Obs25)*exp((-norm(Robot1-Obs25))/Obs25_PF)+(Robot1-Obs31)*exp((-norm(Robot1-Obs31))/Obs31_PF)+...
        (Robot1-Obs32)*exp((-norm(Robot1-Obs32))/Obs32_PF)+(Robot1-Obs33)*exp((-norm(Robot1-Obs33))/Obs33_PF)+...
        (Robot1-Obs34)*exp((-norm(Robot1-Obs34))/Obs34_PF)+(Robot1-Obs35)*exp((-norm(Robot1-Obs35))/Obs35_PF)+...
        (Robot1-Obs41)*exp((-norm(Robot1-Obs41))/Obs41_PF)+(Robot1-Obs42)*exp((-norm(Robot1-Obs42))/Obs42_PF)+...
        (Robot1-Obs51)*exp((-norm(Robot1-Obs51))/Obs51_PF)+(Robot1-Obs53)*exp((-norm(Robot1-Obs53))/Obs53_PF)+...
        (Robot1-Obs54)*exp((-norm(Robot1-Obs54))/Obs54_PF)+(Robot1-Obs55)*exp((-norm(Robot1-Obs55))/Obs55_PF)+...
        (Robot1-Obs61)*exp((-norm(Robot1-Obs61))/Obs61_PF)+(Robot1-Obs62)*exp((-norm(Robot1-Obs62))/Obs62_PF)+...
        (Robot1-Obs63)*exp((-norm(Robot1-Obs63))/Obs63_PF)+(Robot1-Obs64)*exp((-norm(Robot1-Obs64))/Obs64_PF)+...
        (Robot1-Obs65)*exp((-norm(Robot1-Obs65))/Obs65_PF)+(Robot1-Obs71)*exp((-norm(Robot1-Obs71))/Obs71_PF)+...
        (Robot1-Obs72)*exp((-norm(Robot1-Obs72))/Obs72_PF)+(Robot1-Obs73)*exp((-norm(Robot1-Obs73))/Obs73_PF)+...
        (Robot1-Obs74)*exp((-norm(Robot1-Obs74))/Obs74_PF)+(Robot1-Obs75)*exp((-norm(Robot1-Obs75))/Obs75_PF)+...
        (Robot1-Obs81)*exp((-norm(Robot1-Obs81))/Obs81_PF)+(Robot1-Obs83)*exp((-norm(Robot1-Obs83))/Obs83_PF)+...
        (Robot1-Obs84)*exp((-norm(Robot1-Obs84))/Obs84_PF)+(Robot1-Obs85)*exp((-norm(Robot1-Obs85))/Obs85_PF)+...
        (Robot1-Obs91)*exp((-norm(Robot1-Obs91))/Obs91_PF)+(Robot1-Obs92)*exp((-norm(Robot1-Obs92))/Obs92_PF)+...
        (Robot1-Obs100)*exp((-norm(Robot1-Obs100))/Obs100_PF)+(Robot1-Obs101)*exp((-norm(Robot1-Obs101))/Obs101_PF)+...
        (Robot1-Obs102)*exp((-norm(Robot1-Obs102))/Obs102_PF)+(Robot1-Obs10)*exp((-norm(Robot1-Obs10))/Obs10_PF)+...
        (Robot1-Obs20)*exp((-norm(Robot1-Obs20))/Obs20_PF)+(Robot1-Obs30)*exp((-norm(Robot1-Obs30))/Obs30_PF)+...
        (Robot1-Obs40)*exp((-norm(Robot1-Obs40))/Obs40_PF)+G1_PF*(Goal1-Robot1)/norm(Goal1-Robot1);

   %Obstacles Accumulate vector sum  %Goal Accumulate - Robot 2
   dx2= dx2 + (Robot2-Robot1)*exp((-norm(Robot2-Robot1))/R1_PF)+(Robot2-Robot3)*exp((-norm(Robot2-Robot3))/R3_PF)+ ...
        (Robot2-Obs1)*exp((-norm(Robot2-Obs1))/Obs1_PF)+(Robot2-Obs2)*exp((-norm(Robot2-Obs2))/Obs2_PF)+...
        (Robot2-Obs4)*exp((-norm(Robot2-Obs4))/Obs4_PF)+(Robot2-Obs5)*exp((-norm(Robot2-Obs5))/Obs5_PF)+...
        (Robot2-Obs6)*exp((-norm(Robot2-Obs6))/Obs6_PF)+(Robot2-Obs7)*exp((-norm(Robot2-Obs7))/Obs7_PF)+...
        (Robot2-Obs8)*exp((-norm(Robot2-Obs8))/Obs8_PF)+(Robot2-Obs9)*exp((-norm(Robot2-Obs9))/Obs9_PF)+...
        (Robot2-Obs11)*exp((-norm(Robot2-Obs11))/Obs11_PF)+(Robot2-Obs12)*exp((-norm(Robot2-Obs12))/Obs12_PF)+...
        (Robot2-Obs13)*exp((-norm(Robot2-Obs13))/Obs13_PF)+(Robot2-Obs14)*exp((-norm(Robot2-Obs14))/Obs14_PF)+...
        (Robot2-Obs15)*exp((-norm(Robot2-Obs15))/Obs15_PF)+(Robot2-Obs21)*exp((-norm(Robot2-Obs21))/Obs21_PF)+...
        (Robot2-Obs23)*exp((-norm(Robot2-Obs23))/Obs23_PF)+(Robot2-Obs24)*exp((-norm(Robot2-Obs24))/Obs24_PF)+...
        (Robot2-Obs25)*exp((-norm(Robot2-Obs25))/Obs25_PF)+(Robot2-Obs31)*exp((-norm(Robot2-Obs31))/Obs31_PF)+...
        (Robot2-Obs32)*exp((-norm(Robot2-Obs32))/Obs32_PF)+(Robot2-Obs33)*exp((-norm(Robot2-Obs33))/Obs33_PF)+...
        (Robot2-Obs34)*exp((-norm(Robot2-Obs34))/Obs34_PF)+(Robot2-Obs35)*exp((-norm(Robot2-Obs35))/Obs35_PF)+...
        (Robot2-Obs41)*exp((-norm(Robot2-Obs41))/Obs41_PF)+(Robot2-Obs42)*exp((-norm(Robot2-Obs42))/Obs42_PF)+...
        (Robot2-Obs51)*exp((-norm(Robot2-Obs51))/Obs51_PF)+(Robot2-Obs53)*exp((-norm(Robot2-Obs53))/Obs53_PF)+...
        (Robot2-Obs54)*exp((-norm(Robot2-Obs54))/Obs54_PF)+(Robot2-Obs55)*exp((-norm(Robot2-Obs55))/Obs55_PF)+...
        (Robot2-Obs61)*exp((-norm(Robot2-Obs61))/Obs61_PF)+(Robot2-Obs62)*exp((-norm(Robot2-Obs62))/Obs62_PF)+...
        (Robot2-Obs63)*exp((-norm(Robot2-Obs63))/Obs63_PF)+(Robot2-Obs64)*exp((-norm(Robot2-Obs64))/Obs64_PF)+...
        (Robot2-Obs65)*exp((-norm(Robot2-Obs65))/Obs65_PF)+(Robot2-Obs71)*exp((-norm(Robot2-Obs71))/Obs71_PF)+...
        (Robot2-Obs72)*exp((-norm(Robot2-Obs72))/Obs72_PF)+(Robot2-Obs73)*exp((-norm(Robot2-Obs73))/Obs73_PF)+...
        (Robot2-Obs74)*exp((-norm(Robot2-Obs74))/Obs74_PF)+(Robot2-Obs75)*exp((-norm(Robot2-Obs75))/Obs75_PF)+...
        (Robot2-Obs81)*exp((-norm(Robot2-Obs81))/Obs81_PF)+(Robot2-Obs83)*exp((-norm(Robot2-Obs83))/Obs83_PF)+...
        (Robot2-Obs84)*exp((-norm(Robot2-Obs84))/Obs84_PF)+(Robot2-Obs85)*exp((-norm(Robot2-Obs85))/Obs85_PF)+...
        (Robot2-Obs91)*exp((-norm(Robot2-Obs91))/Obs91_PF)+(Robot2-Obs92)*exp((-norm(Robot2-Obs92))/Obs92_PF)+...
        (Robot2-Obs100)*exp((-norm(Robot2-Obs100))/Obs100_PF)+(Robot2-Obs101)*exp((-norm(Robot2-Obs101))/Obs101_PF)+...
        (Robot2-Obs102)*exp((-norm(Robot2-Obs102))/Obs102_PF)+(Robot2-Obs10)*exp((-norm(Robot2-Obs10))/Obs10_PF)+...
        (Robot2-Obs20)*exp((-norm(Robot2-Obs20))/Obs20_PF)+(Robot2-Obs30)*exp((-norm(Robot2-Obs30))/Obs30_PF)+...
        (Robot2-Obs40)*exp((-norm(Robot2-Obs40))/Obs40_PF)+G2_PF*(Goal2-Robot2)/norm(Goal2-Robot2);

   %Obstacles Accumulate vector sum  %Goal Accumulate - Robot 3
   dx3= dx3 + (Robot3-Robot1)*exp((-norm(Robot3-Robot1))/R1_PF)+(Robot3-Robot2)*exp((-norm(Robot3-Robot2))/R2_PF)+...
        (Robot3-Obs1)*exp((-norm(Robot3-Obs1))/Obs1_PF)+(Robot3-Obs2)*exp((-norm(Robot3-Obs2))/Obs2_PF)+...
        (Robot3-Obs4)*exp((-norm(Robot3-Obs4))/Obs4_PF)+(Robot3-Obs5)*exp((-norm(Robot3-Obs5))/Obs5_PF)+...
        (Robot3-Obs6)*exp((-norm(Robot3-Obs6))/Obs6_PF)+(Robot3-Obs7)*exp((-norm(Robot3-Obs7))/Obs7_PF)+...
        (Robot3-Obs8)*exp((-norm(Robot3-Obs8))/Obs8_PF)+(Robot3-Obs9)*exp((-norm(Robot3-Obs9))/Obs9_PF)+...
        (Robot3-Obs11)*exp((-norm(Robot3-Obs11))/Obs11_PF)+(Robot3-Obs12)*exp((-norm(Robot3-Obs12))/Obs12_PF)+...
        (Robot3-Obs13)*exp((-norm(Robot3-Obs13))/Obs13_PF)+(Robot3-Obs14)*exp((-norm(Robot3-Obs14))/Obs14_PF)+...
        (Robot3-Obs15)*exp((-norm(Robot3-Obs15))/Obs15_PF)+(Robot3-Obs21)*exp((-norm(Robot3-Obs21))/Obs21_PF)+...
        (Robot3-Obs23)*exp((-norm(Robot3-Obs23))/Obs23_PF)+(Robot3-Obs24)*exp((-norm(Robot3-Obs24))/Obs24_PF)+...
        (Robot3-Obs25)*exp((-norm(Robot3-Obs25))/Obs25_PF)+(Robot3-Obs31)*exp((-norm(Robot3-Obs31))/Obs31_PF)+...
        (Robot3-Obs32)*exp((-norm(Robot3-Obs32))/Obs32_PF)+(Robot3-Obs33)*exp((-norm(Robot3-Obs33))/Obs33_PF)+...
        (Robot3-Obs34)*exp((-norm(Robot3-Obs34))/Obs34_PF)+(Robot3-Obs35)*exp((-norm(Robot3-Obs35))/Obs35_PF)+...
        (Robot3-Obs41)*exp((-norm(Robot3-Obs41))/Obs41_PF)+(Robot3-Obs42)*exp((-norm(Robot3-Obs42))/Obs42_PF)+...
        (Robot3-Obs51)*exp((-norm(Robot3-Obs51))/Obs51_PF)+(Robot3-Obs53)*exp((-norm(Robot3-Obs53))/Obs53_PF)+...
        (Robot3-Obs54)*exp((-norm(Robot3-Obs54))/Obs54_PF)+(Robot3-Obs55)*exp((-norm(Robot3-Obs55))/Obs55_PF)+...
        (Robot3-Obs61)*exp((-norm(Robot3-Obs61))/Obs61_PF)+(Robot3-Obs62)*exp((-norm(Robot3-Obs62))/Obs62_PF)+...
        (Robot3-Obs63)*exp((-norm(Robot3-Obs63))/Obs63_PF)+(Robot3-Obs64)*exp((-norm(Robot3-Obs64))/Obs64_PF)+...
        (Robot3-Obs65)*exp((-norm(Robot3-Obs65))/Obs65_PF)+(Robot3-Obs71)*exp((-norm(Robot3-Obs71))/Obs71_PF)+...
        (Robot3-Obs72)*exp((-norm(Robot3-Obs72))/Obs72_PF)+(Robot3-Obs73)*exp((-norm(Robot3-Obs73))/Obs73_PF)+...
        (Robot3-Obs74)*exp((-norm(Robot3-Obs74))/Obs74_PF)+(Robot3-Obs75)*exp((-norm(Robot3-Obs75))/Obs75_PF)+...
        (Robot3-Obs81)*exp((-norm(Robot3-Obs81))/Obs81_PF)+(Robot3-Obs83)*exp((-norm(Robot3-Obs83))/Obs83_PF)+...
        (Robot3-Obs84)*exp((-norm(Robot3-Obs84))/Obs84_PF)+(Robot3-Obs85)*exp((-norm(Robot3-Obs85))/Obs85_PF)+...
        (Robot3-Obs91)*exp((-norm(Robot3-Obs91))/Obs91_PF)+(Robot3-Obs92)*exp((-norm(Robot3-Obs92))/Obs92_PF)+...
        (Robot3-Obs100)*exp((-norm(Robot3-Obs100))/Obs100_PF)+(Robot3-Obs101)*exp((-norm(Robot3-Obs101))/Obs101_PF)+...
        (Robot3-Obs102)*exp((-norm(Robot3-Obs102))/Obs102_PF)+(Robot3-Obs10)*exp((-norm(Robot3-Obs10))/Obs10_PF)+...
        (Robot3-Obs20)*exp((-norm(Robot3-Obs20))/Obs20_PF)+(Robot3-Obs30)*exp((-norm(Robot3-Obs30))/Obs30_PF)+...
        (Robot3-Obs40)*exp((-norm(Robot3-Obs40))/Obs40_PF)+G3_PF*(Goal3-Robot3)/norm(Goal3-Robot3);

   t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
   t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2))); 
   % to check difference between robot and goal as the robot 1 & 3 change
   % their goals

   if t1<0.1
      Goal1=Goal5;
      c1 = c1+1;
   end

   if t2<0.1
      c2 = c2+1;
      if c2==20
         Goal2=Goal4;
      end
   end

   if t3<0.1
      Goal3=Goal7;
      c3 = c3+1;
   end

   t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
   t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2))); 
   % to check difference between robot and goal as the robot 1 & 3 change
   % their goals

   if t1<0.1
      Goal5=Goal6;
   end

   if t3<0.1
       Goal7=Goal8;
   end

   if dx101==1
     %looks to see if the x coordinate of moving obstacle 1 
     %has moved too far left
        if dx10(1) < 2.6
            %if so tells to move right
            dx101=2;
        else
            %if not, carries on moving left
            dx10(1)=dx10(1)-0.35; 
        end
   else
     %looks to see if the x coordinate of moving obstacle 1
     %has moved too far right
        if dx10(1) > 12.4
            %if so tells to move left
            dx101=1;
        else
            %if not, carries on moving right
            dx10(1)=dx10(1)+0.35;  
        end
   end

   if dx201==1
        %looks to see if the y coordinate of moving obstacle 2
        %has moved too far down
        if dx20(1) < 16.8
            %if so tells to move up
            dx201=2;
        else
            %if not tells to move down
            dx20(1)=dx20(1)-0.3;
        end
   else
        %looks to see if the y coordinate of moving obstacle 2
        %has moved too far up
        if dx20(1) > 24
            %if so tells to move down
            dx201=1;
        else
            %if not tells to move up
            dx20(1)=dx20(1)+0.3;
        end
   end

   if dx301==1
     %looks to see if the x coordinate of moving obstacle 3 
     %has moved too far left
        if dx30(1) < 19.8
            %if so tells to move right
            dx301=2;
        else
            %if not tells to move down and left
            dx30(1)=dx30(1)-0.38; 
            dx30(2)=dx30(2)-0.38;
        end
   else
        %looks to see if the x coordinate of moving obstacle 3
        %has moved too far right
        if dx30(1) > 26 
            %if so tells to move left
            dx301=1;
        else
            %if not tells to move up and right
            dx30(1)=dx30(1)+0.38;  
            dx30(2)=dx30(2)+0.38;
        end
   end

   if dx401==1
        %looks to see if the x coordinate of moving obstacle 4
        %has moved too far left
        if dx40(1) < 5.5
            %if so tells to move right
            dx401=2;
        else
            %if not tells to move left
            dx40(1)=dx40(1)-0.25;
        end
   else
        %looks to see if the x coordinate of moving obstacle 4
        %has moved too far right
        if dx40(1) > 17.5
            %if so tells to move left
            dx401=1;
        else
            %if not tells to move right
            dx40(1)=dx40(1)+0.25;
        end
   end

   %Change in Robot Position over time (differenttiation)
   Robot1=Robot1+dx1;
   Robot2=Robot2+dx2;
   Robot3=Robot3+dx3;

   %Change in Obs Position over time (differentiation)
   Obs10=dx10;
   Obs20=dx20;
   Obs30=dx30;
   Obs40=dx40;

   %Calculate the value difference between the robot and the goal 
   t1=(abs(Robot1(1)-Goal1(1))+abs(Robot1(2)-Goal1(2))); 
   t2=(abs(Robot2(1)-Goal2(1))+abs(Robot2(2)-Goal2(2))); 
   t3=(abs(Robot3(1)-Goal3(1))+abs(Robot3(2)-Goal3(2))); 

   %Iteration count
   count=count+1; 

   % %If statements to see which robot still hasn't got to
   % %its obstacle and therefore sets the distance away
   % %to the maximum out of the four to continue iterating
   % 
   % if t1 < t2
   %     t1 = t2;
   % end
   % 
   % if t1 < t3
   %     t1 = t3;
   % end 

   %loop to move the potential field around the robot with the movement of
   %the robot
   for i=1:170 
      for j=1:300 
        pos = [j/10 i/10]; % scaled to fit 300by170 matrix
        z2=0;    %accumulator

        %Obstacles with exponential curve while goal is by vector  
        z2=z2+exp(-norm(pos-Obs1)/Obs1_PF)+exp(-norm(pos-Obs2)/Obs2_PF)+exp(-norm(pos-Obs4)/Obs4_PF)+exp(-norm(pos-Obs5)/Obs5_PF)+...
              exp(-norm(pos-Obs6)/Obs6_PF)+exp(-norm(pos-Obs7)/Obs7_PF)+exp(-norm(pos-Obs8)/Obs8_PF)+exp(-norm(pos-Obs9)/Obs9_PF)+...
              exp(-norm(pos-Obs10)/Obs10_PF)+exp(-norm(pos-Obs11)/Obs11_PF)+exp(-norm(pos-Obs12)/Obs12_PF)+...
              exp(-norm(pos-Obs13)/Obs13_PF)+exp(-norm(pos-Obs14)/Obs14_PF)+exp(-norm(pos-Obs15)/Obs15_PF)+...
              exp(-norm(pos-Obs20)/Obs20_PF)+exp(-norm(pos-Obs21)/Obs21_PF)+exp(-norm(pos-Obs23)/Obs23_PF)+...
              exp(-norm(pos-Obs24)/Obs24_PF)+exp(-norm(pos-Obs25)/Obs25_PF)+...
              exp(-norm(pos-Obs30)/Obs30_PF)+exp(-norm(pos-Obs31)/Obs31_PF)+exp(-norm(pos-Obs32)/Obs32_PF)+...
              exp(-norm(pos-Obs33)/Obs33_PF)+exp(-norm(pos-Obs34)/Obs34_PF)+exp(-norm(pos-Obs35)/Obs35_PF)+...
              exp(-norm(pos-Obs40)/Obs40_PF)+exp(-norm(pos-Obs41)/Obs41_PF)+exp(-norm(pos-Obs42)/Obs42_PF)+...
              exp(-norm(pos-Obs51)/Obs51_PF)+exp(-norm(pos-Obs53)/Obs53_PF)+exp(-norm(pos-Obs54)/Obs54_PF)+exp(-norm(pos-Obs55)/Obs55_PF)+...
              exp(-norm(pos-Obs61)/Obs61_PF)+exp(-norm(pos-Obs62)/Obs62_PF)+...
              exp(-norm(pos-Obs63)/Obs63_PF)+exp(-norm(pos-Obs64)/Obs64_PF)+exp(-norm(pos-Obs65)/Obs65_PF)+...
              exp(-norm(pos-Obs71)/Obs71_PF)+exp(-norm(pos-Obs72)/Obs72_PF)+...
              exp(-norm(pos-Obs73)/Obs73_PF)+exp(-norm(pos-Obs74)/Obs74_PF)+exp(-norm(pos-Obs75)/Obs75_PF)+...
              exp(-norm(pos-Obs81)/Obs81_PF)+exp(-norm(pos-Obs83)/Obs83_PF)+exp(-norm(pos-Obs84)/Obs84_PF)+exp(-norm(pos-Obs85)/Obs85_PF)+...
              exp(-norm(pos-Obs91)/Obs91_PF)+exp(-norm(pos-Obs92)/Obs92_PF)+...
              exp(-norm(pos-Obs100)/Obs100_PF)+exp(-norm(pos-Obs101)/Obs101_PF)+exp(-norm(pos-Obs102)/Obs102_PF)+...
              G1_PF*(norm(Goal1-pos))+G2_PF*(norm(Goal2-pos))+G3_PF*(norm(Goal3-pos))+G4_PF*(norm(Goal4-pos))+...
              G5_PF*(norm(Goal5-pos))+G6_PF*(norm(Goal6-pos))+G7_PF*(norm(Goal7-pos))+G8_PF*(norm(Goal8-pos));

        % The potential functions chosen are similar to the function proposed in
        % the document 'apf.pdf'
        Z2(i,j) = z2; %store in matrix
      end
   end

   %update display 
   % set(figure(5),'units','normalized','outerposition',[0 0 1 1]); %maximise figure 5
   figure(5) 
   set(gca,'XTickLabel','') %remove x label
   set(gca,'YTickLabel','') %remove y label
   set(gca,'ZTickLabel','') %remove z label
   % calculate distance between robot and goal
   plot3(Robot1(1,1)*10, Robot1(1,2)*10, Z2(round(Robot1(1,2)*10), round(Robot1(1,1)*10)),'K.','MarkerSize',10);
   plot3(Robot2(1,1)*10, Robot2(1,2)*10, Z2(round(Robot2(1,2)*10), round(Robot2(1,1)*10)),'K.','MarkerSize',10);
   plot3(Robot3(1,1)*10, Robot3(1,2)*10, Z2(round(Robot3(1,2)*10), round(Robot3(1,1)*10)),'K.','MarkerSize',10);
   surfc(Z2);
   title(sprintf('Iteration: %d',count));
   view(5,55)
   refresh;
   drawnow;
 end
