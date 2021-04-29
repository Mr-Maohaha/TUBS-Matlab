clear all; clc;

% Ax+b=0
% A: [n, n]
% b; [n, 1]
A = [144 132 120 0 0;
    132 202 182 63 0;
    120 182 200 86 24;
    0 63 86 83 26;
    0 0 24 26 21];

b = [-1908;
    -2793;
    -2980;
    -1242;
    -344];

[n, ~] = size(A); 
Rechenaufwand = n^3/6
x = zeros(n,1); 

% Cholesky factorization
L = chol(A,"Lower")
LT = L.'

% L c = b
c = L\-b

% LT x =c
x = LT\c

