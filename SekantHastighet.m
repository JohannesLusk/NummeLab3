function [V, E] = SekantHastighet(startVelocity0, startVelocity1, degree)
format long
 f0 = ComputeEulervsAngle(degree,1e-3,startVelocity0);
 f0 = f0-1.83;
 f1 = f0 + 1;
 etrunk = abs(f0-f1);

 while etrunk > 1e-3
      f1 = ComputeEulervsAngle(degree,1e-3,startVelocity1);
      f1 = f1 - 1.83;
     t_n = f1*((startVelocity1-startVelocity0)/(f1-f0));
     startVelocity0 = startVelocity1;
     startVelocity1 = startVelocity1-t_n;
     etrunk = abs(f0-f1)
     if etrunk > 1e-3
        f0 = f1;
     end
 end
 f0 = f1 + 1.83
 f1 = ComputeEulervsAngle(degree,1e-3,startVelocity1)
 x = (1.83-f0)/(f1-f0);
 V = startVelocity0 + (startVelocity1-startVelocity0)*x;
 %YLand = f0 + (f1-f0)*x + 1.83

 E = abs(startVelocity1-startVelocity0);
end
%vinkel, hastighet, 