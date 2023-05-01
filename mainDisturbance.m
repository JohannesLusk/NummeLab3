X0 = 0;
Y0 = 1.84;
degree = 80.036;
theta = pi*degree/180;
V0 =15;
X_prim0 = V0 * cos(theta);
Y_prim0 = V0 * sin(theta);
Xend = 2.37;
m = 20/1000; % mass in Kg
step = 0.01;
etrunk = 1;

[YRef,Einput] = EulerDisturbance(20,X0,Y0,V0,degree,step,Xend)
SumEinput= sum(Einput)