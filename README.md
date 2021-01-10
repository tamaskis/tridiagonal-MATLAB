# `tridiagonal`

Solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?Ax=d" title="Ax=d" /> for <img src="https://latex.codecogs.com/svg.latex?x" title="x" /> using the tridiagonal matrix algorithm (i.e. the Thomas algorithm).


## Syntax

`x = tridiagonal(A,d)`


## Description
`x = tridiagonal(A,d)` solves the tridiagonal linear system <img src="https://latex.codecogs.com/svg.latex?Ax=d" title="Ax=d" /> for <img src="https://latex.codecogs.com/svg.latex?x" title="x" />
- `A`: tridiagonal matrix <img src="https://latex.codecogs.com/svg.latex?A\in\mathbb{R}^{n\times&space;n}" title="A\in\mathbb{R}^{n\times n}" />
- `d`: vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{d}\in\mathbb{R}^{n}" title="\mathbf{d}\in\mathbb{R}^{n}" />
- `x`: vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}\in\mathbb{R}^{n}" title="\mathbf{x}\in\mathbb{R}^{n}" />


## Example

Consider the tridiagonal matrix

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?A=\begin{bmatrix}1&2&0&0&0\\3&4&5&0&0\\0&6&7&8&0\\0&0&9&1&2\\0&0&0&3&4\\\end{bmatrix},\quad\mathbf{d}=\begin{bmatrix}1\\2\\3\\4\\5\end{bmatrix}" title="A=\begin{bmatrix}1&2&0&0&0\\3&4&5&0&0\\0&6&7&8&0\\0&0&9&1&2\\0&0&0&3&4\\\end{bmatrix},\quad\mathbf{d}=\begin{bmatrix}1\\2\\3\\4\\5\end{bmatrix}" />

To find the intersection point, we note that for line 1, we have <img src="https://latex.codecogs.com/svg.latex?m_{1}=5" title="m_{1}=5" /> and <img src="https://latex.codecogs.com/svg.latex?b_{1}=2" title="b_{1}=2" />, and that for line 2, we have <img src="https://latex.codecogs.com/svg.latex?x_{2}=10" title="x_{2}=10" />, <img src="https://latex.codecogs.com/svg.latex?y_{2}=4" title="y_{2}=4" />, and <img src="https://latex.codecogs.com/svg.latex?m_{2}=7" title="m_{2}=7" />.

    % line 1 parameters
    m1 = 5;
    b1 = 2;
    
    % line 2 parameters
    x2 = 10;
    y2 = 4;
    m2 = 7;
    
    % finds intersection point
    [x_int,y_int] = line_intersection([m1,b1],[x2,y2,m2])
    
This yields the result

    x_int =

        34
    
    y_int =
    
       172


## Derivation

Consider the following two lines given in point-slope form:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y-y_{1}=m_{1}\left(x-x_{1}\right)" title="y-y_{1}=m_{1}\left(x-x_{1}\right)" />\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y-y_{2}=m_{2}\left(x-x_{2}\right)" title="y-y_{2}=m_{2}\left(x-x_{2}\right)" />

If <img src="https://latex.codecogs.com/svg.latex?\left(x_{\mathrm{int}},y_{\mathrm{int}}\right)" title="\left(x_{\mathrm{int}},y_{\mathrm{int}}\right)" /> is the intersection point, then

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y_{\mathrm{int}}-y_{1}=m_{1}\left(x_{\mathrm{int}}-x_{1}\right)" title="y_{\mathrm{int}}-y_{1}=m_{1}\left(x_{\mathrm{int}}-x_{1}\right)" />\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y_{\mathrm{int}}-y_{2}=m_{2}\left(x_{\mathrm{int}}-x_{2}\right)" title="y_{\mathrm{int}}-y_{2}=m_{2}\left(x_{\mathrm{int}}-x_{2}\right)" />

Solving both for <img src="https://latex.codecogs.com/svg.latex?y_{\mathrm{int}}" title="y_{\mathrm{int}}" />,

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y_{\mathrm{int}}=y_{1}&plus;m_{1}\left(x_{\mathrm{int}}-x_{1}\right)" title="y_{\mathrm{int}}=y_{1}+m_{1}\left(x_{\mathrm{int}}-x_{1}\right)" />\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y_{\mathrm{int}}=y_{2}&plus;m_{2}\left(x_{\mathrm{int}}-x_{2}\right)" title="y_{\mathrm{int}}=y_{2}+m_{2}\left(x_{\mathrm{int}}-x_{2}\right)" />

Equating the two equations,

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y_{1}&plus;m_{1}\left(x_{\mathrm{int}}-x_{1}\right)=y_{2}&plus;m_{2}\left(x_{\mathrm{int}}-x_{2}\right)" title="y_{1}+m_{1}\left(x_{\mathrm{int}}-x_{1}\right)=y_{2}+m_{2}\left(x_{\mathrm{int}}-x_{2}\right)" />

Solving for <img src="https://latex.codecogs.com/svg.latex?x_{\mathrm{int}}" title="x_{\mathrm{int}}" />,

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?x_{\mathrm{int}}=\frac{\left(m_{1}x_{1}-m_{2}x_{2}\right)-\left(y_{1}-y_{2}\right)}{m_{1}-m_{2}}" title="x_{\mathrm{int}}=\frac{\left(m_{1}x_{1}-m_{2}x_{2}\right)-\left(y_{1}-y_{2}\right)}{m_{1}-m_{2}}" />

To get <img src="https://latex.codecogs.com/svg.latex?y_{\mathrm{int}}" title="y_{\mathrm{int}}" />, we can use either line. We choose to use line 1.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y_{\mathrm{int}}=y_{1}&plus;m_{1}\left(x_{\mathrm{int}}-x_{1}\right)" title="y_{\mathrm{int}}=y_{1}+m_{1}\left(x_{\mathrm{int}}-x_{1}\right)" />
