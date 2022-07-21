% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry, Samatha E. Wismer and Lee A. Dosse
% ISBN: 978-1-77412-230-3
% Publisher: Top Hat

% Chapter 2, Section 2.3.2 Vector Addition and Subtraction

clear all % Clears all variables from the Workspace
close all % Closes any figure windows that may be open
clc % Clears the Command Window

% Let us define our two vectors of interest:
F_1 = [3, 1, 0];
F_2 = [2, 2, 0];

% We will calculate the resultant due to addition, and due to subtraction,
% and plot each result.

% We will define a new figure window using this command
figure(1) 
% Within our figure, we will have two subplot windows. The subplot windows 
% will be in two columns (second value in the function input), one row 
% (first value in the function input). The first subplot (third value in 
% the function input) will show the addition  of the two vectors F_1 and 
% F_2:
subplot(1,2,1) 

% Calculating the resultant of F_1 + F_2:
R = F_1 + F_2;

% Keeps the previous vector and will plot the following vector without
% clearing the plot window
hold on

% The quiver command plots a vector. The point of origination in x- and 
% y-coordinates are the first two entries (e.g. 0 and 0). The point of 
% termination in x- and y-coordinates are the third and fourth entries
% (e.g. F_1(1) and F_1(2)). Note F_1(1) gives the first entry of F_1, and
% F_1(2) gives the second entry of F_1. The last function input, i.e the
% fifth entry of "0" turns off auto-scaling.
quiver(0,0,F_1(1),F_1(2),0)

% Plotting vector F_2. Note the point of origination is the point of
% termination of vector F_1.
quiver(F_1(1),F_1(2),F_2(1),F_2(1),0)

% Plotting the resultant, where the point of origination is the same as the
% point of origination of vector F_1
quiver(0,0,R(1),R(2),0)

% Setting the limits of the x-axis
xlim([0 6])

% Setting the limits of the y-axis
ylim([0 4])

% Providing a label to the x-axis
xlabel('x')

% Providing a label to the y-axis
ylabel('y')

% Constructing a color-coded leged. The legend is based on the order of
% vectors being plotted
legend('F_{1}','F_{2}','R')

% The second subplot (third value in the function input) will show the
% subtraction of the two vectors F_1 and F_2:
subplot(1,2,2)
hold on
R = F_1 - F_2;
quiver(0,0,F_1(1),F_1(2),0)
quiver(F_1(1),F_1(2),-F_2(1),-F_2(1),0)
quiver(0,0,R(1),R(2),0)
xlim([0 4])
ylim([-2 2])
xlabel('x')
ylabel('y')
legend('F_{1}','F_{2}','R')