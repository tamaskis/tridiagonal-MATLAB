%==========================================================================
%
% tridiagonal_vector  Solves the tridiagonal linear system Ax = d for x 
% using the vector implementation of the tridiagonal matrix algorithm.
%
%   x = tridiagonal_vector(a,b,c,d)
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
%   a       - ((n-1)×1 double) tridiagonal vector
%   b       - (n×1 double) tridiagonal vector
%   c       - ((n-1)×1 double) tridiagonal vector
%   d       - (n×1 double) vector
%
% -------
% OUTPUT:
% -------
%   x       - (n×1 double) solution of the tridiagonal linear system Ax = d
%
% -----
% NOTE:
% -----
%   --> The vectors a, b, and c define the diagonals of the tridiagonal
%       matrix, A, as shown below:
%
%               ⌈ ⋱ ⋱       ⌉
%               | ⋱ ⋱ c     |
%           A = |   ⋱ b ⋱   |
%               |     a ⋱ ⋱ |
%               ⌊       ⋱ ⋱ ⌋
%
%==========================================================================
function x = tridiagonal_vector(a,b,c,d)
    
    % determines n
    n = length(d);
    
    % preallocates solution vector
    x = zeros(n,1);
    
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