% EJERCICIO 9

t0 = 0;
tf = 20;

x0 = [2; 0];

[t,y]=ode45('f_ej9',[t0 tf],x0);

hold on
% plot(t,y(:,1))
plot(t,y(:,2))
hold off