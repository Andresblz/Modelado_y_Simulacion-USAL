% Ejemplo 2.- Escribir un programa (script) que pida al usuario un
% vector x (desde -10 a 10) y que represente gráficamente la
% función y=x^3.


% SOLUCIÓN %
Vect = input('Introduzca un vector desde -10 a 10: ') 
% [-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10]

y = Vect.^(3);
plot(Vect, y, '-r')