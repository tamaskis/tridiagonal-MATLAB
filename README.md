# `tridiagonal` [![View Tridiagonal Matrix Algorithm (Thomas Alg.) (tridiagonal) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85438-tridiagonal-matrix-algorithm-thomas-alg-tridiagonal)

Solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?A\mathbf{x}=\mathbf{d}" title="A\mathbf{x}=\mathbf{d}" /> for <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}" title="\mathbf{x}" /> using the tridiagonal matrix algorithm (i.e. the Thomas algorithm).


## Syntax

`x = tridiagonal(A,d)`


## Description
`x = tridiagonal(A,d)` solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?A\mathbf{x}=\mathbf{d}" title="A\mathbf{x}=\mathbf{d}" /> for <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}" title="\mathbf{x}" /> (an <img src="https://latex.codecogs.com/svg.latex?n\times1" title="n\times1" /> vector), where <img src="https://latex.codecogs.com/svg.latex?A" title="A" /> is an <img src="https://latex.codecogs.com/svg.latex?n\times&space;n" title="n\times n" /> tridiagonal matrix and <img src="https://latex.codecogs.com/svg.latex?\mathbf{d}" title="\mathbf{d}" /> is an <img src="https://latex.codecogs.com/svg.latex?n\times1" title="n\times1" /> vector.


## Tridiagonal Matrix Convention

For this implementation, I use the following convention for denoting the elements of the tridiagonal matrix <img src="https://latex.codecogs.com/svg.latex?A" title="A" />:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?A=\begin{bmatrix}b_{1}&c_{1}\\a_{1}&b_{2}&c_{2}\\&a_{2}&\ddots&\ddots\\&&\ddots&\ddots&c_{n-2}\\&&&&space;a_{n-2}&b_{n-1}&c_{n-1}\\&&&&a_{n-1}&&space;b_{n}\\\end{bmatrix}" title="A=\begin{bmatrix}b_{1}&c_{1}\\a_{1}&b_{2}&c_{2}\\&a_{2}&\ddots&\ddots\\&&\ddots&\ddots&c_{n-2}\\&&& a_{n-2}&b_{n-1}&c_{n-1}\\&&&&a_{n-1}& b_{n}\\\end{bmatrix}" />

Most references, including the two listed below, have <img src="https://latex.codecogs.com/svg.latex?a_{i}" title="a_{i}" />'s ranging from <img src="https://latex.codecogs.com/svg.latex?a_{2}" title="a_{2}" /> to <img src="https://latex.codecogs.com/svg.latex?a_{n}" title="a_{n}" /> both in the definition of the tridiagonal matrix and in the algorithm used to solve the corresponding linear system. In this implementation, I have the <img src="https://latex.codecogs.com/svg.latex?a_{i}" title="a_{i}" />'s ranging from <img src="https://latex.codecogs.com/svg.latex?a_{1}" title="a_{1}" /> to <img src="https://latex.codecogs.com/svg.latex?a_{n-1}" title="a_{n-1}" />; this makes the algorithm slightly more straightforward to implement.


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
