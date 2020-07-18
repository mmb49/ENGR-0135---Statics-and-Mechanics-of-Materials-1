% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 4, Example #2

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% Defining symbolic variables
syms rho z dz f g z_bar

% Density as a function of position
rho = (8.96 - 0.224*z); %[g/cm^3]

% Defining area and differential volume
A = 20*20; %[cm^2]
dV = A*dz;

% The moment about  the y-axiz, M_xy, i.e. the numerator of Eq. 12, will be defined as f
f = z*rho*dV;

% The mass, i.e. the denominator of Eq. 12, will be defined as g
g = rho*dV;

% Defining the bounds of integration, with a being the lower and b being the upper
a = 0;
b = 20;

% Integrating the numerator
num = int(f,a,b);

% Integrating the denominator
denom = int(g,a,b);

% Calculating z-bar
z_bar = num/denom;

fprintf('z_bar = %.3f [cm]',z_bar)
