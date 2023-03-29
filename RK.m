function yn = RK(func, y0, x0, xend, step,K,m)
f = func;
xn = x0;
yn = y0;
while xn <= xend
    k1 = f(xn, yn);
    k2 = f(xn + (step/2), yn+(step/2)*k1,K,m);
    k3 = f(xn + (step/2), yn+(step/2)*k2,K,m);
    k4 = f(xn + step, yn +step*k3,K,m);
    Kn = (k1 +2*k2+2*k3+ k4)/6;
    ynSup = yn +step*Kn;
    xnSup = xn +step;
    xn = xnSup;
    yn = ynSup;
end 

end 