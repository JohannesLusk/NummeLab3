function [Degree, E] = SekantVinkel(degree0,degree1)
 %degree0 = 81;
 %degree1 = 79;

 while abs(degree1-degree0) > 1e-5

      f0 = ComputeEulervsAngle(degree0,1e-3)-1.83;
      f1 = ComputeEulervsAngle(degree1,1e-3)-1.83;
     t_n = f1*((degree1-degree0)/(f1-f0))
     degree0 = degree1
     degree1 = degree1-t_n
 end 
 Degree = degree0;
 E = abs(degree1-degree0);
end