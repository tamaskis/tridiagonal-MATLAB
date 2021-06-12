# `tridiagonal`


Solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?\inline&space;Ax=d"/> for <img src="https://latex.codecogs.com/svg.latex?\inline&space;x"/> using the tridiagonal matrix algorithm (i.e. the Thomas algorithm).


  
  
## Syntax
  


`x = tridiagonal(A,d)`


  
  
## Description
  


`x = tridiagonal(A,d)` solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?\inline&space;Ax=d"/> for <img src="https://latex.codecogs.com/svg.latex?\inline&space;x"/>, where <img src="https://latex.codecogs.com/svg.latex?\inline&space;A\in&space;{\mathbb{R}}^{n\times&space;n}"/> is a tridiagonal matrix and <img src="https://latex.codecogs.com/svg.latex?\inline&space;d\in&space;{\mathbb{R}}^n"/>.


  
  
## Tridiagonal Matrix Convention


For this implementation, I use the following convention for denoting the elements of the tridiagonal matrix <img src="https://latex.codecogs.com/svg.latex?\inline&space;A"/>:



<img src="https://latex.codecogs.com/svg.latex?\mathbf{A}=\left\lbrack&space;\begin{array}{cccccc}&space;b_1&space;&space;&&space;c_1&space;&space;&&space;&space;&&space;&space;&&space;&space;&&space;\\&space;a_1&space;&space;&&space;b_2&space;&space;&&space;c_2&space;&space;&&space;&space;&&space;&space;&&space;\\&space;&space;&&space;a_2&space;&space;&&space;\ddots&space;&space;&&space;\ddots&space;&space;&&space;&space;&&space;\\&space;&space;&&space;&space;&&space;\ddots&space;&space;&&space;\ddots&space;&space;&&space;c_{n-2}&space;&space;&&space;\\&space;&space;&&space;&space;&&space;&space;&&space;a_{n-2}&space;&space;&&space;b_{n-1}&space;&space;&&space;c_{n-1}&space;\\&space;&space;&&space;&space;&&space;&space;&&space;&space;&&space;a_{n-1}&space;&space;&&space;b_n&space;&space;\end{array}\right\rbrack"/>



Most other references have <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_i"/>'s ranging from <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_2"/> to <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_n"/> both in the definition of the tridiagonal matrix and in the algorithm used to solve the corresponding linear system. In this implementation, I have the <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_i"/>'s ranging from <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_1"/> to <img src="https://latex.codecogs.com/svg.latex?\inline&space;a_{n-1}"/>; this makes the algorithm slightly more straightforward to implement.


  
  
## Examples and Additional Documentation

   -  See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   -  See "DOCUMENTATION.pdf" (included with download, also available at [https://github.com/tamaskis/tridiagonal-MATLAB/blob/main/DOCUMENTATION.pdf](https://github.com/tamaskis/tridiagonal-MATLAB/blob/main/DOCUMENTATION.pdf)) for additional documentation. 

