function [y, x] = Euler(m, x0, y0, X_prim0, Y_prim0, h)
    X_prim = X_prim0;
    Y_prim = Y_prim0;
    x = 0
    while x < 2.37
        V = sqrt(X_prim * X_prim + Y_prim * Y_prim);
        X_bis = (-0.002*X_prim*V)/m;
        Y_bis = (-9.82*m-0.02*Y_prim*V)/m;

        X_prim = X_prim + X_bis * h;
        Y_prim = Y_prim + Y_bis * h;

        x = [x; x + X_prim * h];
        y = [y; y + Y_prim * h];
    end
end