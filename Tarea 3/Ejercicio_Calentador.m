% EJERCICIO | CALEFACTOR

x0 = [124.6525; 154.9880];

t0 = 0;
tf = 5;

[t,x]=ode45('calentador',[t0 tf],x0);

hold on
% plot(t,x(:,1)) 
plot(t,x(:,2))
hold off