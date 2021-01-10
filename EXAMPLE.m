%% Copyright (c) 2021 Tamas Kis

% Example for using the tridiagonal function.

% AUTHOR: Tamas Kis
% LAST MODIFIED: January 10, 2021



%% SCRIPT SETUP

% clears variables and command window, closes all figures
clear;
clc;
close all;



%% EXAMPLE

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
 
 % solves tridiagonal linear system (i.e. solves Ax=d for x)
 x = tridiagonal(A,d)