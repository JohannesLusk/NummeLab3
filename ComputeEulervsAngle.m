function Y_land = ComputeEulervsAngle(degree, AccErr)

X0 = 0;
Y0 = 1.84;
theta = pi*degree/180;
V0 = 15;
X_prim0 = V0 * cos(theta);
Y_prim0 = V0 * sin(theta);
Xend = 2.37;
m = 20/1000; % mass in Kg
step = 0.01;
etrunk = 1;

while abs(etrunk) > AccErr % error smaller than 1 mm, since all units are in meters

    [plotX1, plotY1] = Euler(m, X0, Y0, X_prim0, Y_prim0, step,Xend);
    [plotX2, plotY2] = Euler(m, X0, Y0, X_prim0, Y_prim0, step/2,Xend);
    etrunk = plotY1(length(plotY1),2) - plotY2(length(plotY2),2);
    step = step/2;
end 
Y_land = plotY2(length(plotY2),2);

end
