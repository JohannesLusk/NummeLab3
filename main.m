X = 0;
Y = 1.84;

degree = 4;
theta = pi*degree/180;

V = 15;

X_prim = V * cos(theta)
Y_prim = V * sin(theta)

[plotX, plotY] = Euler(0.02, 0, 1.84, X_prim, Y_prim, 0.1);
plot(plotX, plotY);