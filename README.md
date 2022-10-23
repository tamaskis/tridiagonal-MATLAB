# Tridiagonal Matrix Algorithm [![View Tridiagonal Matrix Algorithm on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85438-tridiagonal-matrix-algorithm)



<br/><br/> 



# `tridiagonal_matrix`

Solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{A}\mathbf{x}=\mathbf{d}"/> for <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}\in\mathbb{R}^{n}" title="\mathbf{x}\in\mathbb{R}^{n}" /> using the matrix implementation of the tridiagonal matrix algorithm.


## Syntax

`x = tridiagonal_matrix(A,d)`


## Description

`x = tridiagonal_matrix(A,d)` solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{A}\mathbf{x}=\mathbf{d}"/> for <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{x}\in\mathbb{R}^{n}" title="\mathbf{x}\in\mathbb{R}^{n}" />, where <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{A}\in&space;{\mathbb{R}}^{n\times&space;n}"/> is a tridiagonal matrix and <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{d}\in&space;{\mathbb{R}}^n"/>.



<br/><br/> 



# `tridiagonal_vector`

Solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{A}\mathbf{x}=\mathbf{d}"/> for <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}\in\mathbb{R}^{n}" title="\mathbf{x}\in\mathbb{R}^{n}" /> using the vector implementation of the tridiagonal matrix algorithm.


## Syntax

`x = tridiagonal_vector(a,b,c,d)`


## Description

`x = tridiagonal_vector(a,b,c,d)` solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{A}\mathbf{x}=\mathbf{d}"/> for <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{x}\in\mathbb{R}^{n}" title="\mathbf{x}\in\mathbb{R}^{n}" />, where <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{A}\in&space;{\mathbb{R}}^{n\times&space;n}"/> is a tridiagonal matrix defined using the tridiagonal vectors (<img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{a}\in\mathbb{R}^{n-1}"/>, <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{b}\in\mathbb{R}^{n}"/>, and <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{c}\in\mathbb{R}^{n-1}"/>) and where <img src="https://latex.codecogs.com/svg.image?\inline&space;\mathbf{d}\in&space;{\mathbb{R}}^n"/>.



<br/><br/> 



# Tridiagonal Matrix Convention

For these implementations, I use the following convention for denoting the elements of the tridiagonal matrix <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{A}"/>:

<img src="https://latex.codecogs.com/svg.latex?\mathbf{A}=\left\lbrack&space;\begin{array}{cccccc}&space;b_1&space;&space;&&space;c_1&space;&space;&&space;&space;&&space;&space;&&space;&space;&&space;\\&space;a_1&space;&space;&&space;b_2&space;&space;&&space;c_2&space;&space;&&space;&space;&&space;&space;&&space;\\&space;&space;&&space;a_2&space;&space;&&space;\ddots&space;&space;&&space;\ddots&space;&space;&&space;&space;&&space;\\&space;&space;&&space;&space;&&space;\ddots&space;&space;&&space;\ddots&space;&space;&&space;c_{n-2}&space;&space;&&space;\\&space;&space;&&space;&space;&&space;&space;&&space;a_{n-2}&space;&space;&&space;b_{n-1}&space;&space;&&space;c_{n-1}&space;\\&space;&space;&&space;&space;&&space;&space;&&space;&space;&&space;a_{n-1}&space;&space;&&space;b_n&space;&space;\end{array}\right\rbrack"/>

Most other references have <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_i"/>'s ranging from <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_2"/> to <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_n"/> both in the definition of the tridiagonal matrix and in the algorithm used to solve the corresponding linear system. In this implementation, I have the <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_i"/>'s ranging from <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_1"/> to <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_{n-1}"/>; this makes the algorithm slightly more straightforward to implement.



<br/><br/> 



# Examples and Additional Documentation

   - See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   - See ["Tridiagonal_Matrix_Algorithm.pdf"](https://tamaskis.github.io/files/Tridiagonal_Matrix_Algorithm.pdf) (also included with download) for the technical documentation.
