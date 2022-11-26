% FUNCIÓN | f6dep1

function y=f6dep1(x)
    A = 4;
    Q = 0.5;
    K = 0.2;
    y = (1 / A) * (Q - K * sqrt(x));
end