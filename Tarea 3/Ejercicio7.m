% EJERCICIO 7

t0 = 0;
tf = 2000;

y0 = 2000;

[t,h]=ode45('f_ej7',[t0 tf],x0);

plot(t,h);