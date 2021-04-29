clear all; clc;

% Ax+b=0 mit Anfangsversuchsvektor v0
A = [1 2;
    2 5];

b = [1;
    3];

v0 = [-6;
    3];

[na, ~] = size(A);

% Toleranz für Fehler
tol = 1e-13;

k = 1;
v(:,1) = v0;

err = 1000000000*rand(na,1);% initial error

while sum(abs(err) >= tol) ~= zeros(na,1)
    r = A*v(:,k) + b;
    alpha = norm(r)^2/(r.'*A*r);
    v(:,k+1) = v(:,k) - alpha*r;
    err = v(:,k+1) - v(:, k); % finding error
    k = k + 1;
end

v = v(:,2:end);
fprintf('Die Antwort nach %g Iteration ist  \n', k);
v(:,end)