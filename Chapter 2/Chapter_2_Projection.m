% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry, Samatha E. Wismer and Lee A. Dosse
% ISBN: 978-1-77412-230-3
% Publisher: Top Hat

% Chapter 2, Section 2.3.1 In-text Example

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% Defining the vector A. The "[" and "]" are used to denote arrays. The A
% vector is a 1x3 - there are 1 row and 3 columns with numeric values.
% MATLAB defines arrays by rows and columns. If we typed "size(A)" into the
% Command Window followed by hitting "Enter", we would get a result of 
% "1 3". Now, if we used ";" to separate the entries, A would be a 3x1 
% array.
A = [1, 2, 3];

% Defining the vector B as follows:
B = [4, 5, 6];

% Defining the dot product between the two vectors as C:
C = dot(A,B);

% For more details about the dot product, type "help dot" in the Command
% Window and hit Enter.

fprintf('The result of the dot product is %.0f',C)
% fprintf, or a file-print command, is used to display text to the screen
% as well as save it in a file, if more code is added. The " ' " contain
% what is to be output to the Command Window. The %.0f command means to
% dispaly a number to zero decimales of precision in the float formant. The
% ",C" is necessary to designate which value will be displayed in the
% float format.
