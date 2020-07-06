% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 4, Example #1

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% Defining symbolic variables
syms rho % Density
syms g % Gravitational acceleration
syms x % Position in the x-direction, used to calculate dA
syms y % Position in the y-direction from x-axis to center of dA
syms dy % Thickness of dA
syms dW % Differential weight
syms f % Variable to represent function of numerator
syms h % Variabel to represent function of denominator
syms y_bar % Centroid of semi-elliptical area

% We need to express the equation of the ellipse in terms of x=x(y)
x = sqrt((100^2)*(1 - ((y^2)/(50^2))));

% We will define the differential weight as:
dW = rho*g*x*dy;

% The numerator of Eq. 8, will be defined as f such that:
f = y*dW;

% The denominator of Eq. 8, will be defined as g such that:
h = dW;

% Defining the bounds of integration, with a being the lower and b being 
% the upper, we have:
a = 0;
b = -50;

% Integrating the numerator using the "int" function. The variable f is the
% input, and we are integrating with respect to y. The limits are a and b
% You can type "help int" into the Command Window for a description of 
% the function
numerator = int(f,y,a,b);

% Integrating the denominator
denominator = int(h,y,a,b);

% Calculating and y_bar
y_bar = numerator/denominator;

% Displaying y_bar symbolically and to 3 decima places
fprintf('y_bar = %s [m] = %.3f [m]',y_bar,y_bar)