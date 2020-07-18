% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 7, Example #4

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

theta = atand(1/3);

%    R_Ax  R_Ay  R_Fy  F_AC     F_AB           F_BD          F_BC        F_CF      F_EC       F_DC      F_DE          F_EF
A = [1,    0,     0,   -1,  -cosd(theta),            0,            0,     0,            0,      0,            0,            0; %Eq. D
     0,    1,     0,    0,  -sind(theta),            0,            0,     0,            0,      0,            0,            0; %Eq. E
     0,    0,     0,    0,             1,           -1,           -1,     0,            0,      0,            0,            0; %Eq. F
     0,    0,     0,    0,   sind(theta), -sind(theta),  sind(theta),     0,            0,      0,            0,            0; %Eq. G
     0,    0,     0,    1,             0,            0,  cosd(theta),    -1, -cosd(theta),      0,            0,            0; %Eq. H
     0,    0,     0,    0,             0,            0,  sind(theta),     0,  sind(theta),      1,            0,            0; %Eq. I
     0,    0,     0,    0,             0,            1,            0,     0,            0,      0,           -1,            0; %Eq. J
     0,    0,     0,    0,             0,  sind(theta),            0,     0,            0,      1,  sind(theta),            0; %Eq. K
     0,    0,     0,    0,             0,            0,            0,     0,            1,      0,            1,           -1; %Eq. L
     0,    0,     0,    0,             0,            0,            0,     0,  sind(theta),      0, -sind(theta),  sind(theta); %Eq. M
     0,    0,     0,    0,             0,            0,            0,     1,            0,      0,            0,  cosd(theta); %Eq. N     
     0,    0,     1,    0,             0,            0,            0,     0,            0,      0,            0, -sind(theta)];%Eq. O
 
 
 

%Eq  D  E  F    G    H  I  J  K  L    M    N  O
b = [0; 0; 0; 63.25; 0; 0; 0; 0; 0; 63.25; 0; 0];

soln = inv(A)*b;

fprintf('+ = Compression, - = Tension\n')
fprintf('R_Ax = %.2f [kN]\n',soln(1))
fprintf('R_Ay = %.2f [kN]\n',soln(2))
fprintf('R_Fy = %.2f [kN]\n',soln(3))
fprintf('F_AB = %.2f [kN]\n',soln(5))
fprintf('F_AC = %.2f [kN]\n',soln(4))
fprintf('F_BC = %.2f [kN]\n',soln(7))
fprintf('F_BD = %.2f [kN]\n',soln(6))
fprintf('F_CF = %.2f [kN]\n',soln(8))
fprintf('F_DC = %.2f [kN]\n',soln(10))
fprintf('F_DE = %.2f [kN]\n',soln(11))
fprintf('F_EC = %.2f [kN]\n',soln(9))
fprintf('F_EF = %.2f [kN]\n',soln(12))
    
    
