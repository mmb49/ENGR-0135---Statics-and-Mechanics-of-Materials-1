% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry, Samatha E. Wismer and Lee A. Dosse
% ISBN: 978-1-77412-230-3
% Publisher: Top Hat

% Chapter 2, Section 2.3.1 Example #6

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% We are going to distribute a scalar value through a vector. This is done
% by component-wise multiplication.

% First, we will define the magnitude of the vector, Fmag:
Fmag = 250.; % [kN]
A = [1, 2, 3];

% Now we will define the unit vector of F, denoted as e:
e = [-0.282, -0.188, -0.941];

% We will use component-wise multiplication to distribute Fmag to every 
% term with vector e using the .* command. This command can be used to do
% component-by-component mulitplication for two same-size vectors:
F = Fmag.*e;

% For more details about the dot product, type "help .*" in the Command
% Window and hit Enter. Now we will display the result:
disp(F);