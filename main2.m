m = 0.020; %mass of arrow
V0 = 15; % initial
x0 = 0;
y0 = 1.84; % throwing height
g = 9.82;
K_x = 0.002; % x dir drag
K_y = 0.02; % y dir drag
degTheta = 4; theta = (4/360)*2*pi;

xP0 = V0*cos(theta); yP0 = V0*sin(theta);

V = sqrt(xP^2 + yP^2);
yPP = (-m*g -K_y*yP*V)/m;
xPP = (-K_x*xP*V)/m;





