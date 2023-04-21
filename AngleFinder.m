% sekant method: 
 degree0 = 4;
 degree1 = 6;

 while abs(degree1-degree0) > 1e-5
      f0 = ComputeEulervsAngle(degree0,1e-4);
      f1 = ComputeEulervsAngle(degree1,1e-4);
     t_n = f1*((degree1-degree0)/(f1-f0))
     degree0 = degree1
     degree1 = degree1-t_n
 end 
degree1


