


X0 = 0;
Y0 = 1.84;
degree = 3;
theta = pi*degree/180;
V0 =15;
X_prim0 = V0 * cos(theta);
Y_prim0 = V0 * sin(theta);
Xend = 2.37;
m = 20/1000; % mass in Kg
step = 0.01;
etrunk = 1;


while abs(etrunk) > 1e-3 % error smaller than 1 mm, since all units are in meters
    [X1Plot, Y1Plot] = EulerPlot(m, X0, Y0, X_prim0, Y_prim0, step,Xend);
    [X2Plot, Y2Plot] = EulerPlot(m, X0, Y0, X_prim0, Y_prim0, step/2,Xend);
    etrunk = Y1Plot(length(Y1Plot),2)-Y2Plot(length(Y2Plot),2);
    step = step/2;
end 





plot(X2Plot(:,2),Y2Plot(:,2))
axis([0 2.38 0 3]);
xlabel("X");
ylabel("Höjd");
title("Kastbana")
hold on


X0 = 0;
Y0 = 1.84;
degree = 3;
theta = pi*degree/180;
V0 =10;
X_prim0 = V0 * cos(theta);
Y_prim0 = V0 * sin(theta);
Xend = 2.37;
m = 20/1000; % mass in Kg
step = 0.01;
etrunk = 1;


while abs(etrunk) > 1e-3 % error smaller than 1 mm, since all units are in meters
    [X1Plot, Y1Plot] = EulerPlot(m, X0, Y0, X_prim0, Y_prim0, step,Xend);
    [X2Plot, Y2Plot] = EulerPlot(m, X0, Y0, X_prim0, Y_prim0, step/2,Xend);
    etrunk = Y1Plot(length(Y1Plot),2)-Y2Plot(length(Y2Plot),2);
    step = step/2;
end 
plot(X2Plot(:,2),Y2Plot(:,2))



X0 = 0;
Y0 = 1.84;
degree = 3;
theta = pi*degree/180;
V0 =20;
X_prim0 = V0 * cos(theta);
Y_prim0 = V0 * sin(theta);
Xend = 2.37;
m = 20/1000; % mass in Kg
step = 0.01;
etrunk = 1;


while abs(etrunk) > 1e-3 % error smaller than 1 mm, since all units are in meters
    [X1Plot, Y1Plot] = EulerPlot(m, X0, Y0, X_prim0, Y_prim0, step,Xend);
    [X2Plot, Y2Plot] = EulerPlot(m, X0, Y0, X_prim0, Y_prim0, step/2,Xend);
    etrunk = Y1Plot(length(Y1Plot),2)-Y2Plot(length(Y2Plot),2);
    step = step/2;
end 
plot(X2Plot(:,2),Y2Plot(:,2))

legend({"kastbana vid 15 m/s","kastbana vid 10 m/s","Kastbana id 20 m/s"})



