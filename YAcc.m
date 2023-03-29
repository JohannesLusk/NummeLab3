function yPP = YAcc(xP,yP,K_y,m) %K_y = Ydrag, m = mass, yP = Yvelocity, V = total velocity
g = 9.82;
yPP = -g - (K_y.*yP.*Velocity(xP,yP))./m;
end