% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 3, Example 8

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

A = [6, 3, 3];
B = [4, 4, 0];
r_AB = A-B;

F1 = [2, 1, -1];
F2 = -1*F1;

M_O = cross(A,F1) + cross(B,F2);
M_O_rAB_F1 = cross(r_AB,F1);
M_O_rAB_F2 = cross(r_AB,F2);

fprintf('The moment of force about point O due to F_{1} and F_{2} is: <%.0f, %.0f, %.0f>\n',M_O(1),M_O(2),M_O(3))
fprintf('The moment of force about point O due to F_{1} on r_{A/B} is: <%.0f, %.0f, %.0f>\n',M_O_rAB_F1(1),M_O_rAB_F1(2),M_O_rAB_F1(3))
fprintf('The moment of force about point O due to F_{2} on r_{A/B} is: <%.0f, %.0f, %.0f>\n',M_O_rAB_F2(1),M_O_rAB_F2(2),M_O_rAB_F2(3))