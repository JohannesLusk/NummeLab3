clear

X = 0;
Y = 1.84;

degree = 4;
theta = pi*degree/180;

V = 15;
X_prim = V * cos(theta);
Y_prim = V * sin(theta);

[plotX, plotY] = Euler(1, 0, 1.84, X_prim, Y_prim, 0.0001);
plot(plotX(:,2),plotY(:,2))
axis([0 2.38 0 3]);

%bullseye typ vid 4 grader och 80.05 grader