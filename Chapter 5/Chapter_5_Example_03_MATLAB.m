% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 5, Example #3

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% Givens
theta = 10; %degrees

% R_y:
Ry = 9.81*(200000 + 40000 + 30000);

% r_1
r1 = [-25*cosd(theta), 80, -25*sind(theta)];

% r_2
r2 = [40*cosd(theta), 80, 40*sind(theta)];

% r_3
r3 = [80*cosd(theta), 45, 80*sind(theta)];

% M_1
W_additional = [0, -9.81*200000, 0];
M1 = cross(r1,W_additional);

% M_2
W_crane_arm = [0, -9.81*40000, 0];
M2 = cross(r2,W_crane_arm);

% M_3
W_jib_crane = [0, -9.81*30000, 0];
M3 = cross(r3,W_jib_crane);

% M_R
MR = -[(M1(1)+M2(1)+M3(1)), (M1(2)+M2(2)+M3(2)), (M1(3)+M2(3)+M3(3))];

fprintf('R_y = %1.2f [MN] \n\n',Ry/10^6)
fprintf('r_1 = <%1.2f, %1.2f, %1.2f> [m] \n',r1(1),r1(2),r1(3))
fprintf('r_2 = <%1.2f, %1.2f, %1.2f> [m] \n',r2(1),r2(2),r2(3))
fprintf('r_3 = <%1.2f, %1.2f, %1.2f> [m] \n\n',r3(1),r3(2),r3(3))
fprintf('M_1 = <%1.2e, %1.2e, %1.2e> [MN-m] \n',M1(1)/10^6,M1(2)/10^6,M1(3)/10^6)
fprintf('M_2 = <%1.2e, %1.2e, %1.2e> [MN-m] \n',M2(1)/10^6,M2(2)/10^6,M2(3)/10^6)
fprintf('M_3 = <%1.2e, %1.2e, %1.2e> [MN-m] \n\n',M3(1)/10^6,M3(2)/10^6,M3(3)/10^6)
fprintf('M_R = <%1.2e, %1.2e, %1.2e> [MN-m] \n\n',MR(1)/10^6,MR(2)/10^6,MR(3)/10^6)


