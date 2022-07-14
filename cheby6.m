%that evaluates the sixth Chebyshev polynomial.
% It should take an input variable, x, and return
function res = cheby6(x)
    res=(32.*(x.^6))-(48.*(x.^4))+(18.*(x.^2))-1;
end
