# `line_intersection` [![View Intersection of Two Lines (line_intersection) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/85413-intersection-of-two-lines-line_intersection)

Finds the intersection of two lines.


## Syntax

`[x,y] = line_intersection([m1,b1],[m2,b2])`\
`[x,y] = line_intersection([x1,y1,m1],[x2,y2,m2])`


## Description
`[x,y] = line_intersection([m1,b1],[m2,b2])` finds the intersection of two lines given in slope-intercept form.
- `[m1,b1]` specifies the first line in slope-intercept form: <img src="https://latex.codecogs.com/svg.latex?y=m_{1}x&plus;b_{1}" title="y=m_{1}x+b_{1}" />
- `[m2,b2]` specifies the second line in slope-intercept form: <img src="https://latex.codecogs.com/svg.latex?y=m_{2}x&plus;b_{2}" title="y=m_{2}x+b_{2}" />

`[x,y] = line_intersection([x1,y1,m1],[x2,y2,m2])` finds the intersection point of two lines given in point-slope form.
- `[x1,y1,m1]` specifies the first line in point-slope form: <img src="https://latex.codecogs.com/svg.latex?y-y_{1}=m_{1}\left(x-x_{1}\right)" title="y-y_{1}=m_{1}\left(x-x_{1}\right)" />
- `[x2,y2,m2]` specifies the second line in point-slope form: <img src="https://latex.codecogs.com/svg.latex?y-y_{2}=m_{2}\left(x-x_{2}\right)" title="y-y_{2}=m_{2}\left(x-x_{2}\right)" />

The two lines may also be defined using different conventions, for example `line_intersection([m1,b1],[x2,y2,m2])`.


## Example

Consider the two lines

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y=5x&plus;2" title="y=5x+2" />\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://latex.codecogs.com/svg.latex?y-4=7\left(x-10\right)" title="y-4=7\left(x-10\right)" />

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
