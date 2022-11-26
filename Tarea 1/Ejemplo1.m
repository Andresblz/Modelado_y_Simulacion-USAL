% Ejemplo 1.- Escribir un programa (script) que pida al usuario una 
% matriz 3x3 y que haga lo siguiente: a) que calcule la inversa de A;
% b) que calcule el cuadrado de A (como matriz); c) que extraiga la 
% fila segunda.


% SOLUCIÓN %
Mat = input('Introduzca una matriz 3x3 (entre corchetes y separando filas con ;): ') 

% INVERSA
Minv = inv(Mat)     % También Mat^(-1)

% CUADRADO
Mcuad = Mat*Mat     % También Mat^2

% FILA 2
Mfila2 = Mat(2,:)