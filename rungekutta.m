function [ w ] = rungekutta( tipo, a, b, y0, N )
%RUNGEKUTTA Implementação do método de Runge-Kutta para resolução de
%problema de valor inicial
%
%uso: RUNGEKUTTA( tipo, a, b, y0, N )
%   
%   Parâmetros de entrada:
%   ----------------------
%   
%   tipo: tipo do método
%       é a ordem do método de Runge-Kutta. Deve ser 2 ou 4
%
%   a: início do intervalo
%
%   b: fim do intervalo
%   
%   intervalo = [a, b]
%
%   y0: valor inicial = y(x0)
%
%   N: quantidade de subintervalos
%
%   a função y' = f(x, y) é implementada no arquivo f.m
%
%   Parâmetros de saída:
%   ----------------------
%   w: vetor de tamanho N
%       aproximação da solução nos N pontos.

% lê a função f do arquivo
f = str2func(fileread('f.m'));

% tamanho do intervalo
h = (b - a) / N;

fprintf('\n');
fprintf('Problema de Valor Inicial:\n');
fprintf('----------------------\n');
fprintf('y'' = %s\n', fileread('f.m'));
fprintf('y''(x0) = y0 = %d\n', y0);
fprintf('Intervalo: [%d, %d]\n', a, b);
fprintf('h: %f', h);
fprintf('\n');

if tipo == 2
    % Runge-Kutta de ordem 2
else
    if tipo == 4
        % Runge-Kutta de ordem 4
    else
        error('Tipo inválido. Deve ser 2 ou 4');
    end
end
end