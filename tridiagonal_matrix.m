%==========================================================================
%
% tridiagonal_matrix  Solves the tridiagonal linear system Ax = d for x 
% using the matrix implementation of the tridiagonal matrix algorithm.
%
%   x = tridiagonal_matrix(A,d)
%
% Copyright © 2021 Tamas Kis
% Last Update: 2022-10-22
% Website: https://tamaskis.github.io
% Contact: tamas.a.kis@outlook.com
%
% TECHNICAL DOCUMENTATION:
% https://tamaskis.github.io/files/Tridiagonal_Matrix_Algorithm.pdf
%
%--------------------------------------------------------------------------
%
% ------
% INPUT:
% ------
%   A       - (n×n double) tridiagonal matrix
%   d       - (n×1 double) vector
%
% -------
% OUTPUT:
% -------
%   x       - (n×1 double) solution of the tridiagonal linear system Ax = d
%
%==========================================================================
function x = tridiagonal_matrix(A,d)
    
    % determines n
    n = length(d);
    
    % preallocates x
    x = zeros(n,1);
    
    % forward elimination
    for i = 2:n
        w = A(i,i-1)/A(i-1,i-1);
        A(i,i) = A(i,i)-w*A(i-1,i);
        d(i) = d(i)-w*d(i-1);
    end
    
    % backward substitution
    x(n) = d(n)/A(n,n);
    for i = (n-1):(-1):1
        x(i) = (d(i)-A(i,i+1)*x(i+1))/A(i,i);
    end
    
end