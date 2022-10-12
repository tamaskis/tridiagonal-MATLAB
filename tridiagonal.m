%==========================================================================
%
% tridiagonal  Solves the tridiagonal linear system Ax = d for x using the
% tridiagonal matrix algorithm (i.e. the Thomas algorithm).
%
%   x = tridiagonal(A,d)
%
% Copyright © 2021 Tamas Kis
% Last Update: 2022-10-11
% Website: https://tamaskis.github.io
% Contact: tamas.a.kis@outlook.com
%
% TECHNICAL DOCUMENTATION:
% https://tamaskis.github.io/files/Tridiagonal_Matrix_Algorithm__Thomas_Algorithm_.pdf
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
function x = tridiagonal(A,d)
    
    % determines n
    n = length(d);
    
    % preallocates all necessary vectors
    a = zeros(n-1,1);
    b = zeros(n,1);
    c = zeros(n-1,1);
    x = zeros(n,1);
    
    % extracts first element of "b" from "A"
    b(1) = A(1,1);
    
    % forward loop
    for i = 2:n
        
        % extract relevant elements of "a", "b", and "c" from "A"
        a(i-1) = A(i,i-1);
        b(i) = A(i,i);
        c(i-1) = A(i-1,i);
        
        % forward elimination
        w = a(i-1)/b(i-1);
        b(i) = b(i)-w*c(i-1);
        d(i) = d(i)-w*d(i-1);
        
    end
    
    % backward loop (backward substitution)
    x(n) = d(n)/b(n);
    for i = (n-1):(-1):1
        x(i) = (d(i)-c(i)*x(i+1))/b(i);
    end
    
end