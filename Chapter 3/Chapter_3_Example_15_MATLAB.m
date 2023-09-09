% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: Top Hat

% Chapter 3, Example #15

clear all
close all
clc

% Let us create three random, planar moment arms:
r1 = [randi(10,1), 0, randi(10,1)];
r2 = [randi(10,1), 0, randi(10,1)];
r3 = [randi(10,1), 0, randi(10,1)];

fprintf('r_{1} = [%i, %i, %i]\n',r1(1),r1(2),r1(3))
fprintf('r_{2} = [%i, %i, %i]\n',r2(1),r2(2),r2(3))
fprintf('r_{2} = [%i, %i, %i]\n\n',r2(1),r2(2),r2(3))

% Let us create three random, parallel force vectors:
F1 = [0, randi(10,1), 0];
F2 = [0, randi(10,1), 0];
F3 = [0, randi(10,1), 0];

fprintf('F_{1} = [%i, %i, %i]\n',F1(1),F1(2),F1(3))
fprintf('F_{2} = [%i, %i, %i]\n',F2(1),F2(2),F2(3))
fprintf('F_{2} = [%i, %i, %i]\n\n',F2(1),F2(2),F2(3))

% We will calculate the moment of force about point O do to each individual
% force acting on each respective moment arm:
MO = cross(r1,F1) + cross(r2,F2) + cross(r3,F3);

fprintf('The moment of force about O due to F_{1}, F_{2} and F_{3} is:\n')
fprintf('M_{O} = [%i, %i, %i]\n\n',MO(1),MO(2),MO(3))

% We will calculate the resultant force:
R = F1 + F2 + F3;

% We will determine the component of the moment arm vector r:
r = [abs(MO(3))/norm(R), abs(MO(2))/norm(R), abs(MO(1))/norm(R)];

% Lastly, we will check the newly calculated moment is the same as before:
M = cross(r,R);

fprintf('The resultant force R = [%i, %i, %i] acts on a moment arm r = [%f, %f, %f] producing a moment M = [%i, %i, %i]\n',R(1),R(2),R(3),r(1),r(2),r(3),M(1),M(2),M(3))
