function xPP = XAcc(xP,yP,K_x,m) %K_x = Xdrag, m = mass, xP = Xvelocity, V = total velocity
xPP = (K_x.*xP.*Velocity(xP,yP))./m;
end