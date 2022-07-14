function percentage= submergedDuck(d)
    r=10;
    rho=0.3;
    percentage=100*(((pi/3)*(3*r*d^2))-d^3)/((4/3)*pi*(r^3)*rho);
end