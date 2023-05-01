

X0 = 0;
Y0 = 1.84;
degree = 4;
theta = pi*degree/180;
V0 =15;
X_prim0 = V0 * cos(theta);
Y_prim0 = V0 * sin(theta);
Xend = 2.37;
m = 20/1000; % mass in Kg
step = 0.01;
etrunk = 1;


while abs(etrunk) > 1e-3 % error smaller than 1 mm, since all units are in meters

    [X1, Y1] = Euler(m, X0, Y0, X_prim0, Y_prim0, step,Xend);
    [X2, Y2] = Euler(m, X0, Y0, X_prim0, Y_prim0, step/2,Xend);
    etrunk = Y1- Y2;
    step = step/2;
end 
Y2


% 
% plot(plotX2(:,2),plotY2(:,2))
% axis([0 2.38 0 3]);
% xlabel("X");
% ylabel("Höjd");
% title("Kastbana för en pil med vikt på 40g")
% 
% disp('   Y_land       stepLen      etrunk')
% format short e
% disp([plotY2(length(plotY2),2), step, abs(etrunk)])










%bullseye vid 4 grader och 80.05 grader