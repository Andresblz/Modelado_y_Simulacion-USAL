% FUNCION | f_ej8

function xdot = f_ej8(t, x);
    x1 = x(1);
    x2 = x(2);

    dx1dt = 2 * x2 - 0.3;
    dx2dt = x2 - 3 * x1 - 1;

    xdot = [dx1dt; dx2dt];
end