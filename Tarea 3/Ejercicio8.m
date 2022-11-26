% EJERCICIO 8

t0 = 0;
tf = 10;

x0 = [2; 7];

[t,y]=ode45('f_ej8',[t0 tf],x0);

hold on
% plot(t,y(:,1))
plot(t,y(:,2))
hold off