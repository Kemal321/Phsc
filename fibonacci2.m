f1=1;
f2=1;
for i=1:n
    fi=f1+f2;
    f1=f2;
    f2=fi;
    fi
end
ans = fi;
