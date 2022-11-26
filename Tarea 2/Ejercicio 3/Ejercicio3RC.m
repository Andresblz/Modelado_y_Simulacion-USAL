% Simular mediante Matlab y Simulink el comportamiento de los dos primeros
% sistemas para entradas “escalón unitario” y “tren de pulsos” (esta ultima, con
% periodo T=30seg., amplitud=1 y tiempo_activ=15seg.). Considerar t_sim =
% 60seg. Pedir al usuario los valores de los parámetros físicos del sistema.
% Probar con distintos valores. Por ejemplo, para el Sistema1: F=10N, m=2kg,
% Kr=1(...) y b=0.1(...) y para el Sistema2: R=100Ω, C=5μF (considerar
% Val_inic=0V.). Determinar la respuesta temporal, numéricamente y también
% gráficamente (determinar la Función de Transferencia en el dominio de Laplace
% y utilizar las funciones step y lsim de Matlab). 

% CIRCUITO ELÉCTRICO R-C

v = input("Valor del voltaje: ");
r = input("Valor de la resistencia: ");
c = input("Valor del condensador: ");

t = 0:0.5:300;

num = [v*c 0];
den = [r*c 1];

s = step(num, den, t);

[u, t1] = gensig('square', 30, 300, 0.1);
y = lsim(num, den, u, t1);

hold on
plot(t, s);
plot(t1, y);
hold off