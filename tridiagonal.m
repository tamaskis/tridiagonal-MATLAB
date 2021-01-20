% tridiagonal  Solves the tridiagonal linear system Ax=d for x using the
% tridiagonal matrix algorithm (i.e. the Thomas algorithm).
%
%   x = tridiagonal(A,d) solves the tridiagonal linear system Ax=d 
%       for x (an n-by-1 vector), where A is an n-by-n tridiagonal matrix
%       and d is an n-by-1 vector.
%
% See https://github.com/tamaskis/tridiagonal-MATLAB for additional 
% documentation and examples. An example can also be found in EXAMPLE.m 
% (included with download).
%
% Copyright (c) 2021 Tamas Kis



%% FUNCTION

% INPUT(S): A - n-by-n tridiagonal matrix
%           d - n-by-1 vector
% OUTPUT(S): x - solution of linear system (n-by-1 vector)
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