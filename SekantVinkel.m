function [Degree, E] = SekantVinkel(degree0,degree1,V)
 %degree0 = 81;
 %degree1 = 79;
 format long
 f0 = ComputeEulervsAngle(degree0,1e-3,V);
 f0 = f0-1.83;
 f1 = f0 + 1;
 etrunk = abs(f0-f1);

 while etrunk > 1e-2
      f1 = ComputeEulervsAngle(degree1,1e-3,V);
      f1 = f1 - 1.83;
     t_n = f1*((degree1-degree0)/(f1-f0));
     degree0 = degree1;
     degree1 = degree1-t_n;
     etrunk = abs(f0-f1);
     if etrunk > 1e-2
        f0 = f1;
     end
 end
 "Höjd Vinkel1: " + ComputeEulervsAngle(degree0,1e-3,V)
  "Höjd Vinkel2: " + ComputeEulervsAngle(degree1,1e-3,V)
 x = f0/(f1-f0);
 Degree = degree0 + (degree1-degree0)*x;
 "Höjd Vinkel : " + ComputeEulervsAngle(Degree,1e-3,V)
 %YLand = f0 + (f1-f0)*x + 1.83

 E = abs(degree1-degree0);
end