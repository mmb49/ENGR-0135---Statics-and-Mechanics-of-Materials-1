% Statics and Mechanics of Materials: An Example-based Approach
% Matthew M. Barry and Samatha E. Wismer
% ISBN: 978-1-77412-230-3
% Publisher: TopHat

% Chapter 4, Example #8

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 1 - rectangle
A1 = (120*80); %[mm^2]
x_bar1 = 60; %[mm]
y_bar1 = 150+(80/2); %[mm]

fprintf('A_1 = %.3f [mm^2]\n',A1) 
fprintf('x_bar1 = %.3f [mm]\n',x_bar1) 
fprintf('y_bar1 = %.3f [mm]\n\n',y_bar1) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 2 - rectangle
A2 = (60*50); %[mm^2]
x_bar2 = 60; %[mm]
y_bar2 = 180 + (50/2); %[mm]

fprintf('A_2 = %.3f [mm^2]\n',A2) 
fprintf('x_bar2 = %.3f [mm]\n',x_bar2) 
fprintf('y_bar2 = %.3f [mm]\n\n',y_bar2) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 3 - semicircle
A3 = (pi*(60^2))/2; %[mm^2]
x_bar3 = 60; %[mm]
y_bar3 = 230 + ((4*60)/(3*pi)); %[mm]

fprintf('A_3 = %.3f [mm^2]\n',A3) 
fprintf('x_bar3 = %.3f [mm]\n',x_bar3)
fprintf('y_bar3 = %.3f [mm]\n\n',y_bar3) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 4 - semicircle
A4 = (pi*(30^2))/2; %[mm^2]
x_bar4 = 60; %[mm]
y_bar4 = 230 + ((4*30)/(3*pi)); %[mm]

fprintf('A_4 = %.3f [mm^2]\n',A4) 
fprintf('x_bar4 = %.3f [mm]\n',x_bar4) 
fprintf('y_bar4 = %.3f [mm]\n\n',y_bar4) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 5 - rectangle
A5 = (60*60); %[mm^2]
x_bar5 = 60; %[mm]
y_bar5 = 90 + (60/2); %[mm]

fprintf('A_5 = %.3f [mm^2]\n',A5)
fprintf('x_bar5 = %.3f [mm]\n',x_bar5) 
fprintf('y_bar5 = %.3f [mm]\n\n',y_bar5)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 6 - semicircle
A6 = (pi*(20^2))/2; %[mm^2]
x_bar6 = 60; %[mm]
y_bar6 = 120 + ((4*20)/(3*pi)); %[mm]

fprintf('A_6 = %.3f [mm^2]\n',A6) 
fprintf('x_bar6 = %.3f [mm]\n',x_bar6)
fprintf('y_bar6 = %.3f [mm]\n\n',y_bar6)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 7 - rectangle
A7 = (40*53); %[mm^2]
x_bar7 = 60; %[mm]
y_bar7 = 67 + (53/2); %[mm]

fprintf('A_7 = %.3f [mm^2]\n',A7) 
fprintf('x_bar7 = %.3f [mm]\n',x_bar7) 
fprintf('y_bar7 = %.3f [mm]\n\n',y_bar7) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 8 - circle
A8 = (pi*(70^2)); %[mm^2]
x_bar8 = 60; %[mm]
y_bar8 = 0; %[mm]

fprintf('A_8 = %.3f [mm^2]\n',A8) 
fprintf('x_bar8 = %.3f [mm]\n',x_bar8) 
fprintf('y_bar8 = %.3f [mm]\n\n',y_bar8) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 9 - circular segment
alpha = asin(20/70);
A9 = ((70^2)/2)*(2*alpha - sin(2*alpha)); %[mm^2]
x_bar9 = 60; %[mm]
y_bar9 = (4*70*(sin(alpha)^3))/(3*(2*alpha - sin(2*alpha))); %[mm]

fprintf('A_9 = %.3f [mm^2]\n',A9) 
fprintf('x_bar9 = %.3f [mm]\n',x_bar9) 
fprintf('y_bar9 = %.3f [mm]\n\n',y_bar9) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 10 - semicircle
A10 = (pi*(32.5^2))/2; %[mm^2]
x_bar10 = 60; %[mm]
y_bar10 = -(4*32.5)/(3*pi); %[mm]

fprintf('A_10 = %.3f [mm^2]\n',A10) 
fprintf('x_bar10 = %.3f [mm]\n',x_bar10) 
fprintf('y_bar10 = %.3f [mm]\n\n',y_bar10) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 11 - right-angle triangle
A11 = 0.5*(52.5*67); %[mm^2]
x_bar11 = ((2/3)*52.5)+27.5; %[mm]
y_bar11 = (1/3)*67; % [mm]

fprintf('A_11 = %.3f [mm^2]\n',A11) 
fprintf('x_bar11 = %.3f [mm]\n',x_bar11) 
fprintf('y_bar11 = %.3f [mm]\n\n',y_bar11) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 12 - rectangle
A12 = (12.5*62); %[mm^2]
x_bar12 = (0.5*12.5)+80; %[mm]
y_bar12 = 0.5*62; %[mm]

fprintf('A_12 = %.3f [mm^2]\n',A12) 
fprintf('x_bar12 = %.3f [mm]\n',x_bar12) 
fprintf('y_bar12 = %.3f [mm]\n\n',y_bar12)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Area 13 - can't use table, must rely on integration
syms y x a b c d e f dA dx dy g h
% Equation describing circle
y = sqrt(70^2 - x^2); 

