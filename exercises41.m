A=1;
r =1/2;
vec=[A];
for i=1:n
    Ai=A*(r^i);
    vec(i+1)=Ai;
end
vec