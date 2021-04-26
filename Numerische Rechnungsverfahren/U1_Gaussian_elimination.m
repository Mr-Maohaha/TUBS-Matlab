clear all; clc;

% Ax=b
% A: [n, n]
% b; [n, 1]
A = [0.2 -0.05 -0.02;
    -0.05 0.5125 -0.035;
    -0.02 -0.035 0.2052];

b = [10;
    0;
    10];


[n, ~] = size(A);           % Find size of matrix A
Rechenaufwand = n^3/3 + n^2 -n/3

x = zeros(n,1);              % initialize x

% code for forward elimination
for i=1:n-1
    m = A(i+1:n,i)/A(i,i);
    A(i+1:n,:) = A(i+1:n,:) - m*A(i,:);
    b(i+1:n,:) = b(i+1:n,:) - m*b(i,:);
end

% code for back substitution to find unknows
x(n,:) = b(n,:)/A(n,n);
for i=n-1:-1:1
    x(i,:) = (b(i,:) - A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end


x


