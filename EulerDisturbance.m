function [Y_refLand, Einput] = EulerDisturbance(mg,x0,y0,V0,degree, h,dist)
X0 = x0;
Y0 = y0;
step = h;
Xend= dist;
theta = pi*degree/180;
m = mg/1000;
X_prim0 = V0 * cos(theta);
Y_prim0 = V0 * sin(theta);
etrunk = 1;
g = 9.81;
Xdrag= 0.002;
Ydrag = 0.02;


while abs(etrunk) > 1e-3 % error smaller than 1 mm, since all units are in meters

    [X1, Y1] = Euler(m, X0, Y0, X_prim0, Y_prim0, step, Xend);
    [X2, Y2] = Euler(m, X0, Y0, X_prim0, Y_prim0, step/2, Xend);
    etrunk = Y1- Y2;
    step = step/2;
end 
Y_refLand = Y2;


parameters = [Xend, Y0, V0, degree, mg, g, Xdrag, Ydrag];
disturbances = [0.005,0.005,0.5,0.2,0.5,0.005,2e-5,2e-4];
deltas = zeros(length(parameters),1);



for i = 1:length(parameters)
    parameters(i) = parameters(i)+disturbances(i)
    theta = pi*degree/180;
    X_prim0 = V0 * cos(theta);
    Y_prim0 = V0 * sin(theta);
    m = mg/1000; % mass in Kg
    step = 0.01;
    etrunk = 1;

    while abs(etrunk) > 1e-3 % error smaller than 1 mm, since all units are in meters

    [X1, Y1] = EulerParams(m,X0, parameters(2),X_prim0, Y_prim0, step,parameters(1),parameters(6),parameters(7),parameters(8));
    [X2, Y2] = EulerParams(m,X0, parameters(2),X_prim0, Y_prim0, step/2,parameters(1),parameters(6),parameters(7),parameters(8));;
    etrunk = Y1- Y2;
    step = step/2;
    end 
    deltas(i) = Y_refLand - Y2;

    parameters(i) = parameters(i)-disturbances(i)
end 
Einput = deltas;








end