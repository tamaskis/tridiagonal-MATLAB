%==========================================================================
%
% tridiagonal  Solves the tridiagonal linear system Ax=d for x using the
% tridiagonal matrix algorithm (i.e. the Thomas algorithm).
%
%   x = tridiagonal(A,d)
%
% See also inv, gaussian_elimination.
%
% Copyright © 2021 Tamas Kis
% Last Update: 2021-08-28
% Website: https://tamaskis.github.io
% Contact: tamas.a.kis@outlook.com
%
% TECHNICAL DOCUMENTATION:
% https://tamaskis.github.io/documentation/Tridiagonal_Matrix_Algorithm__Thomas_Algorithm_.pdf
%
% REFERENCES:
%   [1] MATH 2620 Course Reader (Vanderbilt University)
%   [2] https://en.wikipedia.org/wiki/Tridiagonal_matrix_algorithm
%   [3] https://www.cfd-online.com/Wiki/Tridiagonal_matrix_algorithm_-_TDMA_(Thomas_algorithm)
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
%   x       - (n×1 double) solution of the tridiagonal linear system Ax=d
%
%==========================================================================
function x = tridiagonal(A,d)

    % determines n
    n = size(A,1);
    
    % preallocates all necessary vectors
    a = zeros(n-1,1);
    b = zeros(n,1);
    c = zeros(n-1,1);
    x = zeros(n,1);
    
    % extracts "a" from "A"
    for i = 2:n
        a(i-1) = A(i,i-1);
    end
    
    % extracts "b" from "A"
    for i = 1:n
        b(i) = A(i,i);
    end
    
    % extracts "c" from "A"
    for i = 2:n
        c(i-1) = A(i-1,i);
    end
    
    % forward elimination
    for i = 2:n
        w = a(i-1)/b(i-1);
        b(i) = b(i)-w*c(i-1);
        d(i) = d(i)-w*d(i-1);
    end
    
    % backward substitution
    x(n) = d(n)/b(n);
    for i = (n-1):(-1):1
        x(i) = (d(i)-c(i)*x(i+1))/b(i);
    end
    
end