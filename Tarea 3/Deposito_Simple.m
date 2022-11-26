% EJERCICIO | DEPOSITO SIMPLE

t0 = 0;
tf = 1000;
h0 = 2;

[t,h]=ode45('f7dep1',[t0 tf],h0);
plot(t,h0)