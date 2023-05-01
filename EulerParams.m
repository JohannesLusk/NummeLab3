function [returnX, returnY] = EulerParams(m, x0, y0, X_prim0, Y_prim0, h,dist, g, Xdrag, Ydrag)
    X_prim = X_prim0;
    Y_prim = Y_prim0;
    x = x0;
    y = y0;
    t = 0;
    
    % returnX = [];
    % returnY = [];

    while x <= dist
        V = sqrt(X_prim * X_prim + Y_prim * Y_prim);
        X_bis = (-Xdrag*X_prim*V)/m;
        Y_bis = (-g*m-Ydrag*Y_prim*V)/m;

        X_prim = X_prim + X_bis * h;
        Y_prim = Y_prim + Y_bis * h;

        x = x + X_prim * h;
        y = y + Y_prim * h;
        %returnX = [returnX; t, x];
        %returnY = [returnY; t, y];
        t = t + h;
    end
    returnX = x;
    returnY = y;
end