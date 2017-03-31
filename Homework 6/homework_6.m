clear
clc

A = [1 7 3; 7 4 -5; 3 -5 6];
b = [1; 2; 3];

x = gradientConjugat(A,b);

A = [1 0 0; 0 -1 1; 0 1 -1]; 
A = [17 -2 3*sqrt(3);-2 8 2*sqrt(3);3*sqrt(3) 2*sqrt(3) 11];
epsilon = 10^(-5);

metodaRotatiilor(A,epsilon)