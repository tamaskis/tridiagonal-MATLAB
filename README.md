# `tridiagonal`

Solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?A\mathbf{x}=\mathbf{d}" title="A\mathbf{x}=\mathbf{d}" /> for <img src="https://latex.codecogs.com/svg.latex?x" title="x" /> using the tridiagonal matrix algorithm (i.e. the Thomas algorithm).


## Syntax

`x = tridiagonal(A,d)`


## Description
`x = tridiagonal(A,d)` solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?A\mathbf{x}=\mathbf{d}" title="A\mathbf{x}=\mathbf{d}" /> for <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}" title="\mathbf{x}" />.
- `A`: tridiagonal matrix <img src="https://latex.codecogs.com/svg.latex?A\in\mathbb{R}^{n\times&space;n}" title="A\in\mathbb{R}^{n\times n}" />
- `d`: vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{d}\in\mathbb{R}^{n}" title="\mathbf{d}\in\mathbb{R}^{n}" />
- `x`: vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}\in\mathbb{R}^{n}" title="\mathbf{x}\in\mathbb{R}^{n}" />


## Example

Consider the tridiagonal linear system

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?A\mathbf{x}=\mathbf{d}" title="A\mathbf{x}=\mathbf{d}" />

where

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?A=\begin{bmatrix}1&2&0&0&0\\3&4&5&0&0\\0&6&7&8&0\\0&0&9&1&2\\0&0&0&3&4\\\end{bmatrix},\quad\mathbf{d}=\begin{bmatrix}1\\2\\3\\4\\5\end{bmatrix}" title="A=\begin{bmatrix}1&2&0&0&0\\3&4&5&0&0\\0&6&7&8&0\\0&0&9&1&2\\0&0&0&3&4\\\end{bmatrix},\quad\mathbf{d}=\begin{bmatrix}1\\2\\3\\4\\5\end{bmatrix}" />

Enter <img src="https://latex.codecogs.com/svg.latex?A" title="A" /> and <img src="https://latex.codecogs.com/svg.latex?\mathbf{d}" title="\mathbf{d}" /> into MATLAB.

    % defines tridiagonal matrix A
    A = [1,2,0,0,0;
         3,4,5,0,0;
         0,6,7,8,0;
         0,0,9,1,2;
         0,0,0,3,4];

    % defines vector d
    d = [1;
         2;
         3;
         4;
         5];
 
Solve the linear system.

    x = tridiagonal(A,d)

This yields the result

    x =

        0.5934
        0.1355
        0.0452
        0.2229
        1.1386
        
        
## References

https://www.cfd-online.com/Wiki/Tridiagonal_matrix_algorithm_-_TDMA_(Thomas_algorithm)
https://en.wikipedia.org/wiki/Tridiagonal_matrix_algorithm

***NOTE*** *: These references have <img src="https://latex.codecogs.com/svg.latex?a_{i}" title="a_{i}" />'s ranging from <img src="https://latex.codecogs.com/svg.latex?a_{2}" title="a_{2}" /> to <img src="https://latex.codecogs.com/svg.latex?a_{n}" title="a_{n}" /> both in the definition of the tridiagonal matrix and in the algorithm used to solve the corresponding linear system. In this implementation, I have the <img src="https://latex.codecogs.com/svg.latex?a_{i}" title="a_{i}" />'s ranging from <img src="https://latex.codecogs.com/svg.latex?a_{1}" title="a_{1}" /> to <img src="https://latex.codecogs.com/svg.latex?a_{n-1}" title="a_{n-1}" />; this makes the algorithm slightly more straightforward to implement.*
