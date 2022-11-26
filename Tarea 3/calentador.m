% FUNCIÓN | calentador

function xdot = calentador(t,x);
    F = 1;
    Fjs = 1.5;

    Ti = 50;
    Tji = 200;

    delFj = 0;
    Fj = Fjs + delFj;

    V = 10;
    Vj = 1;

    rhocp = 61.3;
    rhocpj = 61.3;

    UA = 183.9;

    T = x(1);
    Tj = x(2);

    dTdt = (F / V) * (Ti - T) + UA * (Tj - T) / (V * rhocp);
    dTjdt = (Fj / Vj) * (Tji - Tj) - UA * (Tj - T) / (Vj * rhocpj);
    xdot = [dTdt; dTjdt];
end