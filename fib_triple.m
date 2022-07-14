% The function taken an input as 'n' and computes the first n Fibonacci
% numbers, stores them in a vector, and checks whether this formula produces
% Pythagorean triples for numbers in the sequence.
F(1)=1;
F(2)=1;
for i=1:n-2
    F(i+2)=F(i)+F(i+1);
end
for i=1:n-2
    if is_pythagorean(F(i),F(i+1),F(i+2))
        disp([F(i),F(i+1),F(i+2)])      
    else
        disp("No, that is not a Pythagorean triple.")
    end
end