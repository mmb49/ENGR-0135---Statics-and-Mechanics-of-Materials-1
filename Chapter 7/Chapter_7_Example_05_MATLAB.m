% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 7, Example #5

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

g = 9.81; %[m/s^2]
m_container = 25000; %[kg]
m_counterweight = 60000; %kg

W_container = m_container*g; %[N]
W_counterweight = m_counterweight*g; %[N]

% Global FBD
syms R_Ax R_Ay R_By
% Summation of forces in the x-direction
eqn1 = R_Ax == 0;
% Summation of forces in the y-direction
eqn2 = R_Ay + R_By == W_container + W_counterweight;
% Summation of moments about point A
eqn3 = R_By*13 + W_counterweight*6 == W_container*(13+38);


% Member AHD
syms D_x D_y F_HI
% Summation of forces in the x-direction
eqn4 = R_Ax + F_HI + D_x == 0;
% Summation of forces in the y-direction
eqn5 = R_Ay + D_y == 0;
% Summation of moments about point A
eqn6 = F_HI*11 + D_x*26 == 0;


% Member BIEF
syms E_x E_y F_GC F_GF
theta = atand(9/38);
beta = atand(9/19);
% Summation of forces in the x-direction
eqn7 = E_x + F_GF*cosd(theta) == F_HI + F_GC*cosd(beta);
% Summation of forces in the y-direction
eqn8 = R_By + E_y == F_GC*sind(beta) + F_GF*sind(theta);
% Summation of moments about point G
eqn9 = E_x*9 == F_HI*26;


% Member CDEF
% Summation of forces in the x-direction
eqn10 = F_GC*cosd(beta) == D_x + E_x + F_GF*cosd(theta);
% Summation of forces in the y-direction
eqn11 = F_GC*sind(beta) + F_GF*sind(theta) == W_counterweight + D_y + E_y + W_container;
% Summation of moments about point C
eqn12 = D_y*6 + E_y*(6+13) + W_container*(6+13+38) == F_GF*sind(theta)*(6+13+38);


eqns = [eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8, eqn9, eqn11];
vars = [R_Ax, R_Ay, R_By, D_x, D_y, E_x, E_y, F_HI, F_GC, F_GF];

[soln_R_Ax, soln_R_Ay, soln_R_By, soln_D_x, soln_D_y, soln_E_x, soln_E_y, soln_F_HI, soln_F_GC, soln_F_GF] = solve(eqns,vars);

fprintf('Reactionary Forces:\n')
fprintf('R_Ax = %.2f [kN]\n',soln_R_Ax/1000)
fprintf('R_Ay = %.2f [kN]\n',soln_R_Ay/1000)
fprintf('R_By = %.2f [kN]\n\n',soln_R_By/1000)

fprintf('Forces in Two-force Members:\n')
fprintf('F_HI = %.2f [kN]\n',soln_F_HI/1000)
fprintf('F_GC = %.2f [kN]\n',soln_F_GC/1000)
fprintf('F_GF = %.2f [kN]\n\n',soln_F_GF/1000)

fprintf('Forces on Pins:\n')
fprintf('D_x = %.2f [kN]\n',soln_D_x/1000)
fprintf('D_y = %.2f [kN]\n',soln_D_y/1000)
fprintf('E_x = %.2f [kN]\n',soln_E_x/1000)
fprintf('E_y = %.2f [kN]\n',soln_E_y/1000)
