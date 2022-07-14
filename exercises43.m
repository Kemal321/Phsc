f1=1;
f2=1;
a=[1];
for i=1:n
    fi=f1+f2;
    con=f2/fi;
    f1=f2;
    f2=fi;
    a(i+1)=con;
end
a
plot(a,'bd');
% We write the code and algorithm and we see the result converges to the
% golden ratio.