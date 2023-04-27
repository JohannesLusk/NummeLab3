function [V, E] = SekantHastighet(startVelocity1, startVelocity0)
    %målet här är att hitta rätt hastighet för 3 grader

     while abs(startVelocity1 - startVelocity0) > 5e-3

        f0 = ComputeEulervsAngle(3, 1e-3, startVelocity0) - 1.83;
        f1 = ComputeEulervsAngle(3, 1e-3, startVelocity1) - 1.83;
        t_n = f1*((startVelocity1-startVelocity0)/(f1-f0));
        startVelocity0 = startVelocity1;
        startVelocity1 = startVelocity1-t_n;
     end 
     V = startVelocity1;
     E = abs(startVelocity1 - startVelocity0);
end