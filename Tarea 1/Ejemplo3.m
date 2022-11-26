% Ejemplo 3.- Escribir una función que reciba como entrada una
% matriz cuyo número de filas y de columnas sea mayor o igual a 3.
% Si la matriz introducida es incorrecta, deberá interrumpirse la
% ejecución del programa, indicando al usuario que se ha
% equivocado y que tiene que introducir nuevamente la matriz. Y si
% la matriz introducida es correcta, deberá hacer lo siguiente:
%
%    a) Sumar la primera fila y la última (elemento a elemento).
%    b) Sumar todos los elementos de la última fila.


% SOLUCIÓN %
msg_err = 'Matriz Incorrecta (Introduzca al menos una matriz 3x3).';

% COMPROBACION MATRIZ 
while 1
    Mat = input('Introduzca matriz: ')
    [m,n] = size(Mat);
    if ((m>=3) & (n>=3) & (m==n))
        break;
    end
    error(msg_err)
end


% a) Sumar la primera fila y la última (elemento a elemento).
i = 0;
suma = 0;

for i = 1:1:n
    x = Mat(1, i);
    y = Mat(m, i);
    suma(i) = x + y;
end

suma


% b) Sumar todos los elementos de la última fila.
j = 0;
sumaUlt = 0;
 
for j = 1:1:n
    x = Mat(m,j);
    sumaUlt = sumaUlt + x;
end

sumaUlt
