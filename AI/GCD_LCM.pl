% GCD using Euclidean Algorithm
gcd(X, 0, X).

gcd(X, Y, G) :-
    Y > 0,
    R is X mod Y,
    gcd(Y, R, G).

% LCM using GCD
lcm(X, Y, L) :-
    gcd(X, Y, G),
    L is (X * Y) // G.