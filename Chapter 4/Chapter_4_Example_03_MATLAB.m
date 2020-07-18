% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 4, Example #3

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% defining symbolic variables
syms dA dV dz a b y y_c f g z r

% The function of the paraboloid allows us to express y in terms of z
y = (z^2)/1.5;

% The differential volume is 2*pi*r*dA
r = z;
dA = (1.5 - y)*dz;
dV = 2*pi*r*dA ;

% The centroid of the differential area is y + (1.5-y)/2
y_c = (1.5+y)/2;

% We define f, the function we will integrate in the numerator
f = y_c*dV;

% We define g, the function we will integrate in the denominator
g = dV;

% Defining the bounds of integration, with a being the lower and b being
% the upper
a = 0;
b = 1.5;

% Integrating the numerator
num = int(f,a,b);

% Integrating the denominator
denom = int(g,a,b);

% Calculating the centroid
y_bar = num/denom;

fprintf('y_bar = %.3f [m]',y_bar)
