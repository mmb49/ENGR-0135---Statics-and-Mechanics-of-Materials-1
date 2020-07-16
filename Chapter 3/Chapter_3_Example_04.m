% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 3, Example 4

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% Defining the moment arm Q as follows:
Q = [4, 0, 0];

% Defining the force vector P as follows:
P = [3*sqrt(3), 0, 3];

% Defining the corss product between the two vectors as M:
M = cross(Q,P);

% For more details about the dot product, type "help cross" in the Command
% Window and hit Enter.

fprintf('The result of the cross product is M=[%.0f, %.0f, %.0f]',M(1),M(2),M(3))