% Bounds of integration 20 <= x <= 32.5 as shown in panel m)
a = 20;
b = 32.5;
f = int(y,a,b);
% Area of square below region of interest
A_sub = 62*12.5;

A13 = double(f) - A_sub;

% Now we have to calculate the x-location of the centroid using Eq. 15
% The differential area as shown in panel n)
dA = y*dx;

% Calculating the numerator of Eq. 15, with updated bounds of integration
g = x*dA;
c = 80;
d = 92.5;
num1 = int(g,c,d);

% Calculating the denominator of Eq. 15
denom1 = int(dA,c,d);

% Therefore, the x-location of the centroid of Area 13 is
x_bar13 = double(num1/denom1);  %[mm]

clearvars y dA
syms y
% Now we have to calculate the y-location of the centroid using Eq. 16.
% The differential area as shown in panel o)
x = sqrt(70^2 - y^2); 
dA = x*dy;

% Calculating the numerator of Eq. 16, with updated bounds of integration
h = y*dA;
e = 62;
f = 67; 
num2 = int(h,y,e,f);

% Calculating the denominator of Eq. 16
denom2 = int(dA,e,f);

% Therefore, the x-location of the centroid of Area 13 is
y_bar13 = double(num2/denom2);  %[mm] - SolidWorks provides 63.774 [mm]

fprintf('A_13 = %.3f [mm^2]\n',A13)
fprintf('x_bar13 = %.3f [mm]\n',x_bar13)
fprintf('y_bar13 = %.3f [mm]\n\n',y_bar13)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculating the x-centroid of the hook
x_bar = (A1*x_bar1 - A2*x_bar2 + A3*x_bar3 - A4*x_bar4 + A5*x_bar5 + A6*x_bar6 + A7*x_bar7 + ...
        A8*x_bar8 - A9*x_bar9 - A10*x_bar10 - A11*x_bar11 - A12*x_bar12 - A13*x_bar13)/...
        (A1 - A2 + A3 - A4 + A5 + A6 + A7 + A8 - A9 - A10 - A11 - A12 - A13);

y_bar = (A1*y_bar1 - A2*y_bar2 + A3*y_bar3 - A4*y_bar4 + A5*y_bar5 + A6*y_bar6 + A7*y_bar7 + ...
        A8*y_bar8 - A9*y_bar9 - A10*y_bar10 - A11*y_bar11 - A12*y_bar12 - A13*y_bar13)/...
        (A1 - A2 + A3 - A4 + A5 + A6 + A7 + A8 - A9 - A10 - A11 - A12 - A13);
    
fprintf('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n')
fprintf('x_bar = %.3f [mm]\n',x_bar)
fprintf('y_bar = %.3f [mm]\n\n',y_bar)

% Values provided by SolidWorks
x_bar_SolidWorks = 59.095;
y_bar_SolidWorks = 105.157;

fprintf('x_bar provide by SolidWorks = %.3f [mm]\n',x_bar_SolidWorks)
fprintf('y_bar provide by SolidWorks = %.3f [mm]\n\n',y_bar_SolidWorks)

% Calculating the percent differnce between our solution and SolidWorks
per_diff_x = (abs(x_bar - x_bar_SolidWorks)/((x_bar + x_bar_SolidWorks)/2))*100;
per_diff_y = (abs(y_bar - y_bar_SolidWorks)/((y_bar + y_bar_SolidWorks)/2))*100;

fprintf('Percent difference in x_bar = %.3f per. \n',per_diff_x)
fprintf('Percent difference in y_bar = %.3f per. \n\n',per_diff_y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculating the centroid of the hook without areas A_9 and A_13
x_bar_assumption = (A1*x_bar1 - A2*x_bar2 + A3*x_bar3 - A4*x_bar4 + A5*x_bar5 + A6*x_bar6 + ...
        A7*x_bar7 + A8*x_bar8 - A10*x_bar10 - A11*x_bar11 - A12*x_bar12)/...
        (A1 - A2 + A3 - A4 + A5 + A6 + A7 + A8 - A10 - A11 - A12);

y_bar_assumption = (A1*y_bar1 - A2*y_bar2 + A3*y_bar3 - A4*y_bar4 + A5*y_bar5 + A6*y_bar6 + ...
        A7*y_bar7 + A8*y_bar8 - A10*y_bar10 - A11*y_bar11 - A12*y_bar12)/...
        (A1 - A2 + A3 - A4 + A5 + A6 + A7 + A8 - A10 - A11 - A12);

fprintf('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n')
fprintf('x_bar without A_9 and A_13 = %.3f [mm]\n',x_bar_assumption)
fprintf('y_bar without A_9 and A_13 = %.3f [mm]\n\n',y_bar_assumption)    
    
per_diff_x_assumption = (abs(x_bar_assumption - x_bar_SolidWorks)/((x_bar_assumption + x_bar_SolidWorks)/2))*100;
per_diff_y_assumption = (abs(y_bar_assumption - y_bar_SolidWorks)/((y_bar_assumption + y_bar_SolidWorks)/2))*100;

fprintf('Percent difference in x_bar without A_9 and A_13 = %.3f per. \n',per_diff_x_assumption)
fprintf('Percent difference in y_bar without A_9 and A_13 = %.3f per. \n\n',per_diff_y_assumption)

