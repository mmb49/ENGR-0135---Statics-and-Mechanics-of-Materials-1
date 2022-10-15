% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 6, Example #10

clear all
close all
clc

% Defining symbolic variables
syms R_A R_C Eq_A Eq_C

% Defining remaining variables
A_S = 0.0015; % [m^2]
E_S = 200*10^9; % [Pa]
L_S = 1.5; % [m]
A_B = 0.002; % [m^2]
E_B = 100*10^9; % [Pa]
L_B = 1; % [m]
F_applied = 400*10^3; % [N]

% Defining the equilibrium equation of forces in the x-direction:
Eq_A = R_A + R_C == F_applied;

% Defining the deflection of the steel and brass:
Eq_C = (R_A*L_S)/(E_S*A_S) == (R_C*L_B)/(E_B*A_B);

vars = [R_A, R_C];
eqns = [Eq_A, Eq_C];
[soln1, soln2] = solve(eqns,vars);

% Defining the internal reactionary forces
R_1 = soln1;
R_2 = -soln2;

% Calcuating the deformations:
delta_S = (R_1*L_S)/(E_S*A_S);
delta_B = (R_2*L_B)/(E_B*A_B);

fprintf('The steel has deformed %.1f [mm]\n',delta_S*1000)
fprintf('The brass has deformed %.1f [mm]',delta_B*1000)