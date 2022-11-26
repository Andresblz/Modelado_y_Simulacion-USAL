% FUNCION | f_ej7

function xdot = f_ej9(t, x);
    y1 = y(1);
    y2 = y(2);

    d2xtdt2 = (1 - y1 ^ 2) * y2 - y1;
    xout = [y2; d2xtdt2];
end