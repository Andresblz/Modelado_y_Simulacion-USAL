% FUNCIÓN | f7dep1

function xdot = f7dep1(t,x)
    A = 4;
    Q = 0.5;
    K = 0.2;
    xdot = (1 / A) * (Q - K * sqrt(x));
end