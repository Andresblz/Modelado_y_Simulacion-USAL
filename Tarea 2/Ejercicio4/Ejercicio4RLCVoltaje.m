% Escribir un programa en Matlab y editar un diagrama de Simulink que permitan
% simular, numérica y gráficamente, el comportamiento de un circuito RLC en
% serie alimentado con una fuente de tensión. Considerar como variable de
% entrada la tensión de alimentación, Val(t) y como variable de salida: a) la
% tensión en extremos del condensador, Vc(t); b) la intensidad de la corriente que
% atraviesa el circuito, i(t). Determinar las respuestas para una entrada salto
% unitario y para una entrada tipo onda, cuadrada, con período T=30seg.,
% amplitud=5 y tiempo_activ=15seg (considerar Val_inic=0V.). Pedir al usuario
% los valores de L, R y C (probar con distintos valores; por ejemplo: R=100Ω,
% L=10mH y C=5μF). Pedir también el tiempo de simulación; probar con varios
% valores, empezando por ejemplo con t_sim = 60seg (determinar la Función de
% Transferencia en el dominio de Laplace y utilizar las funciones step y lsim de
% Matlab).

% CIRCUITO RLC - VOLTAJE

v = input("Valor del voltaje: ");
r = input("Valor de la resistencia: ");
l = input("Valor de la bobina: ");
c = input("Valor del condensador: ");

t = 0:0.5:300;

num = [v];
den = [(l*c) (r*c) 1];

s = step(num, den, t);

[u, t1] = gensig('square', 30, 300, 0.1);
y = lsim(num, den, u, t1);

hold on
plot(t, s);
plot(t1, y);
hold off