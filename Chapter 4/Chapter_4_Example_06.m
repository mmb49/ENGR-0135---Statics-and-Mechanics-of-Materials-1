% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 4, Example #6

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% Defining symbolic variables
syms R dtheta theta f h g dL x_bar y_bar

% The differential length is:
dL = R*dtheta;

% Defining x and y
x = R*cos(theta);
y = R*sin(theta);

% The numerator of Eq. 19, will be defined as f
f = x*dL;

% The numerator of Eq. 20, will be defined as f
h = y*dL;

% The mass, i.e. the denominator of Eqs. 19 and 20, will be defined as g
g = dL;

% Defining the bounds of integration, with a being the lower and b being the upper
a = 0;
b = (3*pi)/4;

% Integrating the numerators
num1 = int(f,theta,a,b);
num2 = int(h,theta,a,b);

% Integrating the denominator
denom = int(g,theta,a,b);

% Calculating x-bar and y-bar
x_bar = num1/denom;
y_bar = num2/denom;

fprintf('(x_bar, y_bar) = (%s, %s )',x_bar,y_bar)